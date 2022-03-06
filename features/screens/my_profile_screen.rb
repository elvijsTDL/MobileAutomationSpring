class MyProfileScreen

  def initialize
    # Try not to use these automaticly generated ones
    # Its here only for demonstration purposes
    @users_name = Elements.new(:id, "textView78")
    # //android.view.ViewGroup/android.widget.TextView[contains(@text , "YoloBolo")]
  end

  def check_if_email_visible(email)
    # Not the best practice, because you can't get the text value out of the element
    # Because the test case will fail if it cannot find the specific element
    @email = Elements.new(:xpath, "//android.view.ViewGroup/android.widget.TextView[contains(@text , \"#{email}\")]")
    @email.get_element
  end

  def check_if_name_visible(name)
    #Better way of handling getting texts
    # Will throw an error indicating what was the actual value of the element
    actual = @users_name.get_text
    raise "Name is not correct , expected: #{name} , actual: #{actual}" unless actual === name
  end

end