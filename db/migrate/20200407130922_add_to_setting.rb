class AddToSetting < ActiveRecord::Migration[5.2]
  def change
    add_column :settings, :platform, :integer
    add_column :settings, :region, :integer
    add_column :settings, :account, :string
    add_column :settings, :password, :string
    add_column :settings, :platform_id, :string
    add_column :settings, :wait_time, :integer
    add_column :settings, :shielding, :integer
    add_column :settings, :password_setting, :text
    add_column :settings, :load_type, :integer
    add_column :settings, :auxiliary_platform, :integer
    add_column :settings, :auxiliary_time, :integer
    add_column :settings, :vpn_setting, :integer
    add_column :settings, :collection_type, :integer
    add_column :settings, :function, :text
    add_column :settings, :tool_type, :integer
    add_column :settings, :facebook_account, :string
    add_column :settings, :facebook_password, :string
    add_column :settings, :facebook_setting, :integer
    add_column :settings, :custom_function, :text
    add_column :settings, :input_setting, :text
    add_column :settings, :nickname_type, :integer
    add_column :settings, :custom_nickname, :integer
    add_column :settings, :friend_accouts, :text
    add_column :settings, :add_type, :text
    add_column :settings, :friend_count, :integer
  end
end
