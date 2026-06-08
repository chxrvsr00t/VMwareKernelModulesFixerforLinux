Lỗi vỡ hiển thị là do khi ném đoạn code Markdown vào trong một khối Code Block lớn, nó dễ bị xung đột cú pháp hiển thị trên một số giao diện.

Dưới đây là toàn bộ nội dung file README.md ở dạng Plain Text hoàn toàn sạch sẽ, không bọc trong bất kỳ khối code nào để bạn copy chuẩn 100% không sợ lỗi:

🛠️ VMware Kernel Modules Fixer for Linux
A simple Bash script to automatically rebuild and fix VMware Workstation kernel modules (vmmon, vmnet) and USB services (vmware-usbarbitrator) on Linux distributions (especially Kali Linux, Ubuntu, and Debian).

🇻🇳 Hướng Dẫn Sử Dụng (Vietnamese)
❌ Lỗi thường gặp / Common Error
Khi Linux cập nhật Kernel mới hoặc máy bị tắt đột ngột, bạn sẽ gặp lỗi không mở được máy ảo như hình bên dưới:

Hình ảnh lỗi: Could not open /dev/vmmon: No such file or directory.

🚀 Cách chạy Script để fix lỗi
Tải hoặc sao chép file fix_vmware.sh về máy của bạn.

Mở Terminal tại thư mục chứa file và cấp quyền thực thi:
chmod +x fix_vmware.sh

Chạy script bằng quyền sudo:
sudo ./fix_vmware.sh

🎉 Kết quả / Result
Sau khi script chạy xong, bạn mở lại VMware sẽ thấy các tab máy ảo hoạt động bình thường, nhận đầy đủ mạng và thiết bị USB ngoại vi:

🇬🇧 Features & Technical Details (English)
The script executes the following steps sequentially with root privilege checks:

Rebuilds all VMware core modules via vmware-modconfig.

Starts virtual networks (vmnet0, vmnet1, vmnet8).

Loads the vmmon driver into the Linux kernel using modprobe.

Triggers the vmware-usbarbitrator to fix USB pass-through detection.

🤝 Contributing
Feel free to fork this repository, open issues, or submit pull requests if you want to add support for Secure Boot (MOK signing automatically)!

![image](Đường dẫn đến file ảnh)
