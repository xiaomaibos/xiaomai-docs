# 后台接口API

后台接口分为三个功能模块：门户模块，用户模块，管理员模块

### 一、门户功能模块

#### 接口概览

| 接口名称     | 接口地址                                                     | 请求方式 |
| ------------ | ------------------------------------------------------------ | -------- |
| 查询城市列表 | /city                                                        | get      |
| 查询类别列表 | /category                                                    | get      |
| 查询演出列表 | /show?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage= | get      |
| 获取演出详情 | /show/{showId}                                               | get      |
| 查询票档列表 | /show/level?showId=                                          | get      |
| 账户登入     | /login                                                       | post     |
| 账户注册     | /register                                                    | post     |



#### 查询城市列表api

接口说明：

接口地址：https://www.xiaomai.ink/city

请求方式：get

接口请求参数：无

返回示例1：

```json
{
  "data": {
    "total": 3,
    "citys": [{
        "id": "2",
        "name": "上海",
        "code": "200000",
        "count": 23,
      },{
        "id": "1",
        "name": "北京",
        "code": "100000",
        "count": 12
      },{
        "id": "3",
        "name": "深圳",
        "code": "518000",
        "count": 2
      }
    ]
  },
  "success": true,
  "message": "请求成功"
}
```

返回示例2：

```json
{
  "data": null,
  "success": false,
  "message": "数据库繁忙"
}
```



#### 查询类别列表api

接口说明：

接口地址：https://www.xiaomai.ink/category

请求方式：get

接口请求参数：无

返回示例：

```json
{
  "data": {
    "total": 3,
    "citys": [{
        "id": "3",
        "name": "话剧歌剧",
        "count": 120
      },{
        "id": "1",
        "name": "音乐会",
        "count": 52
      },{
        "id": "2",
        "name": "曲苑杂谈",
        "count": 33
      }
    ]
  },
  "success": true,
  "message": "请求成功"
}
```



#### 查询演出列表api

接口说明：在首页页面按照类别和城市查询，在分类页面按照所选条件查询

接口地址：https://www.xiaomai.ink/show?keyword=&city=&category=&startTime=&endTime=&order=&pageSize=&currPage=

请求方式：get

接口请求参数

| 参数名称  | 参数位置 | 类型   | 描述       |
| --------- | -------- | ------ | ---------- |
| keyword   | param    | String | 检索关键字 |
| city      | param    | Int    | 城市编号   |
| category  | param    | Int    | 类别编号   |
| startTime | param    | String | 开始时间   |
| endTime   | param    | String | 结束时间   |
| order     | param    | Int    | 排序规则   |
| pageSize  | param    | Int    | 页面大小   |
| currPage  | param    | Int    | 当前页号   |

返回示例

```json
{
  "data": {
    "total":1
    "show_list":[{
    		"id": "12",
    		"title": "四月是你的谎言",
    		"low_price": "120",
    		"high_price": "480",
    		"start_time": "2021-05-15",
    		"end_time": "2021-07-20",
    		"category": "2",
    		"category_info": "音乐会",
    		"city": "3",
    		"city_info": "深圳",
    		"address": "深圳音乐厅",
    		"image_url": ""
	  	}]
  },
  "success": true,
  "message": "请求成功"
}
```



查询类别列表

### 二、用户功能模块

* 接口概览

获取个人信息get：/user/userInfo?userId=

获取个人信息get：/user/userInfo/{userId}

修改个人信息put：/user/userInfo

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

