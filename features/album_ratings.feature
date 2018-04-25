Feature: View an album's rating
As a user
I want to view the ratings on an album
So that I know if I'm likely to enjoy it

Scenario: User sees the ratings for an album
When I go to the album page for "Run The Jewels 3"
Then I should see a rating of "5" from "@briankrebs"
And I should see a rating of "2" from "@achillean"
