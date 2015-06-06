#memo

### リーダブルコード
#### 実際のコード
```swift
let filePath = NSBundle.mainBundle(.pathForResource("recipe-data", ofType: "csv"))
```

#### 理由
変数名からファイルを読み込むのに必要なパスを取得したことがわかった。
ファイルパスはたしかに変わらないものであるということがわかる。

#### 一言説明
自己記述定数
