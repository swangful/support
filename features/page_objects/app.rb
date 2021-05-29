module PageObjects
  class App
    def support_page
      SupportPage.new
    end

    def game_support_page
      GameSupportPage.new
    end
  end
end
