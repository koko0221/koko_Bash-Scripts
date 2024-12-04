# koko的MAC腳本庫
Language : 繁體中文 / [日本語](README_JA.md) / [English](README_EN.md) / [簡体中文](README_SC.md)
## 注意
＊部分使用AI編寫
## ffmpeg相關
- ### [目錄批量mp4轉flac](ffmpeg/mp4%20to%20flac.sh)
  - 雖然將已經有損的音檔轉flac(16bit/48khz)意義不大，不過主要是迷信的部分w
## IINA相關
- ### [刪除不小心動到的設定](IINA/IINA_delete-keyword-lines.sh)
  - 這邊做了一個簡易的實用工具，因為我自己使用IINA很常會動到音量延遲那些的，使用方法是在watch later的資料夾中開啟終端機，直接丟進去執行就行，也可以在腳本內依據自己的需求修正。
  - 要切換到 `watch_later` 目錄，請使用以下命令：
    ```bash
    cd /Users/{USER NAME}/Library/Application\ Support/com.colliderli.iina/watch_later
    ```
    請將 `{USER NAME}` 替換為你的用戶名。
