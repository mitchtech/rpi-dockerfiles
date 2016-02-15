import RPi.GPIO as GPIO, feedparser
USERNAME="username@gmail.com"
PASSWORD="password"
GPIO_PIN=12
GPIO.setmode(GPIO.BOARD)
GPIO.setup(GPIO_PIN, GPIO.OUT)
newmails = int(feedparser.parse("https://" + USERNAME + ":" + PASSWORD + "@mail.google.com/gmail/feed/atom")["feed"]["fullcount"])
if newmails > 0:
    GPIO.output(GPIO_PIN, True)
else:
    GPIO.output(GPIO_PIN, False)
