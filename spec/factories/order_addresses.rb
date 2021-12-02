FactoryBot.define do
  factory :order_address do
    token             { 'tok_abcdefghijk00000000000000000' }
    postal_code       { '000-0000' }
    prefecture_id     { 2 }
    city              { 'Katsushika-ku' }
    street_address    { 'Kameari 5-36-1' }
    optional_address  { 'Kameari Kouenmae hashutsujo' }
    phone_number      { '00011112222' }
  end
end
