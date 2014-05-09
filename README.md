[![Build Status](https://travis-ci.org/katoy/sample_app_rails4.svg?branch=master)](https://travis-ci.org/katoy/sample_app_rails4)
[![Dependency Status](https://gemnasium.com/katoy/sample_app_rails4.svg)](https://gemnasium.com/katoy/sample_app_rails4)
[![Coverage Status](https://coveralls.io/repos/katoy/sample_app_rails4/badge.png)](https://coveralls.io/r/katoy/sample_app_rails4)

# Ruby on Rails チュートリアル：サンプルアプリケーション

これは、以下のためのサンプルアプリケーションです。  
　　[*Ruby on Rails Tutorial*](http://railstutorial.jp/) by [Michael Hartl](http://michaelhartl.com/).

以下の設定も追加しています。  
　　1. rubocop  
　　2. guard  
　　3. coverage 計測  
　　4. github 上での  travis, gemnasium, coveralls  サービス用の設定  

1. rubocop, sublimelinter
---------------------------

sublimetext3 で rubocop との連携を設定しておくと、コード編集しながら  rubocop  によるチェックを行うことができます。  
[https://github.com/pderichs/sublime_rubocop](https://github.com/pderichs/sublime_rubocop)  
  
もちろん、コマンドラインから、

    $ rubocop

 として起動することも可能です。  

 .rubocop  -- チェック内容を設定するファイル。  

     ＄ rubocop --auto-gen-config

  を実行すると、警告が０になるような設定ファイルが rubocop-todo.yml として生成されます。  
  これをベースにして .rubocop,yml を作ると良いです。  

sublimelinter という プラグインを私は使っています。

sublimetext の設定については、以下が参考になります。  
[SublimeText3でRubyをコーディングする際の最低限のインストール＆設定](http://tigawa.github.io/blog/2014/03/09/st3-win-ruby/)


2. guard
-------

guard コマンドを起動しておくと、ファイルを保存する度に、 rake spec が走ります。  
Guardfile が設定ファイルです。  

3. coverage 
----------

rspec が走ったときに、テストかバレーッジレポートが covereage/ 以下に生成されます。  
macos なら

    $ open coverage/rcov/index.html

 とすることで、 web browser が起動し、 カバレッジレポートを閲覧できます。


4. travis, gemnasium, coveralls
-------------------------------

.travis.yml     travis の設定ファイル  

.coveralls.yml  coverrails の設定ファイル  

この README.md の先頭に表示されているツールのバッジをクリックすることでgithub 用の各種サービスのレポート結果を参照できます。  

## その他:

### md ファイル (README.md) の編集
[Sublime Text で GitHub Flavored Markdown をプレビューする](http://rarihoma.s601.xrea.com/post-2013-11-23-01)  
に従って設定すると、macos なら cmd + Shift + g で ブラウザが開いて、 preview できます。  

### デバッグ

 *.rb なら

     bindign.pry
 
 *.erb なら
 
     <% binding.pry %>
 
 と書くと、そこで break してデバッグをする事ができます。

### matric

    $ rake metrics

 で、コードの静的解析結果のレポートを閲覧できます。
 

## TODO:  

- 認証を devise に置き換える事。
- casperjs をつかったテストスクリプトを作成する事。
- bootstrap3 を使うようにする事。
- yard 用のコメントを書く事。
- i18n 対応する事。
- kaminari をつかって paging する事。あるいは twitter のような paging にする事。

