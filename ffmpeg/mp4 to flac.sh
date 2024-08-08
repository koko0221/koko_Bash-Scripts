#!/bin/bash
# 指定目錄
input_dir="/path/to/your/mp4/files"
output_dir="$input_dir/output"
temp_dir="$input_dir/tmp"

# 創建輸出目錄和暫存目錄（如果不存在）
mkdir -p "$output_dir"
mkdir -p "$temp_dir"

# 遍歷目錄中的所有 MP4 文件
for file in "$input_dir"/*.mp4; do
    # 獲取文件名（不帶擴展名）
    filename=$(basename "$file" .mp4)
    
    # 提取元數據
    metadata=$(ffmpeg -i "$file" -f ffmetadata -)
    
    # 使用 ffmpeg 轉換為 WAV 文件
    ffmpeg -i "$file" -sample_fmt s16 -ar 48000 "$temp_dir/$filename.wav"
    
    # 將 WAV 文件壓縮為 FLAC 文件並寫入元數據
    ffmpeg -i "$temp_dir/$filename.wav" -metadata "$metadata" "$output_dir/$filename.flac"
done

# 刪除暫存目錄
rm -r "$temp_dir"

echo "所有文件已轉換完成！"
