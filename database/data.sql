insert into users
  ("userId", "firstName", "lastName", "password", "email")
  values
    ('1', 'Cade', 'Russell', 'asddd', 'cade@mail.com'),
    ('2', 'Plucky', 'Nguyen', 'nancy', 'plucky@mail.com');

insert into homes
  ("homeId", "userId", "type", "address", "city", "state", "zip", "price", "bedrooms", "bathrooms", "sqft", "yearBuilt", "description", "heating", "cooling")
  values
    ('1', '1', 'House', '1234 A St.', 'Costa Mesa', 'CA', '92626', '500000', '4', '3', '2500', '2004', 'Renovated home on a nice street', 'yes', 'yes'),
    ('2', '2', 'Condo', '5678 B St.', 'Costa Mesa', 'CA', '92626', '350000', '2', '2', '1400', '2010', 'Nice condo', 'yes', 'no');
