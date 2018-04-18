Feature: View the homepage
As a developer
I want our users to see recently rated albums and newly added albums on the home page
So that they have a chance to discover new music

Scenario: User sees albums on the home page
When I go to the homepage
Then I should see recently rated albums
And I should see recently added albums