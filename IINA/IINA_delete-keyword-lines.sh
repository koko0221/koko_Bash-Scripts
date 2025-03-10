#!/bin/bash

# 設定資料夾路徑和關鍵字列表
Folder_Path="." # 資料夾路徑
Delete_Line_KeyWords=("speed" "volume" "audio-delay" "sub-delay") # 在這裡添加你的關鍵字

# 遍歷資料夾中的所有文件
for file in "$Folder_Path"/*; do
  # 檢查是否為文件
  if [ -f "$file" ]; then
    # 初始化標記，檢查是否需要修改
    Need_Modification=false
    # 建立臨時文件
    cp "$file" temp
    # 遍歷所有關鍵字
    for keyword in "${Delete_Line_KeyWords[@]}"; do
      # 如果發現包含關鍵字的行，標記為需要修改並刪除該行
      if grep -q "$keyword" "$file"; then
        Need_Modification=true
        grep -v "$keyword" temp > temp2 && mv temp2 temp
      fi
    done
    # 如果有修改才覆寫原文件
    if $Need_Modification; then
      mv temp "$file"
      echo "$file 已更新。"
    else
      rm temp
    fi
  fi
done

echo "處理完成。"
