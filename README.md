# CC_OTA
OTA updates pusher for CC

# How to use

## Setting up server

! YOUR IN-GAME COMPUTER WILL NEED A MODEM

Get the script to the computer. You can probably use this command in the CC machine:
``` pastebin get JMwS9kke ota.lua ```

Then you will need to configure the script. You will need to set up: 
- Password. It will be used to trigger updates
- File name. The name of the file your script will run from
- URL. The web page that will provide 'text/raw' application. I advise to use pastebin
Then just run the OTA script

## Updating
To update an app, send a rednet request to your computer that runs OTA containing your password. If set correctly, it will update and reboot an app
