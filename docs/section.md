# 板块模块

用例

| Actor     | 用例名称             | 功能描述       | 输入内容               | 输出内容                     |
|-----------|----------------------|----------------|------------------------|------------------------------|
| Manager   | AddSection           | 增加新闻板块   | 新闻板块名称, 板块介绍 | 是否增加成功                 |
| Manager   | DeleteSection        | 删除新闻板块   | 新闻板块ID             | 是否删除成功                 |
| Manager   | ModifySection        | 修改新闻板块   | 新闻板块名称, 板块介绍 | 是否修改成功                 |
| Manager   | ViewSection          | 查看新闻板块   | 新闻板块ID             | 板块标题，介绍，板块文章列表 |
| Manager   | SectionAddArtical    | 添加新闻到板块 | 新闻ID，板块ID         | 操作结果                     |
| Manager   | SectionDeleteArtical | 从板块删除新闻 | 新闻ID，板块ID         | 操作结果                     |
| Anonymous | ViewSectinoList      | 查看板块列表   |                        | 所有板块列表                 |
