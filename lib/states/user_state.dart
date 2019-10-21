import 'package:yhy_travel/models/user/user_model.dart';

class UserState {
  UserModel userModel;
  bool isLogin; // 登录状态
  String userDefaultAvatar; // 用户默认头像
  
  UserState({this.userModel, this.isLogin, this.userDefaultAvatar});
  /**
   * 初始化方法
   */
  UserState.init() {
    this.userModel = UserModel();
    this.isLogin = false;
    this.userDefaultAvatar =
        "https://s3.amazonaws.com/uifaces/faces/twitter/posterjob/128.jpg";
  }
}
