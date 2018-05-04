Then(/^I should see an album page header with "(.*)"$/) do |albumName|
    assert page.find('h1', text: albumName)
end

Then(/^I should see a table with "(.*)"$/) do |tableContents|
    assert page.all('li', text: tableContents) # Looks for all list items on the page -- Very Neat!
end

Then(/^I should see an average rating of "(.*)"$/) do |averageRating|
    list = Array.new 
    list = first('h3').all('i')
    puts list.size
    puts averageRating
    if list.size.equal?averageRating
        bool = True
    end
    assert bool = true
end