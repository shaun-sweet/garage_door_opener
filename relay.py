#!/usr/bin/python
import RPi.GPIO as GPIO
import time
import random

def open():
  GPIO.setmode(GPIO.BCM)
  GPIO.setup(2, GPIO.OUT)
  GPIO.output(2, GPIO.HIGH)
  GPIO.output(2, GPIO.LOW)

def close():
  GPIO.cleanup()



try:
  open()
  time.sleep(1);
  close()
except KeyboardInterrupt:
  close()

# while running:
#   try:
#     GPIO.setmode(GPIO.BCM)
#     for i in pinList:
#       GPIO.setup(i, GPIO.OUT)
#       GPIO.output(i, GPIO.HIGH)
#     GPIO.output(2, GPIO.LOW)
#     print "ONE"
#     time.sleep(2*random.random());
#     GPIO.output(3, GPIO.LOW)
#     print "TWO"
#     time.sleep(2*random.random());
#     GPIO.cleanup()
#     time.sleep(2*random.random())
#   except KeyboardInterrupt: 
#     GPIO.cleanup()
#     running = False

# End program cleanly with keyboard


# Reset GPIO settings
