module Utils

  class << self

    def wait_for_element(element)
			wait_for { find_element(id: element) }
    end

    def click_element(element)
			find_element(id: element).click
    end
  end
end