module Selectors

  # link with text
  Capybara.add_selector(:link_with_href_value) do
    xpath {|href_value| "//a[@href=#{href_value}]" }
  end

end
