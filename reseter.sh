!/bin/bash

rm -rf $HOME/Downloads/*
rm -rf $HOME/Desktop/*
rm -rf $HOME/Documents/*
rm -rf $HOME/workspace
rm -rf $HOME/.ssh

git config --global --unset-all user.name
git config --global --unset-all user.email

# cleanup Chrome
rm -rf ~/Library/Application\ Support/Google
rm -rf ~/Library/Caches/com.google.*
rm -rf ~/Library/Google

# cleanup safari
mv ~/Library/Safari ~/Desktop/Safari-`date +%Y%m%d%H%M%S`; \
  rm -Rf ~/Library/Caches/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
  rm -Rf ~/Library/Caches/Metadata/Safari; \
  rm -Rf ~/Library/Caches/com.apple.Safari; \
  rm -Rf ~/Library/Caches/com.apple.WebKit.PluginProcess; \
  rm -Rf ~/Library/Cookies/Cookies.binarycookies; \
  rm -Rf ~/Library/Preferences/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery;
\
  rm -Rf ~/Library/Preferences/com.apple.Safari.LSSharedFileList.plist; \
  rm -Rf ~/Library/Preferences/com.apple.Safari.RSS.plist; \
  rm -Rf ~/Library/Preferences/com.apple.Safari.plist; \
  rm -Rf ~/Library/Preferences/com.apple.WebFoundation.plist; \
  rm -Rf ~/Library/Preferences/com.apple.WebKit.PluginHost.plist; \
  rm -Rf ~/Library/Preferences/com.apple.WebKit.PluginProcess.plist; \
  rm -Rf ~/Library/PubSub/Database; \
  rm -Rf ~/Library/Saved\ Application\ State/com.apple.Safari.savedState

# remove git user
# sed -i '' -e '/[user]/,+2d' $HOME/.gitconfig

# clean history
:> .zhistory
