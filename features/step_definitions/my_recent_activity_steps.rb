Given(/^I am on the support page$/) do
  @app.support_page.load
  expect(@app.support_page).to have_content "What can we help you with?"
end

When(/^I navigate to My Recent Activity for "([^"]*)"$/) do |game|
  @app.support_page.navigate_to(game)
  expect(page).to have_content "Support" && game
end

Then(/^I am presented with the default My Recent Activity panel$/) do
  expect(@app.game_support_page.recent_activity_panel.visible?).to eq true
  expect(@app.game_support_page.check_activity_panel_text).to eq true
  expect(@app.game_support_page.login_button.visible?).to eq true
  expect(@app.game_support_page.cant_log_in_link.visible?).to eq true
  expect(@app.game_support_page.not_a_blizz_customer_link.visible?).to eq true
end
