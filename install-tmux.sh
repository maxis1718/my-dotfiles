## install libevent
cd ~/
wget https://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-2.0.22-stable.tar.gz
tar xzvf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure
make
sudo make install

## install tmux
cd ~/
wget -O tmux-1.8.tar.gz http://sourceforge.net/projects/tmux/files/tmux/tmux-1.8/tmux-1.8.tar.gz/download
tar xvf tmux-1.8.tar.gz
cd tmux-1.8
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install
