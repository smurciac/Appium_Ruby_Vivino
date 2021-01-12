require_relative '../utils/Utils'

module Home

  class << self

    $home_page_elements = {
      "Description" => "desc_text",
      "Get Started" => "getstarted_layout",
      "See How It Works" => "seehowitwork",
      "Image" => "view_images",
      "I have an Account" => "txthaveaccount",
      "Try Us Out" => "txtTryUsOut"
    }

    def verify_app_was_launched
      Utils.wait_for_element($home_page_elements["Get Started"])
    end
    
    def i_tap_on_element(element)
      Utils.wait_for_element($home_page_elements[element])
      Utils.click_element($home_page_elements[element])
    end

    def i_see_the_element(element)
      Utils.wait_for_element($home_page_elements[element])
    end
  end
end