xcode-select --install
cd ~
mkdir system-build
cd system-build
git clone https://github.com/mahdihastie/system-builder
chmod +x brew.sh
./brew.sh
chmod +x cask.sh
./cask.sh
