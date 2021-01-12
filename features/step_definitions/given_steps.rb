require_relative 'pages/home'

Given('I launch app') do
  Home.verify_app_was_launched
end