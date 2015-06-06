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

#### 実際のコード
```swift
let delimiterInCSV = NSCharacterSet(charactersInString: "\t")
let csvFileName = "recipe-data"
let recipeTitleHeader = "title"
```

#### 理由
レシピが書いてあるファイルの指定について、フィールドとして用意することでわかりやすくした

#### 実際のコード
```swift
let filePathString = NSBundle.mainBundle(.pathForResource(csvFileName, ofType: "csv"
if let filePathString = filePathString {
        let filePathNSURL = NSURL(fileURLWithPath: filePathString)
```

#### 一言説明
CSVをイニシャライズするのに使うのはNSURLで、ファイルパスを取るとStringで型が違うので同じファイルを指すが型が違うということがわかるような名前にした
