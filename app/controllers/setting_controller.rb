class SettingController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:get_setting]
  def new
  end


  def get_setting
    password_setting = get_arr(Setting::PASSWORD_SETTINGS, @setting.password_setting)
    function = get_arr(Setting::FUNCTIONS, @setting.function)
    custom_function = get_arr(Setting::CUSTOM_FUNCTIONS, @setting.custom_function)
    input_setting = get_arr(Setting::INPUT_SETTINGS, @setting.input_setting)
    add_type = get_arr(Setting::ADD_TYPES, @setting.add_type)
    render :json => {
                      platform: Setting.platforms[@setting.platform],
                      region: Setting.regions[@setting.region],
                      account: @setting.account,
                      password: @setting.password,
                      platform_id: @setting.platform_id,
                      wait_time: @setting.wait_time,
                      shielding: Setting.shieldings[@setting.shielding],
                      password_setting: password_setting,
                      load_type: Setting.load_types[@setting.load_type],
                      auxiliary_time: @setting.auxiliary_time,
                      vpn_setting: Setting.vpn_settings[@setting.vpn_setting],
                      collection_type: Setting.collection_types[@setting.collection_type],
                      function: function,
                      tool_type: Setting.tool_types[@setting.tool_type],
                      facebook_account: @setting.facebook_account,
                      auxiliary_time: @setting.auxiliary_time,
                      facebook_password: @setting.facebook_password,
                      facebook_setting: Setting.facebook_settings[@setting.facebook_setting],
                      custom_function: custom_function,
                      input_setting: input_setting,
                      nickname_type: Setting.nickname_types[@setting.nickname_type],
                      custom_nickname: @setting.custom_nickname,
                      friend_accouts: @setting.friend_accouts,
                      add_type: add_type,
                      friend_count: @setting.friend_count
                    }
  end

  private

  def get_arr(main_arr, actual_arr)
    actual_arr.select{|a| a.present?}.map{|a| main_arr.find_index a}
  end
end
