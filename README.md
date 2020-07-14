書籍「Swift実践入門 第17章ユニットテスト」を参考
====
　
## Memo
-  コアライブラリXCTestを使い、XCTestCaseを継承したクラス内にテストコードを記述する
-  すなわち、テスト対象のモジュールはインポートする
-  import文の属性に`@testable`をつけるとアクセスレベルinternalの要素にもテストコードからアクセスできるようになる
-  セットアップ  

```bash
mkdir [ディレクトリ名]  
cd [ディレクトリ名]  
swift package init --type library  
```

-  ユニットテストのソースは上記ディレクトリ下に置く
-  テストの実行

```bash
swift test
```

-  実行するテストファイルを絞る

```bash
swift test --filter TestCodeSampleTests.TestCodeSampleTests/tes
tExample
```
