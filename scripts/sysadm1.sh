#!/bin/bash
# 
# Samsul Ma'arif @ 2017 <samsul@puskomedia.id>


echo ""
echo "cek partisi & mount point"

df -h | grep /home
df -h | grep /var
echo ""
echo "Cek RAM & swap"
free -m

echo ""
echo "Cek SSH Server"

cat /etc/ssh/sshd_config | grep Port
cat /etc/ssh/sshd_config | grep Root

echo ""
echo "Cek user KaryawanX"
for x in {01..10}; do
	username=Karyawan$x
	if groups $username | grep &>/dev/null '\bKaryawan\b'; then
	    echo "$username member of Karyawan - true"
	else
	    echo "$username member of Karyawan - false"
	fi
done

echo ""
echo "Cek user ManajerX"
for x in {01..10}; do
	username=Manajer$x
	if groups $username | grep &>/dev/null '\bManajer\b'; then
	    echo "$username member of Manajer - true"
	else
	    echo "$username member of Manajer - false"
	fi
done

echo ""
echo "Cek DNS"
echo -n "Masukkan alamat IP > "
read alamatip
nslookup sccatswa.id $alamatip
nslookup $alamatip $alamatip



