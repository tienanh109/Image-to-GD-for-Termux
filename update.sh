 #!/bin/bash
clear
# Đặt biến phiên bản hiện tại
echo "Checking for the latest version...."
echo ""
ver="0.0.3_beta"

# Kiểm tra cập nhật từ raw file
remote_raw="https://raw.githubusercontent.com/BinZFAKE9999/Image-to-GD-for-Termux/main/server-updates.bzot9"
response=$(curl -s $remote_raw)

# Lấy thông tin từ raw response
latest_ver=$(echo "$response" | sed -n '1p')
latest_file=$(echo "$response" | sed -n '2p')
latest_file_name=$(echo "$response" | sed -n '3p')
# So sánh phiên bản
if [ "$latest_ver" == "$ver" ]; then
  echo "There is no latest version yet! Please check later!"
  sleep 5
  exit 0
fi
if [ "$latest_ver" == "" ]; then
  echo "No data from server, please try again later!"
  sleep 5
  exit 0
fi
# Hiển thị thông báo cập nhật
echo "The latest version of the tool is available:"
echo "- Current version: $ver"
echo "- Latest version: $latest_ver"

# Hỏi người dùng có muốn cập nhật không
read -p "Do you want updates? [Y]Yes/[N] No: " choice
if [ "$choice" != "Y" ] && [ "$choice" != "y" ]; then
  exit 0
fi

# Cập nhật nếu người dùng đồng ý
clear
echo "Updating to version $latest_ver..."
cd ..
wget "$latest_file"
unzip "$latest_file_name"
cd "$(echo "$response" | sed -n '4p')"
echo "Update successful! Please press Cirl + C and restart tool with latest version to restart."
exit 0
