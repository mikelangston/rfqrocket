module ApplicationHelper
  BOOTSTRAP_FLASH = {
    success: 'alert-primary',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
  }.freeze

  def flash_messages
    flash.each do |msg_type, message|
      alert_class = BOOTSTRAP_FLASH[msg_type.to_sym]
      concat(
        content_tag(:div, message, class: "m-4 alert #{alert_class} fade-out", role: 'alert') do # rubocop:disable LineLength
          concat content_tag(:button, 'x', class: 'close', data: { dismiss: 'alert' }) # rubocop:disable LineLength
          concat message
        end
      )
    end
    nil
  end
end
