Feature: View an Artist page
As a user
I want to view the details of the artist
So that I know if I'm likely to enjoy it

Scenario: User visits Månegarm artist page
Given the database is seeded
When I go to the artist page for "15"
Then I should see an artist page header with "Månegarm"

Scenario: User visits Månegarm artist page
Given the database is seeded
When I go to the artist page for "15"
Then I should see an about section containing "Månegarm is a Swedish Viking/black metal band from Norrtälje. The band's name is derived from Mánagarmr, a wolf in Norse mythology."

Scenario: User visits Månegarm artist page
Given the database is seeded
When I go to the artist page for "15"
Then I should see a link to the album "Legions Of The North"
