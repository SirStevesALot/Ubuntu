Change to local mirror for faster updates
### ⬆️ Check for updates

```
sudo apt update && sudo apt upgrade
```

### 🚮 Remove snap

[Script](https://github.com/SirStevesALot/Ubuntu/blob/d7a3abda21d22d319a4516a9d4c3d7f29c103a92/remove-snap.sh)

### 🪛 Install Flatpak

```bash
sudo apt install flatpak
```

Install the Flatpak plugin for GNOME Software Center.

```shell
sudo apt install gnome-software-plugin-flatpak
```

Add the Flathub repository 

```shell
flatpak remote-add --if-not-exists flathub ttps://flathub.org/repo/flathub.flatpakrepo
```
### 🔉 Install Multimedia codec and plugins this includes fonts

```
sudo apt install -y ubuntu-restricted-extras
```
### 🐭 Turn of mouse acceleration

### 🧱 Install firewall GUI and turn it on

```
  sudo apt install gufw
  ```
  
### 🪛 Install

- Brave [[Brave Flags]]
- Onlyoffice
- Solaar [[Solaar Settings]]
- Qbittorrent
- Stremio
- VLC
- Steam
- Pika backup 
- Calibre   
- Edge (for work)
- Teams (for work)


### 🪛 Install Fastfetch and set to Terminal startup

```
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
```
```
sudo apt update
sudo apt install fastfetch
```

Open the .bashrc file in your home directory

```
nano ~/.bashrc
```

Add fastfetch at the end of .bashrc file to display it when launching the terminal.

Install a nerd font for it to display correctly

Copy config.jsonc to /home/steve/.config/fastfetch

[It's Foss - Fastfetch](https://itsfoss.com/fine-control-fastfetch/)

[Nerd Fonts](https://www.nerdfonts.com/font-downloads)

[My Fastfetch config](https://github.com/SirStevesALot/Ubuntu/blob/f925572ee1b86b1ddde729d31e7ade7b25e0cda0/Fastfetch.config)

### 🪛 Install Extension Manager

And then Install extensions

- Clipboard indicator (Diodon Linux Mint)

- Emoji Copy

- Status Area Horizontal Spacing

[Extensions for Gnome setup video](https://youtu.be/tyRuum27ABo?list=PL4d6Lj0GrDEBjWyFIpXxKZrbWX8upaM2S)

[More Gnome extensions](https://www.youtube.com/watch?v=ZPcxwiyCqtc)

### 🧯 Turn off shortcut to launch apps from dock

Extension Manager - Ubuntu Dock - Behaviour - User keyboard shortcuts to activate apps

### 🎚️ Enable 'Minimise on Click'

Extension Manager - Ubuntu Dock - Behaviour - Click action - Minimise
### 🌐 Change DNS Provider

[Cloudflare](https://one.one.one.one/dns/)
### ⌨️ Shortcuts to set

- Super + E open Home folder
- Super + C open Calculator
- Super + I open Settings
- Super + B Open web browser
- Super + Q Close window
- Super + 1,2,3,4 switch to relevant workspace

>[!todo] Go through settings and change to preference

#
Use sudo apt autoremove regularly, especially after removing an app or updating kernel.
```
sudo apt autoremove
```
 

Use flatpak uninstall --unused --delete-data regularly, especially after installing a flatpak, or after a flatpak runtime is updated.

```
flatpak uninstall --unused --delete-data
```

