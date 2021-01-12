require_relative '../utils/Utils'

module Get_Started

  class << self

    $get_started_page_elements = {
      "Email" => "edtEmail",
      "Password" => "edtPassword",
      "Sign Up With Facebook" => "signupwithfacebook_layout",
      "Sign Up With Google" => "signupwithgoogle_layout"
    }

    def i_see_the_element(element)
      Utils.wait_for_element($get_started_page_elements[element])
    end
  end
end