FactoryBot.define do
  factory :meter_to_protocol_relationship do
    
  end
  factory :meter do
    serial  '111111'
    size    2
    type    'Compound'
    brand   'Neptune'
    model   'NA' 
  end

  factory :protocol do
    name "test"
    tp1  0.25
    tp2  0.5
    tp3  1
    tp4  2
    tp5  5
    tp6  25
    tp7  50
    tp8  100
    tp9  1000
    tp10 1500
    tp11 2000
  end

  factory :user do
    id 1
    email       'test@gmail.com'
    first_name  'Foo'
    last_name   'Bar'
    title       'technician'
    password    'Password'
  end

  factory :task do
    assigned_by  2
    assigned_to  1
    serial_no    '11111'
    account      '22222'
    completed    false
  end
end