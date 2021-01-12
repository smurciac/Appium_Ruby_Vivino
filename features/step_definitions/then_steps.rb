require_relative 'pages/get_started'
require_relative 'pages/home'
require_relative 'pages/i_have_an_account'
require_relative 'pages/try_us_out'

$which_page_then = {
  "Get Started" => Get_Started,
  "Home" => Home,
  "I Have an Account" => I_Have_An_Account,
  "See How It Work" => See_How_It_Work,
  "Try Us Out" => Try_Us_Out
}

Then('I see the {string} on {string} page') do |element, page|
  $which_page_then[page].i_see_the_element(element)
end