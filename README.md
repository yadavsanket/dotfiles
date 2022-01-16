## My Dotfiles
I am inspired by many excellent dotfiles including but not limited to below -

https://github.com/xero/dotfiles

We will use stow to deploy these dotfiles. stow makes sure that the contents of a particular folder that is passed in as parameter to stow command becomes available in the parent of parent folder of the said folder.

Suppose there are nested folders A/B/C/D/ and a file named e inside D. `mkdir -p /tmp/A/B/C/D && touch /tmp/A/B/C/D/e && touch /tmp/A/B/C/d`
Now navigate to /tmp/A/B and run stow command on the folder C. `cd /tmp/A/B && stow C`

```

cd ..

/tmp/A 
ls -lrt
total 8
drwxrwxr-x 1 san san 2 Jan 16 10:20 B
lrwxrwxrwx 1 san san 5 Jan 16 10:25 D -> B/C/D
lrwxrwxrwx 1 san san 5 Jan 16 10:25 d -> B/C/d

```

In our case, A is the home directory, B is the dotfiles folder (that is this repository) and C are the app specific folders. 

If we do not use stow, then we will have to clone dotfiles folder somewhere and then merge its contents inside home folder. And if we make any changes to any dotfile, then we have to make it in the dotfiles folder and sync back in home folder (or vice versa) and then commit the changes. However, with stow we just make the changes in ~/dotfiles and commit (or if ew introduce new files/folders inside C, then we need to run stow -R C)

Also, note that many new apps follow XDG specification which mandates that all config files stay inside a particular directory defined by XDG_CONFIG_DIR (~/.config by default). If we were to use only these new apps, then we don't really need to use stow and consequently maintain deeper directory structure. And we could rather just clone the contents of dotfiles inside ~/.config however, stow is still useful in this case as well because we can selectively install the configuration of apps.

## Usage instructions

Clone this repository in home folder. By default, it will be cloned in the folder named dotfiles. cd inside this folder and then run

```sh
cd
stow <some folder inside dotfiles folder; this folder is usually the name of an app>
```
