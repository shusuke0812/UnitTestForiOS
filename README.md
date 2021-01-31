単体テスト、UIテストの勉強用
====

## リポジトリ説明
- sample_01ディレクトリ・・・参考文献（１）
- sample_02ディレクトリ・・・参考文献（２）

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

## 参考文献
1. 石川洋資、西山勇世、Swift実践入門、技術評論者、2020年4月28日 第3版 第1刷発行
2. 平田敏之、細沼祐介、iOSアプリ開発自動テストの教科書、2019年7月10日 初版 第1刷発行