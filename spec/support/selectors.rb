Capybara.add_selector(:link) do
  xpath {|edit| ".//a/#{edit}"}
end
