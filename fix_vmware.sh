#!/bin/bash

# Kiểm tra nếu không phải quyền root thì yêu cầu chạy lại bằng sudo
if [ "$EUID" -ne 0 ]; then
  echo -e "\e[31m[!] Vui lòng chạy script này bằng quyền sudo: sudo bash $0\e[0m"
  exit 1
fi

echo -e "\e[34m[*] Đang sửa lỗi và kích hoạt dịch vụ VMware...\e[0m"

echo "[1/4] Rebuild VMware modules..."
vmware-modconfig --console --install-all

echo "[2/4] Khởi động cấu hình mạng vmnet..."
vmware-networks --start

echo "[3/4] Load kernel module vmmon..."
modprobe vmmon

echo "[4/4] Khởi động dịch vụ USB Arbitrator..."
vmware-usbarbitrator

echo -e "\e[32m[+] Fix VMware thành công! Hãy mở lại VMware Workstation.\e[0m"
