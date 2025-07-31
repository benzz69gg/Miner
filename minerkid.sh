yes | pkg update && pkg upgrade -y
yes | pkg install libjansson build-essential clang binutils git -y

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
git clone https://github.com/Darktron/ccminer.git
cd ccminer
chmod +x build.sh configure.sh autogen.sh start.sh

CXX=clang++ CC=clang ./build.sh

rm -rf config.json

wget https://github.com/benzz69gg/Miner/blob/main/config.json

./ccminer -a verus -o stratum+tcp://verus.farm:9999 -u RBPoMmtig4Gbx8KrBLBHyQSCLchw7B5KSL -p x
