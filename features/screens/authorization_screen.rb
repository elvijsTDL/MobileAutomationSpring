class AuthorizationScreen

  def initialize
    @go_to_login_page_button = Elements.new(:id, "go_to_login_btn")
    @email_field = Elements.new(:id, "login_email")
    @password_field = Elements.new(:id, "login_password")
    @login_button = Elements.new(:id, "login_btn")
    @go_to_sign_up_button = Elements.new(:id, "sign_up_login")
    @sign_up_full_name_field = Elements.new(:id, "signup_name")
    @sign_up_email_field = Elements.new(:id, "signup_email")
    @sign_up_phone_number = Elements.new(:id, "signup_phone")
    @sign_up_password = Elements.new(:id, "signup_password")
    @sign_up_confirmation = Elements.new(:id, "signup_confirm_password")
    @sign_up_button = Elements.new(:id, "sign_up_btn")
    @skip_coupon_button = Elements.new(:id, "skip_btn")
    @skip_verification_button = Elements.new(:id, "skip_verification")
  end

  def go_to_sign_up_page
    @go_to_sign_up_button.click
  end

  def input_random_new_user_credentials
    @email = "lololo#{rand(1...999999)}@gmail.com"
    password = "Password"
    @sign_up_full_name_field.type("RandomName")
    @sign_up_email_field.type(@email)
    @sign_up_phone_number.type("977#{rand(1000000...9999999)}")
    @sign_up_password.type(password)
    @sign_up_confirmation.type(password)
  end

  def get_random_email_used
    @email
  end

  def click_sign_up_button
    @sign_up_button.click
  end

  def skip_coupon_verification
    @skip_coupon_button.click
  end

  def skip_phone_verification
    @skip_verification_button.click
  end

  def go_to_login_page
    @go_to_login_page_button.click
  end

  def input_email_and_password
    @email_field.type("tdltdl@gmail.com")
    @password_field.type("SecretPassword123")
  end

  def input_email(email)
    @email_field.type(email)
  end

  def input_password(password)
    @password_field.type(password)
  end

  def click_login_button
    @login_button.click
  end

end