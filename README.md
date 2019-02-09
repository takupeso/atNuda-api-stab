
# Docker操作方法

## ビルド

```
docker-compose build --force-rm
```

## 起動・再起動

```
docker-compose up
```
**停止は[Ctrl + C]を実行**

## バックグラウンド起動・再起動
```
docker-compose up -d
```

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
GET http://localhost:3000/api/v1/users/{uuid}/portfolios/{page}

#### 例
```
 curl http://localhost:3000/api/v1/users/userxxxxxxx1/portfolios/1 -X GET -H "Content-Type: application/json"
```

#### 成功時のレスポンス
```
{"data":{"uuid":"userxxxxxxx1","name":"john","position":["フロントエンド","デザイナー"],"status":"転職中","user_large_image_url":"https://user1-large.com/","user_small_images_url":"https://user-small1.com/","portforios":[{"uuid":"portxxxxxxx1","site_url":"https://site1.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx2","site_url":"https://site2.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx3","site_url":"https://site3.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx4","site_url":"https://site4.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx5","site_url":"https://site5.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx6","site_url":"https://site6.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx7","site_url":"https://site7.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx8","site_url":"https://site8.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx9","site_url":"https://site9.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx10","site_url":"https://site10.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx11","site_url":"https://site11.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx12","site_url":"https://site12.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx13","site_url":"https://site13.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx14","site_url":"https://site14.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]},{"uuid":"portxxxxxxx15","site_url":"https://site15.com/","image_urls":["https://image.com/1","https://image.com/2","https://image.com/3"]}]}}% 
```

#### エラー
bad request 400
not found 404

## 更新(update)
PATCH http://localhost:3000/api/v1/users/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/users/userxxxxxxx1 -X PATCH -H "Content-Type: application/json" -d '{"uuid": "userxxxxxxx1", "name": "john", "position": ["フロントエンド", "デザイナー"],"status": "転職中","user_large_image_url": "https://user1-large.com/","user_small_images_url": "https://user-small1.com/"}'
```

#### 成功時のレスポンス
```
{"date":{"status":200,"message":"OK"}}% 
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/api/v1/users/{uuid}

#### 例
```
curl http://localhost:3000/api/v1/users/userxxxxxxx1 -X DELETE -H "Content-Type: application/json"
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
POST http://localhost:3000/api/v1/portfolios/

#### 例
```
curl http://localhost:3000/api/v1/portfolios/ -X POST -H "Content-Type: application/json" -d '{"data":{"uuid": "portxxxxx1", "site_url": "https://site-example.com/1","image_urls": ["https://example.com/1", "https://example.com/2","https://example.com/3"],"portfolio_comment": "一言"}}' 
```

#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}% 
```

#### エラー
bad request 400


## 取得(show)
GET http://localhost:3000/api/v1/portfolios/{page}

positionsとstatusは必須。Jsonにこの2つがなければ、ステータス400番エラーにする予定（モックでは未対応）。

#### 例
```
curl http://localhost:3000/api/v1/portfolios/1 -X GET -H "Content-Type: application/json" -d '{"data":{"positions": ["フロントエンド","バックエンド","デザイナー"],"status": "戦闘中"}}'
```

#### 成功時のレスポンス
```
{"data":[{"uuid":"portxxxxx1","site_url":"https://site-example.com/1","image_urls":["https://example.com/1","https://example.com/2","https://example.com/3"],"portfolio_comment":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"user":{"name":"john","position":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://user-small1.com/"}},{"uuid":"portxxxxx2","site_url":"https://site-example.com/1","image_urls":["https://example.com/1","https://example.com/2","https://example.com/3"],"portfolio_comment":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"user":{"name":"john","position":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://user-small1.com/"}},{"uuid":"portxxxxx3","site_url":"https://site-example.com/1","image_urls":["https://example.com/1","https://example.com/2","https://example.com/3"],"portfolio_comment":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"user":{"name":"john","position":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://user-small1.com/"}},{"uuid":"portxxxxx4","site_url":"https://site-example.com/1","image_urls":["https://example.com/1","https://example.com/2","https://example.com/3"],"portfolio_comment":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"user":{"name":"john","position":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://user-small1.com/"}},{"uuid":"portxxxxx5","site_url":"https://site-example.com/1","image_urls":["https://example.com/1","https://example.com/2","https://example.com/3"],"portfolio_comment":"一言","comments":[{"myself":true,"comment":"私のコメント"},{"myself":false,"comment":"誰かのコメント"}],"corrections":[{"myself":true,"correction":"添削への返信"},{"myself":false,"correction":"誰かの添削コメント"}],"user":{"name":"john","position":["フロントエンド","バックエンド","デザイナー"],"status":"戦闘中","user_small_images_url":"https://user-small1.com/"}}]}
```

## 更新(update)
PATCH http://localhost:3000/api/v1/portfolios/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/portfolios/portxxxxx1 -X PATCH -H "Content-Type: application/json" -d '{"data":{"uuid": "portxxxxx1", "site_url": "https://site-example.com/1", "image_urls": ["https://example.com/1", "https://example.com/2", "https://example.com/3"],"portfolio_comment": "一言"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}%     
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/api/v1/portfolios/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/portfolios/portxxxxx1 -X DELETE -H "Content-Type: application/json"
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
POST http://localhost:3000/api/v1/comments

```
curl http://localhost:3000/api/v1/comments/ -X POST -H "Content-Type: application/json" -d '{"data":{{"comment": "コメントです"}}'

```
#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}%    
```

#### エラー
bad request 400


## 更新(update)
UPDATE http://localhost:3000/api/v1/comments/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/comments/commentxxx -X PATCH -H "Content-Type: application/json" -d '{"data":{"comment": "コメントです"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/api/v1/comments/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/comments/commentxx -X DELETE -H "Content-Type: application/json"

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

POST http://localhost:3000/api/v1/corrections

#### 例

```
curl http://localhost:3000/api/v1/corrections -X POST -H "Content-Type: application/json" -d '{"data":{"correction": "添削です"}}'

```
#### 成功時のレスポンス

```
{"date":{"status":201,"message":"OK"}}%  
```

#### エラー
bad request 400
not found 404

## 更新(update)

UPDATE http://localhost:3000/api/v1/corrections/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/corrections/correctionxx -X PATCH -H "Content-Type: application/json" -d '{"data":{"correction": "添削です"}}'
```

#### 成功時のレスポンス

```
{"date":{"status":200,"message":"OK"}}
```

#### エラー
bad request 400
not found 404


## 削除(delete)

DELETE http://localhost:3000/api/v1/corrections/{uuid}

#### 例

```
curl http://localhost:3000/api/v1/corrections/correctionxxx -X DELETE -H "Content-Type: application/json"
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
POST http://localhost:3000/api/v1/auth/{provider}/callback

#### 例

```
curl http://localhost:3000/api/v1/auth/twitter/callback -X POST -H "Content-Type: application/json"

OR

curl http://localhost:3000/api/v1/auth/github/callback -X POST -H "Content-Type: application/json"
```
#### 成功時のレスポンス

```
{"date":{"status":201,"token":"tokenxxx","message":"OK"}}%
```

#### エラー
bad request 400
not found 404


## 削除(delete)
DELETE http://localhost:3000/api/v1/sessions/{token}

#### 例

```
curl http://localhost:3000/api/v1/sessions/tokenxxx -X DELETE -H "Content-Type: application/json"
```

#### 成功時のレスポンス

```
{"date":{"status":205,"message":"OK"}}{"date":{"status":205,"message":"OK"}}%   
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
curl http://localhost:3000/api/v1/corrections/correctionxxx -X DELETE -H "Content-Type: application/json" -d '{"data":{"error": 400}}'

OR

curl http://localhost:3000/api/v1/sessions/tokenxxx -X DELETE -H "Content-Type: application/json" -d '{"data":{"error":404}}'
```

# レスポンス
```
{"date":{"status":400,"message":"bad request"}}%
{"date":{"status":404,"message":"not found"}}% 
```


