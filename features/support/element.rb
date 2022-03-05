class Elements

  def initialize(type,value)
    @type = type
    @value = value
  end

  def get_element(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Selector method: #{@type} , Selector: #{@value} "
    }
    $driver.wait(wait_opts) do
      return $driver.find_element(@type,@value)
    end
  end

  def click(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Selector method: #{@type} , Selector: #{@value} "
    }
    $driver.wait(wait_opts) do
      $driver.find_element(@type,@value).click
    end
  end

  def type(text,timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Selector method: #{@type} , Selector: #{@value} "
    }
    $driver.wait(wait_opts) do
      $driver.find_element(@type,@value).send_keys(text)
      $driver.hide_keyboard
    end
  end

end