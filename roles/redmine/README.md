# Redmine Playbook README
このPlaybookは1台のサーバーにredmine環境を構築します。

## 想定している対象サーバの前提環境
 CentOS7 minimal install直後、IPアドレス設定済み

## 必要な設定変更
1. hostsの[redmine]セクションのip変更
2. roles/redmine/vars/main.ymlの変更
 デフォルト値として2016/02/29現在動作確認済みの値が入力済み

### verslist
* rubyurl: インストールしたいrubyのインストールソースURLを指定
* rubyver: 上記のバージョンを指定
* redmineurl: インストールしたいredmineのインストールソースURLを指定
* redminever: 上記のバージョンを指定
* passenger: passengerを実行する際のバージョンを含めたディレクトリを指定
* password: postgresqlのパスワードを指定

　書式については/roles/redmine/vars/main.ymlに入力済みの値を参照のこと
