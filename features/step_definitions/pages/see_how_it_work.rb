require_relative '../utils/Utils'

module See_How_It_Work

  class << self

    $see_how_it_work_page_elements = {
      "Continue With Email" => "continue_with_email",
      "Continue With Facebook" => "continue_with_facebook",
      "Continue With Google" => "continue_with_google",
      "Description" => "description",
      "Image" => "image",
      "Indicator" => "indicator",
      "Log In" => "txtIHaveAnAccount",
      "Next" => "next",
      "Try Us Out" => "txtTryUsOut"
    }

    def i_tap_on_element(element)
      Utils.wait_for_element($see_how_it_work_page_elements[element])
      Utils.click_element($see_how_it_work_page_elements[element])
    end

    def i_see_the_element(element)
      Utils.wait_for_element($see_how_it_work_page_elements[element])
    end
  end
end