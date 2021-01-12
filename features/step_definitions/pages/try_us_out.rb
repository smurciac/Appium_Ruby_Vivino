require_relative '../utils/Utils'

module Try_Us_Out

  class << self

    $try_us_out_page_elements = {
      "Continue Withou Account" => "continue_without_account",
      "Create Free Account" => "create_free_account",
      "Description" => "description",
      "Image" => "image",
      "Indicator" => "indicator",
      "Log In" => "txtIHaveAnAccount",
      "Next" => "next",
      "Try Us Out" => "txtTryUsOut"
    }

    def i_tap_on_element(element)
      Utils.wait_for_element($try_us_out_page_elements[element])
      Utils.click_element($try_us_out_page_elements[element])
    end

    def i_see_the_element(element)
      Utils.wait_for_element($try_us_out_page_elements[element])
    end
  end
end