import smtplib, ssl
import sys


port = 465  # For SSL
smtp_server = "smtp.000.de"
sender_email = "000"  # Enter your address
receiver_email = "000"  # Enter receiver address
password = "000"
message = sys.stdin.read()

context = ssl.create_default_context()
with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, message)
    print('Mail Send: ' + message)

