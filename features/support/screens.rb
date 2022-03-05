class Screens

  def auth_screen
    @auth_screen ||= AuthorizationScreen.new
  end

  def main_screen
    @main_screen ||= MainScreen.new
  end

end