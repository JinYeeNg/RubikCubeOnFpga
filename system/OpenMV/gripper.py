import time
from servo import Servos
from machine import I2C, Pin

servo_id = [L_ARM, L_GRIP, D_ARM, D_GRIP, R_ARM, R_GRIP, U_ARM, U_GRIP]

class Grippers:

	HOME = 0	# gripper state mid or home position
	CW = 1   	# gripper clockwise 90 degrees
	CCW = -1  	# gripper counter-closewise 90 degrees (minus 90)
	OPEN = 0	# arm opened or retracted
	CLOSE = 1	# arm closed or extended

    def __init__(self, gripper_id=0, gripper_state=HOME, arm_state=OPEN):
		self.i2c = I2C(sda=Pin('P5'), scl=Pin('P4'))
		self.servo = Servos(i2c, address=0x40, freq=50, min_us=650, max_us=2800, degrees=180)
		self.up


    def _open(self):
    	for i in [

    def _us2duty(self, value):
        return int(4095 * value / self.period)

    def position(self, index, degrees=None, radians=None, us=None, duty=None):
        span = self.max_duty - self.min_duty
        if degrees is not None:
            duty = self.min_duty + span * degrees / self.degrees
        elif radians is not None:
            duty = self.min_duty + span * radians / math.radians(self.degrees)
        elif us is not None:
            duty = self._us2duty(us)
        elif duty is not None:
            pass
        else:
            return self.pca9685.duty(index)
        duty = min(self.max_duty, max(self.min_duty, int(duty)))
        self.pca9685.duty(index, duty)

    def release(self, index):
        self.pca9685.duty(index, 0)
