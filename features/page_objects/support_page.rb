class SupportPage < SitePrism::Page
  set_url "/"

  def navigate_to(game)
    shorthand_name = game_shorthand(game)
    page.find("a[href='/support/en/games/#{shorthand_name}']").click
  end

  def game_shorthand(game)
    case game
    when "Hearthstone"
      "hearthstone"
    when "World of Warcraft"
      "wow"
    when "Heroes of the Storm"
      "heroes"
    else
      raise "Game over man: game not found!"
    end
  end
end