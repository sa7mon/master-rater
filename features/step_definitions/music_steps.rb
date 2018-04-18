When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see recently rated albums$/) do
    assert page.has_content?("Recent Ratings")
end

Then(/^I should see recently added albums$/) do
    assert page.has_content?("Recent Albums")
end