#!/bin/bash

while :
do
# Menampilkan Informasi Penggunaan Disk
echo "1. Menampilkan Informasi Penggunaan Disk : "
journalctl --disk-usage --all
sleep 5s

# Menghapus journalctl log hingga ruang disk yang digunakan untuk log berkisar 10 MB.
echo "2. Menghapus jorunalctl log hingga ruang disk yang digunakan untuk log berkisar 10MB : "
sudo journalctl --vacuum-size=10M
sleep 5s

# Menampilkan kembali informasi penggunaan disk
echo "3. Menampilkan kembali informasi penggunaan disk : "
journalctl --disk-usage --all
sleep 10s
done
