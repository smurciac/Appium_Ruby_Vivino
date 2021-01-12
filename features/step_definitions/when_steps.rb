require_relative 'pages/get_started'
require_relative 'pages/home'
require_relative 'pages/see_how_it_work'
require_relative 'pages/try_us_out'

$which_page_when = {
  "Get Started" => Get_Started,
  "Home" => Home,
  "See How It Work" => See_How_It_Work,
  "Try Us Out" => Try_Us_Out
}

When('I tap on {string} button on {string} page') do |element, page|
  $which_page_when[page].i_tap_on_element(element)
end