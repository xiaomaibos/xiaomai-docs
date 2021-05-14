# 后台接口API

后台依据权限划分功能模块：门户模块，用户模块，系统模块

### 一、门户功能模块

#### 接口概览

| 接口名称     | 接口地址                                                     | 请求方式 |
| ------------ | ------------------------------------------------------------ | -------- |
| 查询城市列表 | /city/getCityList                                            | get      |
| 查询类别列表 | /category/getCategoryList                                    | get      |
| 查询节目列表 | /program/findProgramWithFilters?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage= | get      |
| 获取节目详情 | /program/getProgram?programId=                               | get      |
| 获取场次详情 | /show/getShow?showId=                                        | get      |
| 账户登入     | /user/doLogin                                                | post     |
| 账户注册     | /user/doRegister                                             | post     |

#### 1. 查询城市列表api

接口说明：前端访问首页和分类页面时需要获取城市列表，后端对城市列表排序处理

接口地址：http://xiaomai.flyme.ink/city/getCityList

请求方式：get

接口请求参数：无

返回示例：

```json
[
    {
        "cityId": 1,
        "name": "上海",
        "code": null,
        "count": 782,
        "programs": null
    },
    {
        "cityId": 2,
        "name": "北京",
        "code": null,
        "count": 715,
        "programs": null
    },
    {
        "cityId": 3,
        "name": "杭州",
        "code": null,
        "count": 251,
        "programs": null
    }
]
```



#### 2. 查询类别列表api

接口说明：前端访问分类页面时需获取类别列表，后端对类别列表排序处理

接口地址：http://xiaomai.flyme.ink/category/getCategoryList

请求方式：get

接口请求参数：无

返回示例：

```json
[
    {
        "cid": 1,
        "name": "音乐会",
        "count": 1170,
        "programs": null
    },
    {
        "cid": 2,
        "name": "话剧歌剧",
        "count": 1058,
        "programs": null
    },
    {
        "cid": 3,
        "name": "儿童亲子",
        "count": 971,
        "programs": null
    }
]
```



#### 3. 查询节目列表api

接口说明：在首页页面按照类别和城市查询，在分类页面按照所选条件查询

接口地址：http://xiaomai.flyme.ink/program/findProgramWithFilters?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage=

请求方式：get

接口请求参数

| 参数名称  | 参数位置 | 类型   | 描述                 |
| --------- | -------- | ------ | -------------------- |
| keyword   | query    | String | 检索关键字           |
| city      | query    | Int    | 城市id               |
| category  | query    | Int    | 类别id               |
| startTime | query    | String | 开始时间(yyyy-MM-dd) |
| endTime   | query    | String | 结束时间(yyyy-MM-dd) |
| order     | query    | Int    | 排序规则             |
| pageSize  | query    | Int    | 页面大小             |
| currPage  | query    | Int    | 当前页号             |

返回示例

```json
{
    "total": 2,
    "list": [
        {
            "pid": 26,
            "title": "【苏州】《久石让 · 宫崎骏》音乐会",
            "highPrice": "80",
            "lowPrice": "60",
            "startTime": "2021-05-11T05:35:00.000+00:00",
            "endTime": "2021-05-13T05:35:00.000+00:00",
            "showStartTime": "2021-05-11 13:35:00",
            "showEndTime": "2021-05-13 13:35:00",
            "address": "苏州市歌舞剧院小剧场",
            "explain": "不支持退票...",
            "detail": "演出介绍...",
            "notice": "需要提前入场...",
            "image": "damFile/program/641313072155.jpg",
            "cityId": 7,
            "city": {
                "cityId": 7,
                "name": "苏州",
                "code": null,
                "count": 182,
                "programs": null
            },
            "categoryId": 8,
            "category": {
                "cid": 8,
                "name": "体育",
                "count": 28,
                "programs": null
            },
            "shows": null
        },
        {
            "pid": 27,
            "title": "【苏州】菊次郎的夏天—久石让轻音乐之旅钢琴音乐会",
            "highPrice": "360",
            "lowPrice": "88",
            "startTime": "2021-05-12T08:13:00.000+00:00",
            "endTime": "2021-05-14T08:13:00.000+00:00",
            "showStartTime": "2021-05-12 16:13:00",
            "showEndTime": "2021-05-14 16:13:00",
            "address": "苏州昆剧院",
            "explain": "不支持退票...",
            "detail": "演出介绍...",
            "notice": "需要提前入场...",
            "image": "damFile/program/642571390891.jpg",
            "cityId": 7,
            "city": {
                "cityId": 7,
                "name": "苏州",
                "code": null,
                "count": 182,
                "programs": null
            },
            "categoryId": 8,
            "category": {
                "cid": 8,
                "name": "体育",
                "count": 28,
                "programs": null
            },
            "shows": null
        }
    ],
    "pageNum": 1,
    "pageSize": 10,
    "size": 4,
    "startRow": 1,
    "endRow": 4,
    "pages": 1,
    "prePage": 0,
    "nextPage": 0,
    "isFirstPage": true,
    "isLastPage": true,
    "hasPreviousPage": false,
    "hasNextPage": false,
    "navigatePages": 8,
    "navigatepageNums": [
        1
    ],
    "navigateFirstPage": 1,
    "navigateLastPage": 1
}
```



#### 4. 获取节目详情api

接口说明：查询节目详细信息，包括节目的所有场次信息

接口地址：http://xiaomai.flyme.ink/program/getProgram?programId=

请求方式：get

接口请求参数

| 参数名称  | 参数位置 | 类型 | 说明   |
| --------- | -------- | ---- | ------ |
| programId | path     | Int  | 节目id |

返回示例：

```json
{
    "address": "济南奥体中心体育馆",
    "category": {
        "cid": 7,
        "count": 64,
        "name": "舞蹈芭蕾"
    },
    "categoryId": 7,
    "city": {
        "cityId": 23,
        "count": 53,
        "name": "济南"
    },
    "cityId": 23,
    "detail": "演出介绍...",
    "endTime": 1620556800000,
    "explain": "不支持退票...",
    "highPrice": "580",
    "image": "damFile/program/644431227376.jpg",
    "lowPrice": "198",
    "notice": "需要提前入场...",
    "pid": 1,
    "showEndTime": "2021-05-09 18:40:00",
    "showStartTime": "2021-05-07 18:40:00",
    "shows": [
        {
            "name": "两日通票2021年5月22日-23日15:30",
            "programId": 1,
            "showId": 2,
            "time": 1621668600000
        },
        {
            "name": "2021-05-22 周六 15:30",
            "programId": 1,
            "showId": 1,
            "time": 1621668600000
        },
        {
            "name": "2021-05-23 周日 15:30",
            "programId": 1,
            "showId": 3,
            "time": 1621755000000
        }
    ],
    "startTime": 1620384000000,
    "title": "【济南】Sony music “贴地飞行”室内音乐节—济南站（看台票）"
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

#### 5. 获取场次详情api

接口说明：

接口地址：http://xiaomai.flyme.ink/show/getShow?showId=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| showId   | query    | Int  | 场次id |

返回示例

```json
{
    "levels": [
        {
            "leftCount": 80,
            "levelId": 282,
            "limitCount": 2,
            "name": "二层看台全价368元",
            "price": "368",
            "showId": 67,
            "totalCount": 80
        },
        {
            "leftCount": 80,
            "levelId": 283,
            "limitCount": 2,
            "name": "四层预售票198元（原价268元）",
            "price": "198",
            "showId": 67,
            "totalCount": 80
        },
        {
            "leftCount": 80,
            "levelId": 284,
            "limitCount": 2,
            "name": "四层看台全价268元",
            "price": "268",
            "showId": 67,
            "totalCount": 80
        },
        {
            "leftCount": 80,
            "levelId": 281,
            "limitCount": 2,
            "name": "二层预售票298元（原价368元）",
            "price": "298",
            "showId": 67,
            "totalCount": 80
        }
    ],
    "name": "2021-05-22 周六 15:30",
    "programId": 34,
    "showId": 67,
    "time": 1621668600000
}
```



#### 6. 账户登入api

接口说明：前端提交登入表单，后端进行身份认证

接口地址：http://xiaomai.flyme.ink/user/doLogin

请求方式：post

接口请求参数

| 参数名称 | 参数位置 | 类型   | 说明     |
| -------- | -------- | ------ | -------- |
| username | body     | String | 账户名   |
| password | body     | String | 账户密码 |

返回示例1：

```json
{
  "success": true,
  "message": "登入成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "账号不存在",
  "code": 203
}
```

返回码：

| code | messge         | success |
| ---- | -------------- | ------- |
| 0    | 登入成功       | true    |
| 201  | 账号或密码为空  | false   |
| 204  | 账号或密码错误 | false   |
| 301  | 非法参数       | false   |
| 999  | 系统异常       | false   |

#### 7. 账户注册api

接口说明：前端提交表单，由后端进行账户注册

接口地址：http://xiaomai.flyme.ink/user/doRegister

请求方式：post

接口请求参数

| 参数名称  | 参数位置 | 类型   | 说明                     |
| --------- | -------- | ------ | ------------------------ |
| username  | body     | String | 账户名                   |
| password  | body     | String | 账户密码                 |
| nickname  | body     | String | 昵称                     |
| gender    | body     | Int    | 性别(0:男,1:女)          |
| birthday  | body     | String | 生日(yyyy-MM-dd)         |
| identity  | body     | String | 身份证                   |
| imageUrl  | body     | String | 头像                     |
| privilege | body     | Int    | 权限(0:normal, 1:system) |

返回示例1：

```json
{
  "success": true,
  "message": "注册成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "账号已存在",
  "code": 211
}
```

返回码：

| code | messge     | success |
| ---- | ---------- | ------- |
| 0    | 注册成功   | true    |
| 201  | 账号或密码为空   | false   |
| 211  | 账号已存在 | false   |
| 301  | 非法参数   | false   |
| 999  | 系统异常   | false   |

### 二、用户功能模块

#### 接口概览

| 接口名称     | 接口地址              | 请求方式 |
| ------------ | --------------------- | -------- |
| 获取个人信息 | /user/getUser?userId= | get      |
| 修改个人信息 | /user/editUser        | put      |

#### 1. 获取个人信息api

接口说明：获取个人详细信息，由后端限制访问权限

接口地址：http://xiaomai.flyme.ink/user/getUser?userId=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| userId   | query    | Int  | 用户id |

返回示例1：

```json
{
  "data": {
    "id": 1,
    "username": "666xmz",
    "password": "123456xmz",
    "nickname": "小麦子",
    "gender": 0,
    "birthday": "1997-05-14",
    "identity": "360502199705140033",
    "image_url": "https://perico.damai.cn/userheadphotos/707710/141542175.jpg?r=0.5944997079559737",
    "privilege": 0
  },
  "success": true,
  "message": "请求成功",
  "code": 0
}
```

返回示例2：

```json
{
  "data": null,
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

#### 2. 修改个人信息api

接口说明：前段提交表单，后端限制访问权限，并修改个人信息

接口地址：http://xiaomai.flyme.ink/user/editUser

请求方式：put

接口请求参数

| 参数名称  | 参数位置 | 类型   | 说明                     |
| --------- | -------- | ------ | ------------------------ |
| id        | body     | Int    | 用户id                   |
| password  | body     | String | 密码                     |
| nickname  | body     | String | 昵称                     |
| gender    | body     | Int    | 性别(0:男,1:女)          |
| birthday  | body     | String | 生日                     |
| identity  | body     | String | 身份证                   |
| imageUrl  | body     | String | 头像                     |
| privilege | body     | Int    | 权限(0:normal, 1:system) |

返回示例1：

```json
{
  "success": true,
  "message": "提交成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 提交成功 | true    |
| 201  | 密码为空 | false   |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

--

查询收货地址列表get：/user/address?userId=&addressId=

获取收货地址get：/user/address/{addressId}

删除收货地址delete：/user/address/{addressId}

增加收货地址post：/user/address

修改收货地址put：/user/address

--

查询观影人列表get：/user/attender?userId=&attenderId=

获取观影人get：/user/attender/{attenderId}

删除观影人delete：/user/attender/{attenderId}

增加观影人post：/user/attender

修改观影人put：/user/attender

查询订单列表

获取订单

增加订单

修改订单状态

### 三、管理员功能模块

---

#### 接口概览

| 接口名称 | 接口地址                | 请求方式 |
| -------- | ----------------------- | -------- |
| 增加节目 | /admin/addProgram       | post     |
| 增加场次 | /admin/addShow          | post     |
| 增加票档 | /admin/addLevel         | post     |
| 爬取节目 | /admin/damaiCrawl?code= | get      |

#### 1. 增加节目api

接口说明：前段提交表单，后端限制访问权限

接口地址：http://xiaomai.flyme.ink/admin/addProgram

请求方式：post

接口请求参数

| 参数名称   | 参数位置 | 类型   | 说明           |
| ---------- | -------- | ------ | -------------- |
| title      | body     | String | 标题           |
| lowPrice   | body     | Int    | 最低价         |
| highPrice  | body     | Int    | 最高价         |
| startTime  | body     | String | 最早时间       |
| endTime    | body     | String | 最晚时间       |
| address    | body     | String | 地址           |
| explain    | body     | String | 说明           |
| detail     | body     | String | 详情           |
| notice     | body     | String | 须知           |
| imageUrl   | body     | String | 节目图片       |
| cityId     | body     | Int    | 节目从属的城市 |
| categoryId | body     | Int    | 节目从属的类别 |

返回示例1：

```json
{
  "success": true,
  "message": "提交成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 提交成功 | true    |
| 231  | 标题为空 | false   |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

#### 2. 增加场次api

接口说明：前段提交表单，后端限制访问权限

接口地址：http://xiaomai.flyme.ink/admin/addShow

请求方式：post

接口请求参数

| 参数名称  | 参数位置 | 类型   | 说明                |
| --------- | -------- | ------ | ------------------- |
| name      | body     | String | 场次名              |
| time      | body     | String | 时间(1621668600000) |
| programId | body     | Int    | 场次从属的节目      |

返回示例1：

```json
{
  "success": true,
  "message": "提交成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 提交成功 | true    |
| 231  | 标题为空 | false   |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

#### 3. 增加票档api

接口说明：前段提交表单，后端限制访问权限

接口地址：http://xiaomai.flyme.ink/admin/addLevel

请求方式：post

接口请求参数

| 参数名称   | 参数位置 | 类型   | 说明           |
| ---------- | -------- | ------ | -------------- |
| name       | body     | String | 票档名         |
| price      | body     | Int    | 价格           |
| totalCount | body     | Int    | 该票档的总票数 |
| leftCount  | body     | Int    | 该票档的票剩余 |
| limitCount | body     | Int    | 购票限制       |
| seat       | body     | String | 选座情况       |
| showId     | body     | Int    | 票档从属的场次 |

返回示例1：

```json
{
  "success": true,
  "message": "提交成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 提交成功 | true    |
| 231  | 标题为空 | false   |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |



#### 4. 爬取节目api

接口说明：前段输入大麦网节目编号，后端完成节目爬取

接口地址：http://xiaomai.flyme.ink/admin/damaiCrawl?code=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型   | 说明           |
| -------- | -------- | ------ | -------------- |
| code     | query    | String | 大麦网节目编号 |

返回示例1：

```json
{
  "success": true,
  "message": "爬取成功",
  "code": 0
}
```

返回示例2：

```json
{
  "success": false,
  "message": "权限不足",
  "code": 300
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 爬取成功 | true    |
| 250  | 爬取失败 | false   |
| 300  | 权限不足 | false   |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |