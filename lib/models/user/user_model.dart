/*
 * @Author: 脑瘫码农
 * @Name: 于浩岩
 * @Email: asahichyan33@gmail.com
 * @Company: didi
 * @Date: 2019-10-20 13:52:33
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-10-21 20:37:05
 * @Description: 文件描述
 */
import 'package:yhy_travel/models/base_model.dart';

/**
 * 用户的模型
 */
class UserModel extends Model{
  String userName; // 用户昵称
  String userId; // 用户id
  String userEmail; // 用户邮箱
  num userGender; // 用户性别 0 女 1 男
  String userPhone; // 用户手机号
  String userAvatar; // 用户头像

  UserModel(
      {this.userId,
      this.userEmail,
      this.userGender,
      this.userPhone,
      this.userAvatar,
      this.userName});

  UserModel.fromJson(Map<String, dynamic> json)
      : userName = json['name'],
        userPhone = json['phone'],
        userId = json['id'],
        userEmail = json['email'],
        userGender = json['gender'],
        userAvatar = json['avatar'];
  Map<String, dynamic> toJson() => {
        'name': userName,
        'email': userEmail,
        'id':userId,
        'gender':userGender,
        'avatar':userAvatar,
        'phone':userPhone
      };
}
