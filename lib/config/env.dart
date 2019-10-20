/*
 * @Author: 脑瘫码农
 * @Name: 于浩岩
 * @Email: asahichyan33@gmail.com
 * @Company: didi
 * @Date: 2019-10-20 14:35:50
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-10-20 17:37:57
 * @Description: 使用单例模式的配置文件，
 */
import 'package:path_provider/path_provider.dart';

class Env {
  static String DIR_PATH;// 项目路径
  static bool IS_DEVELOPMENT = true; // 是否为开发环境
  factory Env() => _getInstance();
  static Env get instance => _getInstance();
  static Env _instance;// 单例
  Env._internal() {
    // 初始化
    this._getDirPath();
  }

  static Env _getInstance() {
    if (_instance == null) {
      _instance = new Env._internal();
    }
    return _instance;
  }

  _getDirPath() async {
    DIR_PATH = (await getApplicationDocumentsDirectory()).path;
  }
}
