# Raspberry Pi VPN Wireless HotSpot
基于树莓派搭建供安卓设备访问 Play 应用市场的私人无线热点。(_仅供个人学习研究_)

> Across the Great Wall we can reach every corner in the world.

## Wifi 热点

```
$ sudo lsusb
Bus 001 Device 004: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS 802.11n WLAN Adapter
```
### 安装支持 Realtek RTL8188 网卡的 hostapd

https://github.com/jenssegers/RTL8188-hostapd

```
$ wget https://github.com/jenssegers/RTL8188-hostapd/archive/v2.0.tar.gz
$ tar -zxvf v2.0.tar.gz
$ cd RTL8188-hostapd-2.0/hostapd
$ sudo make
$ sudo make install
```

### 安装 udhcpd

```
$ wajig install udhcpd
```


## 安装 obfsproxy

```
$ sudo pip install obfsproxy
```

## chnroutes

https://github.com/fivesheep/chnroutes

# 另一个方案

```
           +-[OpenWrt router]-------+
           |                        |
           |  +[LAN]-------------+  |
  me ------+--| IP: 192.168.42.1 |  |
           |  +------------------+  |
           |                        |
           |  +[OpenVPN client 1]+  |   +-[OpenVPN server 1]----+
           |  |                  |  |   | Public IP: y.y.y.y    |   /
           |  | Iface: tun0      |--+---| Tunnel IP: 10.x.x.1   |---- { Internet
           |  | IP: 10.x.x.x     |  |   +-----------------------+   \ 
           |  +------------------+  |
           |                        |
           +------------------------+
```

## Running obfsproxy server on QNAP NAS

## Running OpenWrt on TP-Link WR703N
