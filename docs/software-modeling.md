# 新闻发布系统

## 运行环境

运行环境： Java Runtime 15.0+
内    存：2GB内存
数 据 库：MySQL 8.0+

支持软件
现代浏览器, Chrome or firefox
计算机语言: HTML\CSS\JavaScript\Java\SQL

## 项目需求

新闻发布系统，是互联网上一种交互性极强、网友喜闻乐见的信息服务形式。根据相应的权限，用户可以进行浏览新闻、评论新闻、收藏新闻等操作，通过该平台，发布者可以更加轻松的发布稿件，从而加强不同用户间的文化交流和思想沟通。

经过调查分析，最终确定新闻发布系统的基本模块有:用户管理、版块管理、稿件管理、评论管理、站内信管理等。

其中各模块的功能具体如下说明：

- 用户管理包含
    - 用户注册
    - 用户登录
    - 用户资料修改
    - 用户账号找回
- 板块管理包含
    - 增加新闻版块
    - 板块内稿件管理
    - 删除板块
- 稿件管理包含
    - 新增稿件
    - 删除稿件
    - 编辑稿件
    - 稿件审核
- 评论管理包含
    - 新增评论
    - 删除评论
    - 评论审核
    - 稿件点赞
- 站内信管理包含
    - 发送站内信
    - 站内信查看
    - 回复站内信

## 项目建模

### 用例建模

#### 分析系统参与者

该新闻发布系统主要参与者有：

- Anonymous 未注册匿名用户，允许基本的首页查看，新闻查看
- User 已注册用户
- Editor 作者，可以发布稿件。
- Reviewer 审稿人，审核作品并允许发布。
- DatabaseManager 数据库管理员，允许查看维护数据。
- Adamin 超管，拥有所有权限

根据参与者以及各模块功能的分析，整理出以下用例表

| Actor     | 用例名称             | 功能描述               | 输入内容                                          | 输出内容                     |
|-----------|----------------------|------------------------|---------------------------------------------------|------------------------------|
| Anonymous | Register             | 注册                   | 用户注册所需信息(邮箱,用户名,密码)                | 注册结果                     |
| Anonymous | ViewCarousel         | 查看轮播图             |                                                   | 轮播新闻列表                 |
| Anonymous | ViewHotNews          | 查看热门文章           |                                                   | 热门新闻列表                 |
| Anonymous | ViewSectinoList      | 查看板块列表           |                                                   | 所有板块列表                 |
| Anonymous | ViewNewsList         | 搜索新闻               | 查询约束条件(板块ID,发布时间,发布用户,标题关键字) | 新闻列表                     |
| User      | CancelAccount        | 注销账户               | 账号密码                                          | 注销结果                     |
| User      | Login                | 登录                   | 账号密码                                          | 登录结果                     |
| User      | ChangeUserInfo       | 资料修改               | 用户要修改的资料                                  | 修改结果                     |
| User      | SearchArticle        | 查找文章               | 关键词                                            | 相关文章列表                 |
| User      | ViewArticle          | 阅读文章               | 文章ID                                            | 文章详情页                   |
| User      | CommentArticle       | 评论文章               | 评论ID,评论内容                                   | 是否评论成功                 |
| User      | CollectArticle       | 收藏文章               | 文章ID                                            | 是否收藏成功                 |
| User      | LikeArticle          | 点赞文章               | 文章ID                                            | 是否点赞成功                 |
| Editor    | EditorPublishArtical | 发布文章               | 文章信息(标题,目标板块,内容)                      | 发布结果                     |
| Editor    | EditorModifyArtical  | 修改文章               | 文章ID, 修改内容(标题,目标板块,内容)              | 操作结果                     |
| Editor    | DeleteArtical        | 删除文章               | 文章ID                                            | 操作结果                     |
| Editor    | ShowMyArticalList    | 查看自己已发布文章列表 | 用户ID                                            | 该用户已发布文章             |
| Reviewer  | AllowArtical         | 通过文章               | 文章ID                                            | 审批状态                     |
| Reviewer  | ProhibitArtical      | 禁止文章               | 文章ID                                            | 审批状态                     |
| Reviewer  | ListWorkflow         | 查看未审列表           | 板块ID                                            | 待审批文章列表               |
| Manager   | AddSection           | 增加新闻板块           | 新闻板块名称, 板块介绍                            | 是否增加成功                 |
| Manager   | DeleteSection        | 删除新闻板块           | 新闻板块ID                                        | 是否删除成功                 |
| Manager   | ModifySection        | 修改新闻板块           | 新闻板块名称, 板块介绍                            | 是否修改成功                 |
| Manager   | ViewSection          | 查看新闻板块           | 新闻板块ID                                        | 板块标题，介绍，板块文章列表 |
| Manager   | SectionAddArtical    | 添加新闻到板块         | 新闻ID，板块ID                                    | 操作结果                     |
| Manager   | SectionDeleteArtical | 从板块删除新闻         | 新闻ID，板块ID                                    | 操作结果                     |
| Manager   | SearchUser           | 查看用户列表           | 搜索条件                                          | 用户列表                     |
| Admin     | SetManager           | 增加新管理员           | 用户ID                                            | 操作结果                     |
| Admin     | UnsetManager         | 减少管理员             | 用户ID                                            | 操作结果                     |
| Admin     | ListManager          | 查看其他管理员         | 用户ID                                            | 操作结果                     |
