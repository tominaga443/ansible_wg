## environment
ansible's version is 1.9.4 or later

## vars

### /roles/rocketchat/vars/main.yml
* HOST
    * ホスト名
* rocketchat_url
    * Rocket Chatソースコードダウンロード用URL
* rocketchat_base
    * RocketChatのベースパス
* rocketchat_path
    * RocketChatのインストールパス
* rocketchat_extract_path
    * ダウンロードしたRocketChatソースコードのファイル名
* sha256sum_num1
    * ダウンロードしたRocketChatのソースコードに対応するChecksum
* nodejs_url
    * Node.jsソースコードダウンロード用URL
* nodejs_path
    * ダウンロードしたNode.jsソースコードのファイル名
* nodejs_download_path
    * Node.jsをダウンロードし配備するパス
* sha256sum_num2
    * ダウンロードしたNode.jsのソースコードに対応するChecksum

## Dependencies
