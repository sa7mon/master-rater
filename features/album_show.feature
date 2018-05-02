Feature: View an album page
As a user
I want to view the details of the album
So that I know if I'm likely to enjoy it

Scenario: User visits Run The Jewels 3 album page
Given the database is seeded
When I go to the album page for "Run The Jewels 3"
Then I should see a header with "Run The Jewels 3"

Scenario: User visits Run The Jewels 3 album page
Given the database is seeded
When I go to the album page for "Run The Jewels 3"
Then I should see a table with "Artist Name: Run the Jewels"
And I should see a table with "Album Name: Run The Jewels 3"
And I should see a table with "Duration: 00:51:00"
And I should see a table with "Release Date: 2016-12-25"
And I should see a table with "Label: Independent"
And I should see a table with "Genre Name: Rap"



Scenario: User visits Run The Jewels 3 album page
Given the database is seeded
When I go to the album page for "Run The Jewels 3"
Then I should see an average rating of "3"
