import os
import requests
import socket
import random
import webbrowser
os.system('clear')

import pyfiglet 
a= pyfiglet.figlet_format("Red Hack", font = "slant"  ) 
print(a)

print('\033[0;31m         THE TOOL BY RED HACK ARSİV √')
print("""\033[1;31m
   _____________________________________________
   |İnstagram:_y1git.inc                       |
   |Telegram:https://t.me/redhackarsiv         |
   |Telegram CHAT:https://t.me/redhackchet     |
   |___________________________________________|
""")
print('\033[0;35m   _________________________________________________')
print("""\033[1;36m \033[3m
  [1]=>  PHİSHİNG 1        
  [2]=>  PHİSHİNG 2
  [3]=>  PHİSHİNG 3        
  [4]=> GALERİ HACK
  [5]=> CAM HACK
  [6]=> PROXY CHECKER
  [7]=>SMS BOMBER
  [8]=>DDOS
  
         [99]=> TELEGRAM       [0]=> CHAT
""")
print('\033[0;35m   _________________________________________________                        ')

##phishing install

oo = input('Seçimini Yap Dostum:  ')

if oo == '1':
	print ("YÜKLENİYOR ")
	os.system("cd $HOME")
	os.system("pkg install git -y")
	os.system("git clone https://github.com/htr-tech/zphisher")
	os.system("cd zphisher")
	
	##PHİSHİNG 2 İNSTALL
elif oo == '2':
	os.system("cd $HOME")
	os.system("git clone https://github.com/KasRoudra/MaxPhisher")
	os.system("cd MaxPhisher")
	os.system ("python maxphisher.py")
elif oo == '3':
	os.system ("cd $HOME")
	os.system ("apt install python3 curl php git openssh -y")
	os.system("pip3 install requests wget pyshorteners")
	os.system ("git clone https://github.com/Cyber-Anonymous/Dark-Phish.git")
	os.system ("cd Dark-Phish")
	os.system("python3 dark-phish.py")
elif oo == '4':
	os.system ("cd $HOME")
	os.system ("git clone https://github.com/deadcode22/Hack-image.git")
	os.system ("cd Hack-image")
	os.system ("python Building-Malware.py")
elif oo == '5':
	os.system ("cd $HOME")
	os.system ("git clone https://github.com/techchipnet/CamPhish")
	os.system ("cd CamPhish")
	os.system ("bash camphish.sh")
elif oo == '6':
	os.system ("cd $HOME")
	os.system ("git clone https://github.com/TheAlfa31/ProxyChecker")
	os.system("pip install -r requirements.txt")
	os.system("python3 main.py")
elif oo = '7':
	os.system ("git clone https://github.com/raiderrXD/RedHack-sms/")
	os.system ("cd RedHack-sms")
	os.system("pip3 install -r requirements.txt")
	os.system("python3 enough.py")
elif oo == '8':
		os.system("cd $HOME")
		os.system ("pkg update")
		os.system ("pkg upgrade")
		os.system ("pkg install python")
		os.system ("git clone https://github.com/raiderrXD/REDHACK-DDOS/")
		os.system("cd REDHACK-DDOS")
		os.system("chmod +x ddos.py")
		os.system("python ddos.py")
elif oo == '99':
	import webbrowser

	webbrowser.open('https://t.me/redhackarsiv')
	
elif oo == '0':
	import webbrowser

	webbrowser.open('https://t.me/redhackchet')

	
