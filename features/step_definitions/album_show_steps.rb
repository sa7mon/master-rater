
Then(/^I should see a header with "(.*)"$/) do |albumName|
    assert page.find('h1', text: albumName)
end



