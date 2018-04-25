When(/^I go to the album page for "(.*)"$/) do |albumName|
    visit album_path(Album.where(:name => albumName).first.id)
    assert page.has_content?(albumName)
end

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

Then(/^I should see a rating of "(.*)" from "(.*)"$/) do |rating, rater|
   found = false
   
   rows = page.find_by_id('ratings-table').all('tr')
   
   rows.each do |row| 
        if row.has_text?(rating) and row.has_text?(rater)
            found = true
            break
        end
   end
   
   assert found = true
end
