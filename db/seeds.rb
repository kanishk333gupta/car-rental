User.destroy_all
User.create!(
  [{
    :id => 1 ,
    :email => "guy@abc.com", 
    :password => "111111"
  },
  {
    :id => 2 ,
    :email => "admin@abc.com", 
    :password => "111111",
    :admin=>1
  },
  {
    :id => 3 ,
    :email => "guy1@abc.com", 
    :password => "111111"
  },
  {
    :id => 4 ,
    :email => "admin2@abc.com", 
    :password => "111111",
    :admin => 1
  },
  {
    :id => 5 ,
    :email => "guy2@abc.com", 
    :password => "111111"
  }]
)

Car.destroy_all
Car.create!(
  [{
    "id": 1,
    "name": "BMW",
    "color": "Indigo",
    "model": "X5",
    "rental": 129,
    "status": 1,
    "picture": "http://dummyimage.com/119x100.png/cc0000/ffffff"
  }, {
    "id": 2,
    "name": "GMC",
    "color": "Mauv",
    "model": "Envoy XL",
    "rental": 111,
    "status": 1,
    "picture": "http://dummyimage.com/143x100.png/ff4444/ffffff"
  }, {
    "id": 3,
    "name": "Chevrolet",
    "color": "Mauv",
    "model": "Suburban 1500",
    "rental": 249,
    "status": 1,
    "picture": "http://dummyimage.com/147x100.png/cc0000/ffffff"
  }, {
    "id": 4,
    "name": "BMW",
    "color": "Turquoise",
    "model": "X6 M",
    "rental": 328,
    "status": 1,
    "picture": "http://dummyimage.com/249x100.png/5fa2dd/ffffff"
  }, {
    "id": 5,
    "name": "Hyundai",
    "color": "Violet",
    "model": "Elantra",
    "rental": 341,
    "status": 1,
    "picture": "http://dummyimage.com/192x100.png/dddddd/000000"
  }, {
    "id": 6,
    "name": "Ford",
    "color": "Khaki",
    "model": "E-Series",
    "rental": 426,
    "status": 1,
    "picture": "http://dummyimage.com/105x100.png/dddddd/000000"
  }, {
    "id": 7,
    "name": "Honda",
    "color": "Mauv",
    "model": "Civic",
    "rental": 307,
    "status": 0,
    "picture": "http://dummyimage.com/161x100.png/cc0000/ffffff"
  }, {
    "id": 8,
    "name": "Porsche",
    "color": "Red",
    "model": "Carrera GT",
    "rental": 116,
    "status": 0,
    "picture": "http://dummyimage.com/119x100.png/dddddd/000000"
  }, {
    "id": 9,
    "name": "Acura",
    "color": "Orange",
    "model": "TL",
    "rental": 136,
    "status": 0,
    "picture": "http://dummyimage.com/124x100.png/ff4444/ffffff"
  }])

Booking.destroy_all
Booking.create!(
    [{
      "id": 1,
      "book_date": "2021-07-04 17:48:06",
      "return_date": "2022-01-19 13:16:29",
      "due_amt": 339,
      "service_amt": 88,
      "user_id": 1,
      "car_id": 1
    }, {
      "id": 2,
      "book_date": "2021-07-04 06:48:35",
      "return_date": "2021-11-19 13:35:36",
      "due_amt": 553,
      "service_amt": 27,
      "user_id": 1,
      "car_id": 2
    }, {
      "id": 3,
      "book_date": "2021-07-04 00:19:28",
      "return_date": "2022-01-07 16:18:54",
      "due_amt": 544,
      "service_amt": 17,
      "user_id": 1,
      "car_id": 3
    }, {
      "id": 4,
      "book_date": "2021-07-04 08:19:09",
      "return_date": "2022-02-01 20:25:27",
      "due_amt": 779,
      "service_amt": 82,
      "user_id": 3,
      "car_id": 4
    }, {
      "id": 5,
      "book_date": "2021-07-04 11:36:22",
      "return_date": "2022-02-12 08:32:09",
      "due_amt": 872,
      "service_amt": 29,
      "user_id": 3,
      "car_id": 5
    }]
    )

p "Updated!!!"