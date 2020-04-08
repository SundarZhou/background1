class Setting < ApplicationRecord

  serialize :password_setting, Array
  serialize :function, Array
  serialize :custom_function, Array
  serialize :input_setting, Array
  serialize :add_type, Array


  enum platform: ["奥迪","万码","手动 ","卡农","注册机","服务器1","服务器2","大帝", "天真1", "天真2", "天真3", "天真4", "天真5", "天真6", "天真7", "天真8", "天真9"]
  enum region: ["国内", "国外"]

  enum shielding: ["拉黑手机号", "释放手机号", "不拉黑不释放"]

  PASSWORD_SETTINGS = ["随机3-5", "随机4-4", "手动", "防止盗号"]

  enum load_type: ["手动滑块", "自动滑块"]

  enum auxiliary_platform: ["ym", "fz", "ml", "cj", "sd", "tfz"]

  enum vpn_setting: ["开飞机", "切vpn", "断vpn再取号"]

  enum collection_type: ["收藏", "朋友圈", "不发朋友圈不收藏"]

  FUNCTIONS = ["添加好友", "手机号昵称", "强制备份完成", "昵称加随机符号", "二段vpn", "Z2二次登录", "短信成功后等待点击", "发送两次短信", "手动发短信", "二次输入", "辅助多次", "不备份", "封号备份", "自定义朋友圈" , "发短信去掉区号" , "手动点z2卡", "秒封等10秒", "收短信返回", "发短信返回", "安全验证点一次", "重取验证码时间：", "辅助返回：" , "进入扫一扫" , "频繁发码手动", "辅助切换国外", "访问切换ip", "Facebook", "关闭结束P", "收发不断P"]

  enum tool_type: ["v2rayNG", "Shadowsocks"]

  enum facebook_setting: ["Facebook服务器1", "Facebook服务器2"]

  CUSTOM_FUNCTIONS =  ["(定制功能4)", "(改密码)", "(关vpn)", "(加00)", "(定制功能5)"]

  INPUT_SETTINGS = ["自动昵称", "自动手机号", "自动密码"]

  enum nickname_type: ["汉字", "数字", "字母", "自定义"]

  ADD_TYPES = ["固定添加", "添加完成后发送消息"]
end
