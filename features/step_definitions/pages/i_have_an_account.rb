require_relative '../utils/Utils'

module I_Have_An_Account

  class << self

    $i_have_an_account_page_elements = {
      "Email" => "edtEmail",
      "Forgot Your Password?" => "txtForgotYourPassword",
      "Log in With Facebook" => "fbRegistration_Layout",
      "Log in With Google" => "googleRegistration_Layout",
      "Need a New Account?" => "txtNeedANewAccount",
      "Password" => "edtPassword"
    }

    def i_see_the_element(element)
      Utils.wait_for_element($i_have_an_account_page_elements[element])
    end
  end
end