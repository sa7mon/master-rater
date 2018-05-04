When(/^I go to the artist page for "(.*)"/) do |artist|
 visit "/albums/#{artist}"
end

Then(/^I should see an artist page header with "(.*)"$/) do |albumName|
    assert page.all('h1', text: albumName)
end

Then(/^I should see an about section containing "(.*)"$/) do |aboutContents|
    assert page.all('p', text: aboutContents)
end



