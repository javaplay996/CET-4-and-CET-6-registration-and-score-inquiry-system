<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
					,{
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"成绩管理",
                        "menuJump":"列表",
                        "tableName":"chengji"
                    }
                ],
                "menu":"学生管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师管理",
                        "menuJump":"列表",
                        "tableName":"laoshi"
                    }
                ],
                "menu":"老师管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"考试管理",
                        "menuJump":"列表",
                        "tableName":"kaoshi"
                    }
					,{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"考场管理",
                        "menuJump":"列表",
                        "tableName":"kaochang"
                    }
                ],
                "menu":"考试管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"系统公告管理",
                        "menuJump":"列表",
                        "tableName":"xitonggonggao"
                    }
                ],
                "menu":"系统公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	
	,{
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
					,{
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"成绩管理",
                        "menuJump":"列表",
                        "tableName":"chengji"
                    }
                ],
                "menu":"学生管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"考试管理",
                        "menuJump":"列表",
                        "tableName":"kaoshi"
                    }
					,{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"考场管理",
                        "menuJump":"列表",
                        "tableName":"kaochang"
                    }
                ],
                "menu":"考试管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"系统公告管理",
                        "menuJump":"列表",
                        "tableName":"xitonggonggao"
                    }
                ],
                "menu":"系统公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"老师",
        "tableName":"laoshi"
    }
	,{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"成绩管理",
                        "menuJump":"列表",
                        "tableName":"chengji"
                    }
                ],
                "menu":"成绩管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "审核"
                        ],
                        "menu":"考试管理",
                        "menuJump":"列表",
                        "tableName":"kaoshi"
                    }
					,{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"考场管理",
                        "menuJump":"列表",
                        "tableName":"kaochang"
                    }
                ],
                "menu":"考试管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"系统公告管理",
                        "menuJump":"列表",
                        "tableName":"xitonggonggao"
                    }
                ],
                "menu":"系统公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
];

var hasMessage = '';
