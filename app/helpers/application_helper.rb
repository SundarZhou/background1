module ApplicationHelper
  def full_title(page_title, base_title = '系统')
    if page_title.empty?
      base_title
    else
      "#{page_title} - #{base_title}"
    end
  end
  def notice_message
    alert_types = { notice: :success, alert: :danger }

    close_button_options = { class: "close", "data-dismiss" => "alert", "aria-hidden" => true }
    close_button = content_tag(:button, "×", close_button_options)

    alerts = flash.map do |type, message|
      alert_content = close_button + message

      alert_type = alert_types[type.to_sym] || type
      alert_class = "alert alert-#{alert_type} alert-dismissable"

      content_tag(:div, alert_content, class: alert_class)
    end

    alerts.join("\n").html_safe
  end
  def main_nav
    nav_html = %Q[
      <li class="#{'active' if controller_name == 'dashboard'}">#{link_to '脚本设置', root_path}</li>
      <li class="#{'active' if controller_name.in? ['accounts', 'abnormals']}">#{link_to '帐号列表', accounts_path}</li>
      <li class="#{'active' if controller_name == 'informations'}">#{link_to '导入数据', informations_path}</li>
    ]

    nav_html
  end

  def side_nav
    if controller_name.in? ['accounts', 'abnormals']
      nav_html = %Q[
        <li class="#{'active' if controller_name == 'accounts' && ( params[:is_normal].nil? && params[:is_export].nil?  ) }">#{link_to "正常帐号", accounts_path}</li>
        <li class="#{'active' if controller_name == 'accounts' && ( params[:is_normal].present? ||  params[:is_normal] == "false" )}">#{link_to "不正常帐号", accounts_path(is_normal: false)}</li>
        <li class="#{'active' if controller_name == 'accounts' && ( params[:is_export].present? ||  params[:is_export] == "true" )}">#{link_to "已导出帐号", accounts_path(is_export: true)}</li>
        <li class="#{'active' if controller_name == 'abnormals'}">#{link_to "验证码错误", abnormals_path}</li>
      ]
    elsif controller_name == 'informations'
      nav_html = %Q[
        <li class="#{'active' if controller_name == 'informations'}">#{link_to "导入数据", informations_path}</li>
      ]
    else controller_name == 'dashboard'
      nav_html = %Q[
        <li class="#{'active' if controller_name == 'dashboard'}">#{link_to "脚本设置", root_path}</li>
      ]
    end
    nav_html
  end
end
