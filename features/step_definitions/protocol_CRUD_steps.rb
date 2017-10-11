# Test to check that the form for performing CRUD operations exists
Then /^(?:|I )should see the "([^"]*)" form$/ do |text|
    page.should have_content(text)
end

# Test for filling out a form
When /^(?:|I )fill out the form with the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    fill_in name, :with => value
  end
end

# Creating a new protocol
When /^A protocol called "([^"]*)" exists$/ do |text|
  click_link('New Protocol')
  fill_in 'protocol_name', :with => text
  click_button('Submit')
  click_button('Protocol')
end

When /^(?:|I )select "([^"]*)" for "([^"]*)"$/ do |field, text|
  find(:xpath, '//tr[td[contains(.,"' + text + '")]]/td/a', :text => field).click
end

# Test that the edit form loads properly with fields filled in
Then /^(?:|I )should see the "([^"]*)" form filled in with "([^"]*)"$/ do |header, text|
    page.should have_content(header) && have_field('protocol_name', :with => text)
end