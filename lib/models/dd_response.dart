class DDAuthResponse {
  String errStr;
  int errCode; //  用户换取access_token的code，仅在ErrCode为0时有效
  String code;
  String state; //第三方程序发送时用来标识其请求的唯一性的标志，由第三方程序调用sendReq时传入

  DDAuthResponse.fromMap(Map map)
      : errStr = map["errStr"],
        errCode = map["errCode"],
        code = map["code"],
        state = map["state"];
}

class ErrCode {
  ErrCode._();

  static const int ERR_OK = 0;
  static const int ERR_COMM = -1;
  static const int ERR_USER_CANCEL = -2;
  static const int ERR_SENT_FAILED = -3;
  static const int ERR_AUTH_DENIED = -4;
  static const int ERR_UNSUPPORT = -5;
}
