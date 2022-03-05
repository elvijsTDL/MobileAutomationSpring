class AuthorizationScreen

  def initialize
    @go_to_login_page_button = Elements.new(:id, "go_to_login_btn")
    @email_field = Elements.new(:id,"login_email")
    @password_field = Elements.new(:id,"login_password")
    @login_button = Elements.new(:id,"login_btn")
  end

  def go_to_login_page
    @go_to_login_page_button.click
  end

  def input_email_and_password
    @email_field.type("tdltdl@gmail.com")
    @password_field.type("SecretPassword123")
  end

  def click_login_button
    @login_button.click
  end

end