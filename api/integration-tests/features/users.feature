Feature: User List

  Scenario: List all users
    Given The users API is up
     When I call the user api to list the users
     Then I expect to see the users
