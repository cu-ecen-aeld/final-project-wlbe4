# Final Project Overview
[Project Overview](https://github.com/cu-ecen-aeld/final-project-wlbe4/wiki/Project-Overview)

# Enable I2C
dtparam=i2c1=on
dtparam=i2c_arm=on
# Enable UART
enable_uart=1
# Enable VC4 Graphics
dtoverlay=vc4-kms-v3d
# Disable pull downs
gpio=22-27=np
# Enable jtag pins (i.e. GPIO22-GPIO27)
enable_jtag_gpio=1