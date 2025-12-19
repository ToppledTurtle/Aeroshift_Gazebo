sudo usermod -aG dialout "$(id -un)"
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
sudo apt install libfuse2 -y
sudo apt install libxcb-xinerama0 libxkbcommon-x11-0 libxcb-cursor-dev -y
sudo apt install libopengl0 -y

mkdir QGroundControl-x86_64 && cd QGroundControl-x86_64
wget https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl-x86_64.AppImage
chmod +x QGroundControl-x86_64.AppImage
cd ..
git clone https://github.com/PX4/PX4-Autopilot.git
git clone https://github.com/PX4/PX4-gazebo-models.git

cd PX4-Autopilot && make px4_sitl gz_x500