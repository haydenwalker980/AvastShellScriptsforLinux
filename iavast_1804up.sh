zenity --info --header="wintheperson's Avast Installer" --text="Avast will be installed. Please ensure you have downloaded the prerequisites. This will not do a complete install. Windev is not responsible for any damage to your PC caused by this shell script. If you do not trust the contents, RTFD here: https://kb.support.business.avast.com/GetPublicArticle?title=DEB-Install. Press OK to continue."
zenity --info --header="wintheperson's Avast Installer" --text="Make sure you are root and you have your password ready. Otherwise the install will fail."
echo "Installing Avast step 1: Adding Repo to Apt Sources"
echo "deb http://deb.avast.com/lin/repo ubuntu release" \ >> /etc/apt/sources.list
echo "Step 1 done."
echo "Installing Avast step 2: Downloading GPG key and importing"
wget http://files.avast.com/files/resellers/linux/avast.gpg
sudo apt-key add ./avast.gpg
echo "Step 2 done."
echo "Installing Avast step 3: Updating Apt and Installing Avast"
sudo apt update
sudo apt install avast
echo "Step 3 done."
zenity --info --text="Done installing Avast! Run the command /etc/avast to check if the app is there."
