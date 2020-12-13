# 后端API文档

## Register 注册

REQUEST

POST `/api/register`

BODY

```json
{
    "username": "Adam",
    "password": "xxxx",
    "mail": "xxxx@example.com"
}
```
---
RESPONSE

BODY
- success
```json
{
    "msg": "register ok"
}
```
- error
```json
{
    "msg": "the reason"
}
```

## Login 登录

REQUEST

POST `/api/login`

BODY
```json
{
    "username":"1",
    "password":"111"
}
```
---
RESPONSE

HEADER

`token` : `Bearer ***.***.***`

验证失败
StatusCode 401

## Refresh 刷新token

REQUEST

`/api/refresh`

HEADER 

`token` : `Bearer ***.***.***`

RESPONSE(new token)

`token` : `Bearer ***.***.***`

## ViewCarousel 轮播图

REQ

GET `/api/public/carousel`

---

RESP

BODY

```json
{
    "articles": [
        {
            "articleId": 1, 
            "headPicURL": "https://example.com/xxxx.jpg", 
            "title": "Hello World"
        }, 
        {
            "articleId": 2, 
            "headPicURL": "https://example.com/xxxx2.jpg", 
            "title": "Hello World2"
        }
    ]
}
```

## ViewHotNews 热门新闻

REQ

GET `/api/public/hot/{number}`

---

RESP

BODY

```json
{
    "articles": [
        {
            "articleId": 1, 
            "headPicURL": "https://example.com/xxxx.jpg", 
            "title": "Hello World"
        }, 
        {
            "articleId": 2, 
            "headPicURL": "https://example.com/xxxx2.jpg", 
            "title": "Hello World2"
        }
    ]
}
```

## ViewSectinoList 查看板块列表

REQ

GET `/api/public/sections`

---

RESP

BODY

```json
{
    "sections": [
        {
            "sectionId": 1,
            "sectionTitle": "科技"
        },
        {
            "sectionId": 2,
            "sectionTitle": "人文 "
        }
    ]
}
```

## ViewNewsList

REQ

GET `/api/public/news`

| 参数         | 参数名     | 类型   | 是否必须 | 约束 | 描述                           | 示例 |
|--------------|------------|--------|----------|------|--------------------------------|------|
| sectionId    | 板块ID     | number | N        | N    | 通过板块ID查看某个板块所有稿件 | 1    |
| titleKeyword | 标题关键字 | string | N        | N    | 通过标题搜索新闻               |      |
|              |            |        |          |      |                                |      |

## CancelAccount 注销账户

TODO

## ChangeUserInfo 修改用户资料

REQ

POST

BODY

```json
{
    "mail": "xxxx@example.com"
}
```

---

RESP

BODY

```json
{
    "msg": "change info ok"
}
```
