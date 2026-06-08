# 🛠️ VMware Kernel Modules Fixer for Linux

![Linux](https://img.shields.io/badge/Linux-Supported-success)
![Bash](https://img.shields.io/badge/Bash-Script-blue)
![VMware](https://img.shields.io/badge/VMware-Workstation-orange)
![License](https://img.shields.io/badge/License-MIT-green)

Automatically rebuild and repair VMware Workstation kernel modules after kernel updates, unexpected shutdowns, or broken VMware services.

Supports:

* Kali Linux
* Ubuntu
* Debian
* Most Debian-based distributions

---

## 📋 Table of Contents

* Features
* Common Error
* Installation
* Usage
* What the Script Does
* Result
* Contributing

---

## ✨ Features

✔ Rebuild VMware kernel modules automatically

✔ Fix missing `/dev/vmmon`

✔ Restart VMware networking services

✔ Reload `vmmon` and `vmnet` drivers

✔ Restore USB passthrough functionality

✔ Works after Linux kernel upgrades

✔ Lightweight Bash script

---

## ❌ Common Error

After a Linux kernel update or an unexpected system shutdown, VMware may fail to start virtual machines.

Typical error:

> Could not open /dev/vmmon: No such file or directory

### Example

![VMware Error](Screenshot%20From%202026-06-08%2008-20-00.png)

---

## 🚀 Installation

Download or clone the repository:

```bash
git clone https://github.com/chxrvsr00t/VMwareKernelModulesFixerforLinux
cd VMwareKernelModulesFixerforLinux
```

Grant execution permission:

```bash
chmod +x fix_vmware.sh
```

---

## ▶️ Usage

Run the script with root privileges:

```bash
sudo ./fix_vmware.sh
```

Wait for the process to complete.

The script will automatically rebuild VMware modules and restart required services.

---

## ⚙️ What the Script Does

The script performs the following actions:

### 1. Rebuild VMware Modules

```bash
vmware-modconfig --console --install-all
```

Recompiles:

* vmmon
* vmnet

for the currently installed Linux kernel.

---

### 2. Restart VMware Networking

Restores:

* vmnet0
* vmnet1
* vmnet8

Required for NAT, Host-Only, and Bridged networking.

---

### 3. Load Kernel Drivers

```bash
modprobe vmmon
modprobe vmnet
```

Loads VMware drivers into the running kernel.

---

### 4. Restore USB Passthrough

Restarts:

```bash
vmware-usbarbitrator
```

Allows VMware guests to detect and use USB devices correctly.

---

## 🎉 Result

After successful execution:

✅ Virtual machines start normally

✅ VMware networking works correctly

✅ USB devices are detected

✅ No more `/dev/vmmon` errors

---

## 🇻🇳 Hướng Dẫn Nhanh

### Bước 1

Cấp quyền thực thi:

```bash
chmod +x fix_vmware.sh
```

### Bước 2

Chạy script:

```bash
sudo ./fix_vmware.sh
```

### Bước 3

Mở lại VMware Workstation.

Nếu thành công:

* Máy ảo khởi động bình thường
* Có kết nối mạng
* Nhận USB đầy đủ
* Không còn lỗi vmmon

---

## 🤝 Contributing

Pull requests are welcome.

Ideas for future improvements:

* Secure Boot support
* Automatic MOK signing
* VMware Player support
* Fedora compatibility
* Auto-detection of VMware installation paths

---

## ⭐ Support

If this project helped you, consider giving the repository a ⭐ on GitHub.

It helps others discover the project and motivates future updates.
