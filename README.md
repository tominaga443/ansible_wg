# Readme
## Abstruct
- このPlaybookは、OSS DevOps環境を構築することを目的としたPlaybookです。
- Playbookの実行により、以下のOSSの構築が可能です。
   - [GitLab](https://about.gitlab.com/)  (クローズドソースコードバージョン管理ソフトウェア)
   - [Jenkins](https://jenkins-ci.org/)   (継続的インテグレーションソフトウェア)
   - [Redmine](http://www.redmine.org/)   (プロジェクト管理ソフトウェア)
   - [RocketChat](https://rocket.chat/)   (リアルタイムチャットソフトウェア)

## GettingStarted
1. Ansibleの導入された環境下でソースコードを任意のディレクトリに展開してください。
2. hostsファイルにインストール対象サーバーのIPアドレスを記述してください。
3. VarsListにしたがって、変数を設定してください。
4. ansible-playbook -i hosts site.ymlを実行すると、OSS環境の構築が開始されます。

## VarsList
### 共通の変数（group_vars/all）
- user: 操作対象サーバーで処理を行うユーザー名を指定してください。
- proxy\_env:
    - http\_proxy: 必要に応じてプロキシを指定してください。使わない場合の指定は不要です。
    - https\_proxy: 必要に応じてプロキシを指定してください。使わない場合の指定は不要です。

### ソフトウェアに依存する変数
それぞれのReadmeを参照してください。

- GitLab
    - [roles/gitlab/README.md](roles/gitlab/README.md)
- Jenkins
    - [roles/jenkins/README.md](roles/jenkins/README.md)
- Redmine
    - [roles/redmine/README.md](roles/redmine/README.md)
- RocketChat
    - [roles/rocketchat/README.md](roles/rocketchat/README.md)

## Author
本Playbookは、[OSSコンソーシアムクラウド部会](http://www.osscons.jp/cloud/)のAnsibleWG活動において作成されました。

WG参加者は下記のとおりです(敬称略)。

- 冨永、坂本、加藤、安久、小野寺、平原

## Contact Us
ws-cloud-contact[at]osscons.jp
