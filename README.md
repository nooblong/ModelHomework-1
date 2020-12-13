# news-platform-spring

导出DOCX文档交作业用[cloudconvert](https://cloudconvert.com/md-to-docx)

## misc

### user ROLES

| role     | num |
|----------|-----|
| admin    | 0   |
| database | 1   |
| reviewer | 2   |
| editor   | 3   |
| user     | 4   |

### user isBan

0 false
1 true

## API docs



### 首页轮播图

GET
`/api/news`

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

### 首页热门文章

GET
`/api/hotNews`

```json
{
    "articles": [
        {
            "articleId": 1, 
            "headPicURL": "https://example.com/xxxx.jpg", 
            "title": "Hello World", 
            "like": 10, 
            "comments": 10
        }, 
        {
            "articleId": 1, 
            "headPicURL": "https://example.com/xxxx.jpg", 
            "title": "Hello World", 
            "like": 10, 
            "comments": 10
        }
    ]
}
```

### 获取所有板块列表

GET
`/api/sections`

```json
[
    {
        "name": "Tech",
        "sectionId": "1"
    },
    {
        "name": "Sport",
        "sectionId": "2"
    }
]
```
### 板块详细信息

GET
`/api/sectionInfo?sectionId={}`

```
{
    "sectionId": 1, //板块id
    "sectionTitle": "体育", //板块标题
    "publishArticle": 100, //当前已经发布的文章数
}
```

### 板块新闻列表

GET
`/api/news-list?sectionId={}`

```json
[
    {
        "articleId": 1,
        "title": "Hello World",
        "authorId": "",
        "authorName": "",
        "clicks": 100,
        "publish_date": ""
    }
]
```

### 新闻具体内容

GET
`/api/news?articleId={articleId}`

```json
{
    "articleId": 1,
    "publishDate": "2020 - 10 - 10 xx:xx",
    "authorId": 111,
    "title": "Hello World",
    "content": "Hello World.....",
    "like": 12,
    "comments": 1
}
```

### 新闻评论列表

GET
`/api/comment-list/?articleId={articleId}`

```json
{
    "articleId": 1,
    "commentIdList": [1, 2, 3, 4]
}
```

### 新闻评论详细内容

GET
`/api/comment?comment_id={}`

```json
{
    "commentId": "1",
    "articleId": "",
    "authorId": "",
    "authorName": "",
    "content": "",
    "publishDate": ""
}
```

### 用户添加新闻评论

POST
`/api/comment?articleId`

```json
{
    "content": "HELLO WORLD"
}
```

### 用户/管理员删除评论

DELETE
`/api/comment?comment_id={}`

### 注册用户

POST
`/api/public/login/save`\

```json
{
  "username": "nhb",
  "role": 0,
  "isBan": 0,
  "password": 123
}
```