# Class Cube_face
# Capture the colours of 9 tiles on one face of a Rubik's cube using OpenMV M7
# Author:  Peter Cheung
# History: v1.0: 10 Aug 2018 - first working version

import sensor
import image
import time

class Cube_Face(object):

    def __init__(self):
        self.centre = [(110,50),(170,50),(220,50),
               (110,110),(170,110),(220,110),
               (110,160),(170,160),(220,160)]
        self.img = sensor.snapshot()

    def sum_colour (self, pixel_value):
        return (pixel_value[0] + pixel_value[1] + pixel_value[2])

    def find_tile_colour (self, tile_bb):
        return self.img.get_pixel(int((tile_bb[1]+tile_bb[0])/2),int((tile_bb[3]+tile_bb[2])/2))

    def find_tile (self, centre):

        def colour_difference (a, b):
            difference = 0
            for i in range (0,3):
                difference = difference + abs(a[i]-b[i])
            return difference

    # find edges of a tile from its estimated centre
        THRESHOLD = 150
        pixel_colour = self.img.get_pixel(centre)

        # scan left
        (ix,iy) = centre
        while colour_difference(self.img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and ix > 1:
            ix = ix - 1
        left_edge = ix + 1

        # scan right
        (ix,iy) = centre
        while colour_difference(self.img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and ix < 319:
            ix = ix + 1
        right_edge = ix - 1

        # scan up
        (ix,iy) = centre
        while colour_difference(self.img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and iy > 1:
            iy = iy - 1
        top_edge = iy + 1

        # scan down
        (ix,iy) = centre
        while colour_difference(self.img.get_pixel((ix,iy)),pixel_colour) < THRESHOLD and iy < 239:
            iy = iy + 1
        bottom_edge = iy - 1

        return (left_edge, right_edge, top_edge, bottom_edge)

    def find_face_colour (self):
        face_colour = [ ]
        self.img = sensor.snapshot()
        for i in range (0,9):
            tile_bb = self.find_tile(self.centre[i])
            tile_colour = self.find_tile_colour(tile_bb)
        # draw rectangle
            tile = (tile_bb[0], tile_bb[2], tile_bb[1]-tile_bb[0] , tile_bb[3]-tile_bb[2])
            self.img.draw_rectangle((tile),thickness=2)

#           orig_colour = img.get_pixel(original_centre[i])
#           diff_colour = [orig_colour[i] - tile_colour[i] for i in range(len(orig_colour))]
#           print(diff_colour)

            face_colour.append(tile_colour)
        return face_colour
        sensor.flush()

