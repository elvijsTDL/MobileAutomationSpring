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

  def get_text(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Selector method: #{@type} , Selector: #{@value} "
    }
    $driver.wait(wait_opts) do
      $driver.find_element(@type,@value).text
    end
  end

  def get_multiple_elements(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Selector method: #{@type} , Selector: #{@value} "
    }
    $driver.wait(wait_opts) do
      elements = $driver.find_elements(@type,@value)
      return elements if elements.length > 0
      raise "Elements were not found. Selector method: #{@type} , Selector: #{@value} "
    end
  end

end