# koko的MAC脚本库
Language : [繁体中文](README.md) / [日本语](README_JA.md) / [English](README_EN.md) / 简体中文
## 注意
＊使用繁化姬进行转换

＊部分使用AI编写
## ffmpeg相关
- ### [目录批量mp4转flac](ffmpeg/mp4%20to%20flac.sh)
  - 虽然将已经有损的音档转flac(16bit/48khz)意义不大，不过主要是迷信的部分w
## IINA相关
- ### [删除不小心动到的设定](IINA/IINA_delete-keyword-lines.sh)
  - 这边做了一个简易的实用工具，因为我自己使用IINA很常会动到音量延迟那些的，使用方法是在watch later的资料夹中开启终端机，直接丢进去执行就行，也可以在脚本内依据自己的需求修正。
  - 要切换到 `watch_later` 目录，请使用以下命令：
    ```bash
    cd /Users/{USER NAME}/Library/Application\ Support/com.colliderli.iina/watch_later
    ```
    请将 `{USER NAME}` 替换为你的用户名。
