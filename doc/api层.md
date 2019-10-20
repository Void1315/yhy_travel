<!--
 * @Author: 脑瘫码农
 * @Name: 于浩岩
 * @Email: asahichyan33@gmail.com
 * @Company: didi
 * @Date: 2019-10-20 18:18:46
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-10-20 18:18:46
 * @Description: 文件描述
 -->
# API层的设计
网络接口获取库采用`Dio`包，`lib/api`文件夹下含有三个文件，分别是`apis.dart`、`fetcha.dart`、`urls.dart`。
## apis.dart文件
这个文件是暴露出所有API的文件。
## fetch.dart文件
此文件继承`Dio`，并采用单例设计，使用工厂方法，请放心调用，我确保程序环境中只存在一个`Fetch`实例。
## urls.dart文件
此文件放置所有url链接，提供url地址。新增地址后别忘记在`apis.dart`文件中创建调用方法。