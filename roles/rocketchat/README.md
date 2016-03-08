## environment
ansible's version is 1.9.4 or later

## vars

### /roles/rocketchat/vars/main.yml
* rocketchat_url
    * Rocket Chatソースコードダウンロード用URL
* sha256sum_num1
    * ダウンロードしたRocketChatのソースコードに対応するChecksum
* rocketchat_extract_path
    * ダウンロードしたRocketChatソースコードのファイル名
* rocketchat_path
    * RocketChatのインストールパス
* HOST
    * ホスト名
* sha256sum_num2
    * ダウンロードしたNode.jsのソースコードに対応するChecksum
* nodejs_url
    * Node.jsソースコードダウンロード用URL
* nodejs_path
    * ダウンロードしたNode.jsソースコードのファイル名
* nodejs_download_path
    * Node.jsをダウンロードし配備するパス
* USER
    * ユーザ名

## Dependencies
