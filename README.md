
# Docker操作方法

## ビルド

```
docker-compose build --force-rm
```

## 起動・再起動

**まずはビルドしてください**

```
docker-compose up
```
**停止は[Ctrl + C]を実行**

## バックグラウンド起動・再起動
```
docker-compose up -d
```

http:localhost:3000 にブラウザからアクセスし、Railsページを表示されれば起動完了

## コンテナへのログイン
```
コンテナ起動中
docker-compose exec api bash 

コンテナを起動していない時
docker-compose run api bash 
```

## コンテナ停止
```
docker-compose down 
```

## 全Dockerイメージの削除
```
./docker-all-kill.sh
```

----

# ユーザー
## 新規登録(create)
なし（ログイン時に自動生成される => SessionController）

## 取得(index)
GET http://localhost:3000/users/{uuid}/portfolios/{page}

#### 例
```
curl http://localhost:3000/users/userxxxxxxx1/portfolios -X GET -H "Content-Type: application/json"
```

#### 成功時のレスポンス
```
{"data":{"user":{"uuid":"userxxxxxxx1","name":"john","positions":["フロントエンド","デザイナー"],"status":"転職中","user_large_image_url":"http://localhost:4200/images/large_user1.jpeg","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforios":[{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":4,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":2,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":0,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":9,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":1,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":4,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":6,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":80,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}},{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":100,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド"],"status":200,"user_small_images_url":"https://www.google.com/"}}]}}%  
```

#### エラー
bad request 400
not found 404

## 取得2(likes)

GET http://localhost:3000/users/{uuid}/likes/portfolios/{page}

#### 例
```
curl http://localhost:3000/users/userxxxxxxx2/likes/portfolios/1 -X GET -H "Content-Type: application/json"
```

#### 成功時のレスポンス
```
{"data":[{"user":{"uuid":"userxxxxxxx2","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":4}},{"user":{"uuid":"userxxxxxxx3","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":8}},{"user":{"uuid":"userxxxxxxx4","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":1}},{"user":{"uuid":"userxxxxxxx5","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":9}},{"user":{"uuid":"userxxxxxxx6","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":40}},{"user":{"uuid":"userxxxxxxx7","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":100}},{"user":{"uuid":"userxxxxxxx8","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":200}},{"user":{"uuid":"userxxxxxxx9","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":0}},{"user":{"uuid":"userxxxxxxx10","name":"john","positions":["ワールドエンド","バックエンド"],"status":"転職中","user_small_images_url":"http://localhost:4200/images/small_user1.jpeg"},"portforio":{"uuid":"portxxxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"],"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":0}}]}%
```

#### エラー
bad request 400
not found 404

## 更新(update)
PATCH http://localhost:3000/users/{uuid}

#### 例

```
curl http://localhost:3000/users/userxxxxxxx1 -X PATCH -H "Content-Type: application/json" -d '{"uuid": "userxxxxxxx1", "name": "john", "positions": ["フロントエンド", "デザイナー"],"status": "転職中","user_large_image_url": "https://user1-large.com/","user_small_images_url": "https://user-small1.com/"}'
```

#### 成功時のレスポンス
```
{"date":{"status":200,"message":"OK"}}% 
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/users/{uuid}

#### 例
```
curl http://localhost:3000/users/userxxxxxxx1 -X DELETE -H "Content-Type: application/json"
```

#### 成功時のレスポンス
```
{"date":{"status":200,"message":"OK"}}%   
```

#### エラー
bad request 400
not found 404

----
# ポートフォリオ
## 新規登録(create)
POST http://localhost:3000/portfolios/

#### 例
```
curl http://localhost:3000/portfolios/ -X POST -H "Content-Type: application/json" -d '{"data":{"uuid": "portxxxxx1", "site_url": "https://site-example.com/1","image_urls": ["https://example.com/1", "https://example.com/2","https://example.com/3"],"explanation": "一言"}}' 
```

#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}% 
```

#### エラー
bad request 400
not found 404

## 取得(show)
GET http://localhost:3000/portfolios/{page}

positionsとstatusは必須。Jsonにこの2つがなければ、ステータス400番エラーにする予定（モックでは未対応）。

#### 例
```
curl http://localhost:3000/portfolios/1 -X GET -H "Content-Type: application/json" -d '{"data":{"positions": ["フロントエンド","バックエンド","デザイナー"],"status": "戦闘中"}}'
```

#### 成功時のレスポンス
```
{"data":[{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":4,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}},{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":3,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}},{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":23,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}},{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":400,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}},{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":2,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}},{"portfolio":{"uuid":"portxxxxx1","site_url":"https://www.google.com/","image_urls":["http://localhost:4200/images/site1.jpeg","http://localhost:4200/images/site2.jpeg","http://localhost:4200/images/site3.jpeg"]},"explanation":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"like":0,"user":{"uuid":"userxxxxx","name":"john","positions":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://www.google.com/"}}]}% 
```

## 更新(update)
PATCH http://localhost:3000/portfolios/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1 -X PATCH -H "Content-Type: application/json" -d '{"data":{"uuid": "portxxxxx1", "site_url": "https://site-example.com/1", "image_urls": ["https://example.com/1", "https://example.com/2", "https://example.com/3"],"explanation": "一言"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}%     
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/portfolios/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1 -X DELETE -H "Content-Type: application/json"
```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}%  
```

#### エラー
bad request 400
not found 404

----

# コメント
## 新規登録(create)

#### 例
POST http://localhost:3000/portfolios/{uuid}/comments

```
curl http://localhost:3000/portfolios/portxxxxx1/comments/ -X POST -H "Content-Type: application/json" -d '{"data":{"comment": "コメントです"}}'

```
#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}%    
```

#### エラー
bad request 400
not found 404


## 更新(update)
UPDATE http://localhost:3000/portfolios/{uuid}/comments/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1/comments/commentxxx -X PATCH -H "Content-Type: application/json" -d '{"data":{"comment": "コメントです"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/portfolios/{uuid}/comments/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1/comments/commentxx -X DELETE -H "Content-Type: application/json"

```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}% 
```

#### エラー
bad request 400
not found 404


----


# 添削
## 新規登録(create)

POST http://localhost:3000/portfolios/{uuid}/corrections

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1/corrections -X POST -H "Content-Type: application/json" -d '{"data":{"correction": "添削です"}}'

```
#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}%  
```

#### エラー
bad request 400
not found 404

## 更新(update)

UPDATE http://localhost:3000/portfolios/{uuid}/corrections/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1/corrections/correctionxx -X PATCH -H "Content-Type: application/json" -d '{"data":{"correction": "添削です"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}
```

#### エラー
bad request 400
not found 404


## 削除(delete)

DELETE http://localhost:3000/portfolios/{uuid}/corrections/{uuid}

#### 例

```
curl http://localhost:3000/portfolios/portxxxxx1/corrections/correctionxxx -X DELETE -H "Content-Type: application/json"
```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}
```

#### エラー
bad request 400
not found 404

----


# セッション（ログイン）
POST http://localhost:3000/auth/{provider}/callback

#### 例

```
curl http://localhost:3000/auth/twitter/callback -X POST -H "Content-Type: application/json"

OR

curl http://localhost:3000/auth/github/callback -X POST -H "Content-Type: application/json"
```
#### 成功時のレスポンス

```
{"date":{"status":201,"token":"tokenxxx","message":"OK"}}%
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/sessions/{token}

#### 例

```
curl http://localhost:3000/sessions/tokenxxx -X DELETE -H "Content-Type: application/json"
```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}{"date":{"status":205,"message":"OK"}}%   
```

#### エラー
bad request 400
not found 404

----

# いいね
## 新規登録(create)

#### 例
POST http://localhost:3000/portfolios/{uuid}/likes

```
curl http://localhost:3000/portfolios/portxxx/likes -X POST -H "Content-Type: application/json"

```
#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}%    
```

#### エラー
bad request 400
not found 404

## 削除(delete)
DELETE http://localhost:3000/portfolios/{uuid}/likes

#### 例

```
curl http://localhost:3000/portfolios/portxxx/likes -X DELETE -H "Content-Type: application/json"

```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}% 
```

#### エラー
bad request 400
not found 404

----

# エラー処理のスタブ
エラー処理を検証する際に使用して下さい。
以下のJsonをつけるだけでエラーを発生させることができます。
このスタブだけは本番で実装しない（あくまでもエラー処理の確認にお使い下さい）。

```
'{"data":{"error":400}}'
'{"data":{"error":404}}'
```

# 例
```
curl http://localhost:3000/corrections/correctionxxx -X DELETE -H "Content-Type: application/json" -d '{"data":{"error": 400}}'

OR

curl http://localhost:3000/sessions/tokenxxx -X DELETE -H "Content-Type: application/json" -d '{"data":{"error":404}}'
```

# レスポンス
```
{"date":{"status":400,"message":"bad request"}}%
{"date":{"status":404,"message":"not found"}}% 
```


