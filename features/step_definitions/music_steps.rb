When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I go to the albums list page$/) do
  visit albums_path
end

Then(/^I should see recently rated albums$/) do
    assert page.has_content?("Recent Ratings")
end

Then(/^I should see recently added albums$/) do
    assert page.has_content?("Recent Albums")
end

Then(/^I should see all albums ascending$/) do
    albums = Album.joins(:artist, :genre).order('name ASC')
    
    albums.each do |album|
        assert page.has_link?(album)
    end
end




