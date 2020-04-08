class DashboardController < ApplicationController

  def index

  end

  def edit
  end

  def update
    permit_params = params.require(:setting).permit(:title, :description, :domain_name,  :platform, :region, :account, :password, :platform_id, :wait_time, :shielding,  :load_type, :auxiliary_platform, :auxiliary_time, :vpn_setting, :collection_type,  :tool_type, :facebook_account, :facebook_password, :facebook_setting :nickname_type, :custom_nickname, :friend_accouts,  :friend_count, password_setting: [], function: [], custom_function: [], input_setting: [], add_type: [])

    if @setting.update(permit_params)
      redirect_to root_path, notice: "修改成功！"
    else
      render 'edit'
    end
  end
end
