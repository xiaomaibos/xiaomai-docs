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

接口地址：http://xiaomai.flyme.ink/api/city/getCityList

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

接口地址：http://xiaomai.flyme.ink/api/category/getCategoryList

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

接口地址：http://xiaomai.flyme.ink/api/program/findProgramWithFilters?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage=

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

接口地址：http://xiaomai.flyme.ink/api/program/getProgram?programId=

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

接口地址：http://xiaomai.flyme.ink/api/show/getShow?showId=

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

接口地址：http://xiaomai.flyme.ink/api/user/doLogin

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

接口地址：http://xiaomai.flyme.ink/api/user/doRegister

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

| 接口名称     | 接口地址                   | 请求方式 |
| ------------ | -------------------------- | -------- |
| 获取个人信息 | /user/getUser?userId=      | get      |
| 修改个人信息 | /user/editUser             | put      |
| 增加收货地址 | /user/addAddress           | post     |
| 删除收货地址 | /user/deleteAddress        | put      |
| 增加观影人   | /user/addAttender          | post     |
| 删除观影人   | /user/deleteAttender       | put      |
| 确认订单     | /user/confirmOrder         | post     |
| 支付订单     | /user/payOrder             | put      |
| 查询订单列表 | /user/getOrderList?userId= | get      |

#### 1. 获取用户详情api

接口说明：获取个人详细信息，包括地址列表，联系人列表

接口地址：http://xiaomai.flyme.ink/api/user/getUser?userId=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| userId   | query    | Int  | 用户id |

返回示例1：

```json
{
  "code": 0,
  "data": {
    "addresses": [
      {
        "addressId": 2,
        "detail": "上海普陀",
        "isDelete": 0,
        "name": "钟小浩2",
        "phone": "1579083386",
        "userId": 8
      }
    ],
    "attenders": [
      {
        "id": 1,
        "identityNum": "360502199810030022",
        "identityType": "身份证",
        "isDelete": 0,
        "name": "观影人1",
        "userId": 8
      },
      {
        "id": 2,
        "identityNum": "360502199810030022",
        "identityType": "身份证",
        "isDelete": 0,
        "name": "观影人2",
        "userId": 8
      }
    ],
    "gender": 0,
    "password": "123456ecnu",
    "privilege": 0,
    "uid": 8,
    "username": "zzzz76"
  },
  "message": "操作成功",
  "success": true
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

接口地址：http://xiaomai.flyme.ink/api/user/editUser

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



#### 3. 增加收货地址api

接口地址：http://xiaomai.flyme.ink/api/user/addAddress

请求方式：post

接口请求参数

| 参数名称 | 参数位置 | 类型   | 说明           |
| -------- | -------- | ------ | -------------- |
| name     | body     | String | 收件人         |
| phone    | body     | String | 电话           |
| detail   | body     | String | 地址详细       |
| userId   | body     | Int    | 地址从属的用户 |

返回示例1：

```json
{
  "code": 0,
  "data": {
    "addressId": 2,
    "detail": "上海普陀",
    "isDelete": 0,
    "name": "钟小浩2",
    "phone": "1579083386",
    "userId": 8
  },
  "message": "操作成功",
  "success": true
}
```

返回示例2：

```json
{
  "code": 200,
  "message": "操作失败",
  "success": false
}
```



#### 4. 删除收货地址api

接口地址：http://xiaomai.flyme.ink/api/user/deleteAddress

请求方式：put

接口请求参数

| 参数名称  | 参数位置 | 类型 | 说明   |
| --------- | -------- | ---- | ------ |
| addressId | body     | Int  | 地址Id |

返回示例1：

```json
{
  "code": 0,
  "message": "删除成功",
  "success": true
}
```

返回示例2：

```json
{
  "code": 200,
  "message": "操作失败",
  "success": false
}
```



#### 5. 增加观影人api

接口地址：http://xiaomai.flyme.ink/api/user/addAttender

请求方式：post

接口请求参数

| 参数名称     | 参数位置 | 类型   | 说明           |
| ------------ | -------- | ------ | -------------- |
| name         | body     | String | 观影人         |
| identityType | body     | String | 证件类型       |
| identityNum  | body     | String | 证件号码       |
| userId       | body     | Int    | 证件从属的用户 |

返回示例1：

```json
{
  "code": 0,
  "data": {
    "id": 1,
    "identityNum": "360502199810030022",
    "identityType": "身份证",
    "isDelete": 0,
    "name": "观影人1",
    "userId": 8
  },
  "message": "操作成功",
  "success": true
}
```

返回示例2：

```json
{
  "code": 200,
  "message": "操作失败",
  "success": false
}
```



#### 6. 删除观影人api

接口地址：http://xiaomai.flyme.ink/api/user/deleteAttender

请求方式：put

接口请求参数

| 参数名称   | 参数位置 | 类型 | 说明     |
| ---------- | -------- | ---- | -------- |
| attenderId | body     | Int  | 观影人Id |

返回示例1：

```json
{
  "code": 0,
  "message": "删除成功",
  "success": true
}
```

返回示例2：

```json
{
  "code": 200,
  "message": "操作失败",
  "success": false
}
```



#### 7. 确认订单api

接口地址：http://xiaomai.flyme.ink/api/user/confirmOrder

请求方式：post

接口请求参数

| 参数名称    | 参数位置 | 类型   | 说明              |
| ----------- | -------- | ------ | ----------------- |
| userId      | body     | Int    | 用户Id            |
| linkman     | body     | String | 联系人            |
| linknum     | body     | String | 联系电话          |
| addressId   | body     | Int    | 收货地址Id        |
| attenderIds | body     | String | 观影人Id列表: 1,2 |
| levelId     | body     | Int    | 票档Id            |
| count       | body     | Int    | 数量              |

返回示例：

```json
{
  "code": 0,
  "data": {
    "address": "{\"addressId\":2,\"detail\":\"上海普陀\",\"isDelete\":0,\"name\":\"钟小浩2\",\"phone\":\"1579083386\",\"userId\":8}",
    "attender": "[{\"id\":1,\"identityNum\":\"360502199810030022\",\"identityType\":\"身份证\",\"isDelete\":0,\"name\":\"观影人1\",\"userId\":8}]",
    "code": "uC7dXrofb0VtTKljIo",
    "createTime": 1621385198700,
    "linkNum": "15079086666",
    "linkman": "zhong",
    "orderId": 4,
    "showId": 1,
    "status": 0,
    "statusInfo": "待付款",
    "totalCount": 2,
    "totalPrice": "138",
    "userId": 8
  },
  "message": "操作成功",
  "success": true
}
```



#### 8. 支付订单api

接口地址：http://xiaomai.flyme.ink/api/user/payOrder

请求方式：put

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| orderId  | body     | Int  | 订单Id |

返回示例：

```json
{
  "code": 0,
  "data": {
    "address": "{\"addressId\":2,\"detail\":\"上海普陀\",\"isDelete\":0,\"name\":\"钟小浩2\",\"phone\":\"1579083386\",\"userId\":8}",
    "attender": "[{\"id\":1,\"identityNum\":\"360502199810030022\",\"identityType\":\"身份证\",\"isDelete\":0,\"name\":\"观影人1\",\"userId\":8}]",
    "code": "v6sYHb4Kkc4wxdI0uA",
    "createTime": 1621384983000,
    "linkNum": "15079086666",
    "linkman": "zhong",
    "orderId": 3,
    "show": {
      "name": "2021.02.09-2021.05.31 10:00-22:00（21:30停止入场）",
      "program": {
        "address": "湖滨银泰in77(D区负二楼)",
        "categoryId": 3,
        "cityId": 3,
        "detail": "演出介绍...",
        "endTime": 1621046100000,
        "explain": "不支持退票...",
        "highPrice": "69",
        "image": "damFile/program/637879137617.jpg",
        "lowPrice": "29",
        "notice": "需要提前入场...",
        "pid": 1,
        "startTime": 1620873300000,
        "title": "【杭州】星空恋爱解压馆（湖滨银泰in77旗舰店）"
      },
      "programId": 1,
      "showId": 1,
      "time": 1612836000000
    },
    "showId": 1,
    "status": 1,
    "statusInfo": "交易成功",
    "totalCount": 2,
    "totalPrice": "138",
    "userId": 8
  },
  "message": "操作成功",
  "success": true
}
```





#### 9. 查询订单列表api

接口地址：http://xiaomai.flyme.ink/api/user/getOrderList?userId=

请求方式：get

接口请求参数

| 参数名称 | 参数位置 | 类型 | 说明   |
| -------- | -------- | ---- | ------ |
| userId   | query    | Int  | 用户Id |

返回示例：

```json
{
  "code": 0,
  "data": [
    {
      "address": "null",
      "attender": "[{\"id\":1,\"identityNum\":\"360502199810030022\",\"identityType\":\"身份证\",\"isDelete\":0,\"name\":\"观影人1\",\"userId\":8}]",
      "code": "gd0skLMWiunr91lKEy",
      "createTime": 1621384921000,
      "linkNum": "15079086666",
      "linkman": "zhong",
      "orderId": 2,
      "show": {
        "name": "2021.02.09-2021.05.31 10:00-22:00（21:30停止入场）",
        "program": {
          "address": "湖滨银泰in77(D区负二楼)",
          "categoryId": 3,
          "cityId": 3,
          "detail": "演出介绍...",
          "endTime": 1621046100000,
          "explain": "不支持退票...",
          "highPrice": "69",
          "image": "damFile/program/637879137617.jpg",
          "lowPrice": "29",
          "notice": "需要提前入场...",
          "pid": 1,
          "startTime": 1620873300000,
          "title": "【杭州】星空恋爱解压馆（湖滨银泰in77旗舰店）"
        },
        "programId": 1,
        "showId": 1,
        "time": 1612836000000
      },
      "showId": 1,
      "status": 0,
      "statusInfo": "待付款",
      "totalCount": 2,
      "totalPrice": "138",
      "userId": 8
    },
    {
      "address": "{\"addressId\":2,\"detail\":\"上海普陀\",\"isDelete\":0,\"name\":\"钟小浩2\",\"phone\":\"1579083386\",\"userId\":8}",
      "attender": "[{\"id\":1,\"identityNum\":\"360502199810030022\",\"identityType\":\"身份证\",\"isDelete\":0,\"name\":\"观影人1\",\"userId\":8}]",
      "code": "v6sYHb4Kkc4wxdI0uA",
      "createTime": 1621384983000,
      "linkNum": "15079086666",
      "linkman": "zhong",
      "orderId": 3,
      "show": {
        "name": "2021.02.09-2021.05.31 10:00-22:00（21:30停止入场）",
        "program": {
          "address": "湖滨银泰in77(D区负二楼)",
          "categoryId": 3,
          "cityId": 3,
          "detail": "演出介绍...",
          "endTime": 1621046100000,
          "explain": "不支持退票...",
          "highPrice": "69",
          "image": "damFile/program/637879137617.jpg",
          "lowPrice": "29",
          "notice": "需要提前入场...",
          "pid": 1,
          "startTime": 1620873300000,
          "title": "【杭州】星空恋爱解压馆（湖滨银泰in77旗舰店）"
        },
        "programId": 1,
        "showId": 1,
        "time": 1612836000000
      },
      "showId": 1,
      "status": 0,
      "statusInfo": "待付款",
      "totalCount": 2,
      "totalPrice": "138",
      "userId": 8
    }
  ],
  "message": "操作成功",
  "success": true
}
```



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

接口地址：http://xiaomai.flyme.ink/api/admin/addProgram

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

接口地址：http://xiaomai.flyme.ink/api/admin/addShow

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

接口地址：http://xiaomai.flyme.ink/api/admin/addLevel

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

接口地址：http://xiaomai.flyme.ink/api/admin/damaiCrawl?code=

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