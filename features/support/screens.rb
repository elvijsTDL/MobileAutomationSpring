class Screens

  def auth_screen
    @auth_screen ||= AuthorizationScreen.new
  end

  def main_screen
    @main_screen ||= MainScreen.new
  end

  def my_profile_screen
    @my_profile_screen ||= MyProfileScreen.new
  end

end