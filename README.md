# OpenVPN sever Ubuntu
## 1. Install OpenVPN server
#`apt-get update`

#`wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh`

## 2. Install samba
#`apt install samba`

## 3. Create a Samba Public Share Without Authentication

#`nano /etc/samba/smb.conf`
> [public]
>
>	    comment = no need username and password
>		path = /samba/public
>		browsable = yes
>		guest ok = yes
>		writable = yes
>		read only = no

#`mkdir -p /samba/public`

#`chmod -R 777 /samba/public`

#`systemctl restart smbd.service nmbd.service`

#`scp /root/username.ovpn /samba/public`

## 4. Port Forwading
	1194
## 5. VPN client
