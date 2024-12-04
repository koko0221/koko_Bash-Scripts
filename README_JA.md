# koko的MAC腳本庫

Language : [繁體中文](README.md) / 日本語 / [English](README_EN.md) / [簡体中文](README_SC.md)
## 注意
＊内容はBing翻訳を使用して翻訳した

＊一部コードはAIによって作成されています
## ffmpeg関連
- ### [ディレクトリ内のmp4を一括でflacに変換](ffmpeg/mp4%20to%20flac.sh)
  - 既に損失のある音声ファイルをflac（16bit/48khz）に変換することに大きな意味はありませんが、主に信仰の一部ですw
## IINA関連
- ### [誤って変更した設定を削除](IINA/IINA_delete-keyword-lines.sh)
  - ここでは簡単な実用ツールを作成しました。私自身がIINAを使用しているときに音量遅延などをよく変更してしまうためです。使用方法は、watch laterフォルダ内でターミナルを開き、直接実行するだけです。また、スクリプト内で自分のニーズに応じて修正することもできます。
  - `watch_later`ディレクトリに切り替えるには、以下のコマンドを使用してください：
    ```bash
    cd /Users/{USER NAME}/Library/Application\ Support/com.colliderli.iina/watch_later
    ```
    `{USER NAME}`をあなたのユーザー名に置き換えてください。
