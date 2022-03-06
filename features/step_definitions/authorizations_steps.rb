Given(/^User has opened the login page$/) do
  @screens.auth_screen.go_to_login_page
end

And(/^User has input their email and password$/) do
  @screens.auth_screen.input_email_and_password
end

And(/^User clicks on the login button$/) do
  @screens.auth_screen.click_login_button
end

Then(/^User sees the my profile button$/) do
  @screens.main_screen.my_profile_button_exists
end

Then(/^User opens my profile page$/) do
  @screens.main_screen.open_my_profile_page
end

And(/^The logged in users name is ([^"]*)$/) do |name|
  @screens.my_profile_screen.check_if_name_visible(name)
end

And(/^The logged in users email is ([^"]*)$/) do |email|
  @screens.my_profile_screen.check_if_email_visible(email)
end

And(/^User inputs (.*) into the email field$/) do |email|
  @screens.auth_screen.input_email(email)
end

And(/^User inputs (.*) into the password field$/) do |password|
  @screens.auth_screen.input_password(password)
end

And(/^User goes to sign up page$/) do
  @screens.auth_screen.go_to_sign_up_page
end

And(/^User inputs new user credentials$/) do
  @screens.auth_screen.input_random_new_user_credentials
end

And(/^User clicks sign up$/) do
  @screens.auth_screen.click_sign_up_button
end

And(/^User skips the coupon code screen$/) do
  @screens.auth_screen.skip_coupon_verification
end

And(/^User skips the phone verification$/) do
  @screens.auth_screen.skip_phone_verification
end

Then(/^The random email used for registration is shown$/) do
  email_used = @screens.auth_screen.get_random_email_used
  @screens.my_profile_screen.check_if_email_visible(email_used)
end