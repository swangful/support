class GameSupportPage < SitePrism::Page
  set_url "/games/{game}"

  element :recent_activity_panel, "#recent-activity-content"
  element :div_activity_content, "#activity-content"
  element :login_button, 'a', text: "Log In"
  element :cant_log_in_link, 'a', text: "Can't log in?"
  element :not_a_blizz_customer_link, 'a', text: "Not a Blizzard customer?"

  def check_activity_panel_text
    div_activity_content.text.include?("To view recent account activity please log in to your Blizzard account")
  end
end
