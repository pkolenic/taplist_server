include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email.upcase
  fill_in "Password", with: user.password
  click_button "Sign in"
end

def valid_signup
  fill_in "First name",   with: "Example"
  fill_in "Last name",    with: "User"
  fill_in "Phone number", with: "2085555555"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end

def partial_company
  fill_in "Name",         with: "Beer Company"
  fill_in "Address",      with: "Some Stree"
end

def valid_company
  fill_in "Name",             with: "Brew Company"
  fill_in "Address",          with: "123 Some Street"
  fill_in "City",             with: "Some City"
  fill_in "Zip",              with: "12345"
  fill_in "Company Email",    with: "company@example.com"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-success', text: message)
  end
end
