class ProductScreen

  def initialize
    @wishlist_buttons = Elements.new(:id,"wish_list")
    @product_names = Elements.new(:id,"textView6")
    @go_back_button = Elements.new(:id,"listing_back")
    @empty_wishlist_image = Elements.new(:id, "image_empty")
    @empty_wishlist_message = Elements.new(:id,"content_empty")
    @wishlist_delete_button = Elements.new(:id,"delete_btn")
    @wishlist_container = Elements.new(:id,"wishlist_rview")
  end

  def open_chosen_category(category)
    @chosen_category = Elements.new(:xpath ,"//*[@resource-id=\"com.view9.foreveryng:id/sub_cat_child\"]
          /*[child::*[@resource-id=\"com.view9.foreveryng:id/listTitle\"][contains(@text, \"#{category}\")]]" )
    @chosen_category.click
  end

  def add_first_item_to_wishlist
    all_product_names = @product_names.get_multiple_elements
    @wishlisted_product_name = all_product_names.first.text
    all_wishlist_buttons = @wishlist_buttons.get_multiple_elements
    all_wishlist_buttons.first.click
  end

  def click_back_button
    @go_back_button.click
  end

  def refresh_wishlist
    middleX = @wishlist_container.get_element.size.width / 2
    middleY = @wishlist_container.get_element.size.height / 2
    endY = @wishlist_container.get_element.size.height
    $driver.swipe(start_x: middleX , start_y: middleY , end_x: middleX , end_y: endY , duration: 2000)
  end

  def verify_added_item
    expected = @wishlisted_product_name
    wishlisted_product_names = @product_names.get_multiple_elements
    actual = wishlisted_product_names.first.text
    raise "Wishlisted product name was not correct: Expected: #{expected}  Actual: #{actual}" unless expected === actual
  end

  def delete_wishlist_item
    @wishlist_delete_button.click
  end

  def verify_empty_wishlist
    @empty_wishlist_image.get_element
    actual = @empty_wishlist_message.get_text
    expected = "There is nothing in your wishlist. Let's add some items"
    raise "Wishlist message not correct: Expected: #{expected}  Actual: #{actual}" unless expected === actual
  end

end