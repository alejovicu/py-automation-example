from behave import given, when, then, step

@given('The users API is up')
def is_user_api_up(context):
    pass

@when('I call the user api to list the users')
def call_users_api(context):
    pass

@then('I expect to see the users')
def validate_users_list(context):
    pass
