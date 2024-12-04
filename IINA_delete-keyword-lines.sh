#!/bin/bash

# 設定資料夾路徑和關鍵字列表
Folder_Path="." #資料夾路徑，
Delete_Line_KeyWords=("speed" "volume" "audio-delay" "sub-delay") # 在這裡添加你的關鍵字

# 遍歷資料夾中的所有文件
for file in "$Folder_Path"/*; do
  # 檢查是否為文件
  if [ -f "$file" ]; then
    # 初始化臨時文件
    cp "$file" temp
    # 遍歷所有關鍵字
    for keyword in "${Delete_Row_KeyWords[@]}"; do
      # 使用 grep -v 刪除包含關鍵字的行，並將結果寫回臨時文件
      grep -v "$keyword" temp > temp2 && mv temp2 temp
    done
    # 將臨時文件寫回原文件
    mv temp "$file"
  fi
done

echo "已刪除包含關鍵字的行。"
