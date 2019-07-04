# Multi Color Blob Tracking Example
#
# This example shows off multi color blob tracking using the OpenMV Cam.

import sensor, image, time

original_centre = [(110,50),(170,50),(220,50),
               (110,110),(170,110),(220,110),
               (110,160),(170,160),(220,160)]

sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QVGA)
sensor.skip_frames(time = 1000)
sensor.set_auto_gain(True) # must be turned off for color tracking
sensor.set_auto_whitebal(True) # must be turned off for color tracking
clock = time.clock()

def sum_colour (pixel_value):
    return (pixel_value[0] + pixel_value[1] + pixel_value[2])

def colour_difference (a, b):
    difference = 0
    for i in range (0,3):
        difference = difference + abs(a[i]-b[i])
    return difference

def find_tile_colour (tile_bb):
    return img.get_pixel(int((tile_bb[1]+tile_bb[0])/2),int((tile_bb[3]+tile_bb[2])/2))

def find_face_colour ():

    def find_tile (centre):
    # find edges of a tile from its estimated centre
        THRESHOLD = 250
        pixel_colour = img.get_pixel(centre)

        # scan left
        (ix,iy) = centre
        while colour_difference(img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and ix > 1:
            ix = ix - 1
        left_edge = ix + 1

        # scan right
        (ix,iy) = centre
        while colour_difference(img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and ix < 319:
            ix = ix + 1
        right_edge = ix - 1

        # scan up
        (ix,iy) = centre
        while colour_difference(img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and iy > 1:
            iy = iy - 1
        top_edge = iy + 1

        # scan down
        (ix,iy) = centre
        while colour_difference(img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and iy < 239:
            iy = iy + 1
        bottom_edge = iy - 1

        return (left_edge, right_edge, top_edge, bottom_edge)

    clock.tick()
    img = sensor.snapshot()
    face_colour = [ ]
    for i in range (0,9):
        tile_bb = find_tile(original_centre[i])
        tile_colour = find_tile_colour(tile_bb)
        # draw rectangle
        tile = (tile_bb[0], tile_bb[2], tile_bb[1]-tile_bb[0] , tile_bb[3]-tile_bb[2])
        img.draw_rectangle((tile),thickness=2)

#           orig_colour = img.get_pixel(original_centre[i])
#           diff_colour = [orig_colour[i] - tile_colour[i] for i in range(len(orig_colour))]
#           print(diff_colour)

        face_colour = face_colour + tile_colour
    sensor.flush()
    return face_colour

# Main
face_colour = find_face_colour()
print(face_colour)
