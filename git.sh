#!/bin/bash 
############################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
############################################################################
# Below command will backup everything inside the project folder

# echo "# yltra-flat-icon-theme" >> README.md
# git init
# git add README.md
# git commit -m "first commit"
# git remote add origin https://github.com/erikdubois/yltra-flat-icon-theme
# git push -u origin master

# Icon cache

echo "Yltra-Flat"
gtk-update-icon-cache -f -t -v Yltra-Flat
echo "Yltra-Flat-Arch-Blue"
gtk-update-icon-cache -f -t -v Yltra-Flat-Arch-Blue
echo "Yltra-Flat-Majestic"
gtk-update-icon-cache -f -t -v Yltra-Flat-Majestic
echo "Yltra-Flat-Green"
gtk-update-icon-cache -f -t -v Yltra-Flat-Mint-Green
echo "Yltra-Flat-Orange"
gtk-update-icon-cache -f -t -v Yltra-Flat-Orange




git add --all .

# Committing to the local repository with a message containing the time details
curtime=$(date)
git commit -m "Automatic Backup @ $curtime"

# Push the local snapshot to a remote destination
git push -u origin master
