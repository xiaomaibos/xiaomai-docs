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
| 查询票档列表 | /level/getShowLevel?showId=                                  | get      |
| 账户登入     | /user/doLogin                                                | post     |
| 账户注册     | /user/doRegister                                             | post     |

#### 1. 查询城市列表api

接口说明：前端访问首页和分类页面时需要获取城市列表，后端对城市列表排序处理

接口地址：http://xiaomai.flyme.ink/city/getCityList

请求方式：get

接口请求参数：无

返回示例1：

```json
{
  "data": {
    "total": 3,
    "cities": [
      {
        "id": "2",
        "name": "上海",
        "code": "200000",
        "count": 23
      },
      {
        "id": "1",
        "name": "北京",
        "code": "100000",
        "count": 12
      },
      {
        "id": "3",
        "name": "深圳",
        "code": "518000",
        "count": 2
      }
    ]
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
  "message": "系统异常",
  "code": 999
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 999  | 系统异常 | false   |

#### 2. 查询类别列表api

接口说明：前端访问分类页面时需获取类别列表，后端对类别列表排序处理

接口地址：http://xiaomai.flyme.ink/category/getCategoryList

请求方式：get

接口请求参数：无

返回示例：

```json
{
  "data": {
    "total": 3,
    "categories": [
      {
        "id": "3",
        "name": "话剧歌剧",
        "count": 120
      },
      {
        "id": "1",
        "name": "音乐会",
        "count": 52
      },
      {
        "id": "2",
        "name": "曲苑杂谈",
        "count": 33
      }
    ]
  },
  "success": true,
  "message": "请求成功",
  "code": 0
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 999  | 系统异常 | false   |

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
  "data": {
    "total": 2,
    "programs": [
      {
        "id": 10,
        "title": "【上海】四月是你的谎言",
        "low_price": "160",
        "high_price": "280",
        "start_time": "2021-07-04",
        "end_time": "2021-07-05",
        "address": "上海大剧院",
        "image_url": "https://img.alicdn.com/bao/uploaded/i4/2251059038/O1CN01vIK7Is2GdSGxF0CmU_!!0-item_pic.jpg_q60.jpg_.webp",
        "city": {
          "id": 2,
          "name": "上海",
          "code": "200000",
          "count": 23
        },
        "category": {
          "id": 1,
          "name": "音乐会",
          "count": 52
        }
      },
      {
        "id": 12,
        "title": "【深圳】四月是你的谎言",
        "low_price": "120",
        "high_price": "340",
        "start_time": "2021-05-14",
        "end_time": "2021-05-24",
        "address": "深圳音乐厅",
        "image_url": "https://img.alicdn.com/bao/uploaded/i4/2251059038/O1CN01vIK7Is2GdSGxF0CmU_!!0-item_pic.jpg_q60.jpg_.webp",
        "city": {
          "id": 3,
          "name": "深圳",
          "code": "518000",
          "count": 2
        },
        "category": {
          "id": 1,
          "name": "音乐会",
          "count": 52
        }
      }
    ]
  }
  "success": true,
  "message": "请求成功",
  "code": 0
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

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
  "data": {
    "id": 10,
    "title": "【上海】四月是你的谎言",
    "low_price": "160",
    "high_price": "280",
    "start_time": "2021-07-04",
    "end_time": "2021-07-05",
    "address": "上海大剧院",
    "explain": "不支持退票...",
    "detail": "演出介绍...",
    "notice": "需要提前入场...",
    "image_url": "https://img.alicdn.com/bao/uploaded/i4/2251059038/O1CN01vIK7Is2GdSGxF0CmU_!!0-item_pic.jpg_q60.jpg_.webp",
    "city": {
      "id": 2,
      "name": "上海",
      "code": "200000",
      "count": 23
    },
    "category": {
      "id": 1,
      "name": "音乐会",
      "count": 52
    },
    "shows": [
      {
        "id": 1,
        "name": "2021-07-04 14:00",
        "time": 1619889458483
      },
      {
        "id": 2,
        "name": "2021-07-05 14:00",
        "time": 1627089458483
      }
    ]
  },
  "success": true,
  "message": "请求成功",
  "code": 0
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

#### 5. 查询票档列表api

接口说明：

接口地址：http://xiaomai.flyme.ink/level?showId=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| showId   | query    | Int  | 场次id |

返回示例

```json
{
  "data": {
    "total": 3,
    "levels": [
      {
        "id": "111",
        "name": "c档(160.0)",
        "price": 160.0,
        "total_count": 20,
        "left_count": 17,
        "limit_count": 6,
        "seat": "10011000000000000000"
      },
      {
        "id": "112",
        "name": "b档(210.0)",
        "price": 210.0,
        "total_count": 20,
        "left_count": 17,
        "limit_count": 6,
        "seat": "10011000000000000000"
      },
      {
        "id": "115",
        "name": "a档(280.0)",
        "price": 280.0,
        "total_count": 20,
        "left_count": 17,
        "limit_count": 6,
        "seat": "10010000100000000000"
      }
    ]
  },
  "success": true,
  "message": "请求成功",
  "code": 0
}
```

返回码：

| code | messge   | success |
| ---- | -------- | ------- |
| 0    | 请求成功 | true    |
| 301  | 非法参数 | false   |
| 999  | 系统异常 | false   |

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

| 接口名称                            | 接口地址                                                     | 请求方式 |
| ----------------------------------- | ------------------------------------------------------------ | -------- |
| 获取个人信息                        | /user/getUser?userId=                                        | get      |
| 修改个人信息                        | /user/editUser                                               | put      |
| [查询类别列表](#2. 查询类别列表api) | /category/getCategoryList                                    | get      |
| [查询节目列表](#3. 查询节目列表api) | /program/findProgramWithFilters?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage= | get      |
| [获取节目详情](#4. 获取节目详情api) | /program/getProgram?programId=                               | get      |
| [查询票档列表](#5. 查询票档列表api) | /level?showId=                                               | get      |
| [账户登入](#6. 账户登入api)         | /user/doLogin                                                | post     |
| [账户注册](#7. 账户注册api)         | /user/doRegister                                             | post     |

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