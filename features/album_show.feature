Feature: View an album page
As a user
I want to view the details of the album
So that I know if I'm likely to enjoy it

Scenario: User visits Run The Jewels 3 album page
Given the database is seeded
When I go to the album page for "Run The Jewels 3"
Then I should see a header with "Run The Jewels 3"

