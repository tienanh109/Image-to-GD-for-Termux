# Image-to-GD-for-Termux

## Introduction
*Version V0.0.2*

A simple tool for Termux!

- Written in **JavaScript** (NodeJS) and **Bash**.
- Utilizes the **Jimp library** for NodeJS.
- Designed for **Termux and Linux**.
- Bash file by **tienanh109**.
- NodeJs by **[GDColon](https://github.com/gdcolon/)**.

## How to Install

### For Android (Termux)

1. **Install Termux:**
   Download Termux from [Repo Termux](https://github.com/termux/termux-app/releases).

2. After downloading Termux from Github, grant storage access and execute the following commands:
  - First download packages:
   ```bash
   pkg install unzip -y && pkg install curl -y && pkg install wget -y
   ```
3. After, download the code from github and execute the command:
  ```bash
  wget https://github.com/BinZFAKE9999/Image-to-GD-for-Termux/archive/refs/heads/v0.0.2.zip
  ```
4. And then unzip it:
 ```bash
 unzip v0.0.2.zip
 ```
5. Then go to that folder
 ```bash
 cd Image-to-GD-for-Termux-0.0.2
 ```
6. Run the tool
 ```bash
 bash Main.sh
 ```

Well and you have finished downloading the tool! 

# Linux
### Required packages:
- NodeJs
- Bash
- Unzip
- Wget
Similar to the above method

## How to use?
 1. First you need to run it with the command: 
  ```bash
  bash Main.sh
  ```

- They then display options like
 ```
 1. Setup

 2. Run
 ```
 2. When running for the first time, setup is a must, so we need to choose option 1
 - and Enter
 - Then all you have to do is wait for it to completely download until it displays the line:
 ```
 Setup successful!
 ```
3. Then you exit the tool by Cirl + C
4. And move the image you want to convert with the command:
 ```bash
 mv /Storeyourpic/image.png ./
 ```
5. Then relaunch the tool:
 ```bash
 bash Main.sh
 ```
6. Now you proceed to convert with option [2] => Enter
- Now you wait for your photo to be converted and saved ./Save/
- Then you proceed to copy the folder from ./Save to /sdcard/ with command 
 ```bash
 cp ./Save /sdcard/
 ```


It is done! Your data has been saved. You just need to load it into the game and play!

========================
## Change Log
- Version: 0.0.2
- [Try beta version](https://github.com/BinZFAKE9999/Image-to-GD-for-Termux/tree/0.0.3_beta)
- Fix error of not finding data during conversion
- fix GD lvl data not found
- Fix bug
========================
## Credits
- Thanks to [GDColon](https://github.com/GDColon) for the nodejs code
- And bash code by tienanh109
- Use JavaScript and Bash languages
