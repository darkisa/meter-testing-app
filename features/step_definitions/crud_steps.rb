# Test to check that the form for entering a new protocol shows up
Then /^(?:|I )should see the "([^"]*)" form$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

# Test for filling out the new protocol form
When /^(?:|I )fill out the form with the following:$/ do |fields|
  fields.rows_hash.each do |name, value|
    fill_in name, :with => value
  end
end