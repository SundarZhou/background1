namespace :run do
  desc "data"
  task :test => :environment do
    p Rails.env
  end
  desc "Setup system data"
  task :datas => :environment do
    puts "run platforms datas"
    platforms = ["奥迪","万码","手动","卡农","注册机","服务器1","服务器2","大帝"]
    (1..9).each do |i|
      platforms << "天真#{i}"
    end
    # Platform.import platforms.map{ |p| {name: p} }

    puts "run fuction datas"

    functions = ["安全验证返回", "滑块返回", "添加好友", "手机号昵称", "主界面交由用户", "强制备份完成" , "只点一次注册", "昵称加随机符号", "二段vpn", "Z2二次登录", "短信成功后等待点击", "发送两次短信", "手动发短信", "二次输入", "辅助多次", "不备份", "封号备份", "自定义朋友圈" , "发短信去掉区号" , "手动点z2卡", "秒封等10秒", "收短信返回", "发短信返回", "安全验证点一次", "重取验证码时间：", "辅助返回：" , "进入扫一扫" , "频繁发码手动", "辅助切换国外", "访问切换ip", "Facebook", "关闭结束P", "收发不断P"]

    # Fuction.import fuctions.map{ |f| {name: f} }

    puts "run custom function datas"

    custom_functions = ["(定制功能1)", "(定制功能2)", "冰封(定制功能3)", "(定制功能4)", "(改密码)", "(关vpn)", "(加00)", "(定制功能5)"]

    puts "done"
  end

end