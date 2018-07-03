FactoryBot.define do
  factory :task do
    user_id "MyString"
    serial_no "MyString"
    account "MyString"
    assign_to "MyString"
    comments "MyText"
  end

  factory :protocol do
    name "test"
    tp1 0.25
    tp2 0.5
    tp3 1
    tp4 2
    tp5 5
    tp6 25
    tp7 50
    tp8 100
    tp9 1000
    tp10 1500
    tp11 2000
  end

  factory :user do
    email 'test@gmail.com'
    first_name 'Foo'
    last_name 'Bar'
    title 'technician'
    password 'Password'
  end
end