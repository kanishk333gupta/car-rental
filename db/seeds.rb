=begin
User.destroy_all
=end
=begin
User.create!(
  [{
    "id": 1,
    "name": "Glenda Casale",
    "password": "6PB2TkvMhC7",
    "email": "gcasale0@usnews.com",
    "charges": 0
  }, {
    "id": 2,
    "name": "Darrin Sodeau",
    "password": "O5lS8C2uxgkC",
    "email": "dsodeau1@chron.com",
    "charges": 0
  }, {
    "id": 3,
    "name": "Dorothea Dybald",
    "password": "B44oakJ4bj",
    "email": "ddybald2@webmd.com",
    "charges": 0
  }, {
    "id": 4,
    "name": "Stanton Eglese",
    "password": "NycMjH0b",
    "email": "seglese3@studiopress.com",
    "charges": 0
  }, {
    "id": 5,
    "name": "Jefferson Chiechio",
    "password": "zXYXqVQyOl",
    "email": "jchiechio4@digg.com",
    "charges": 0
  }, {
    "id": 6,
    "name": "Jany Kenefick",
    "password": "n2C3bWHfg",
    "email": "jkenefick5@icio.us",
    "charges": 0
  }, {
    "id": 7,
    "name": "Claybourne Shoubridge",
    "password": "x2SA3c3h6jqY",
    "email": "cshoubridge6@artisteer.com",
    "charges": 0
  }, {
    "id": 8,
    "name": "Cassandry Gillings",
    "password": "5iqvtgZTiM",
    "email": "cgillings7@spiegel.de",
    "charges": 0
  }])


=begin
Booking.create!(
  [{
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
      "car_id": 1
    }, {
      "id": 3,
      "book_date": "2021-07-04 00:19:28",
      "return_date": "2022-01-07 16:18:54",
      "due_amt": 544,
      "service_amt": 17,
      "user_id": 1,
      "car_id": 1
    }, {
      "id": 4,
      "book_date": "2021-07-04 08:19:09",
      "return_date": "2022-02-01 20:25:27",
      "due_amt": 779,
      "service_amt": 82,
      "user_id": 1,
      "car_id": 1
    }, {
      "id": 5,
      "book_date": "2021-07-04 11:36:22",
      "return_date": "2022-02-12 08:32:09",
      "due_amt": 872,
      "service_amt": 29,
      "user_id": 1,
      "car_id": 1
    }]
    )
=end


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
    "status": 1,
    "picture": "http://dummyimage.com/161x100.png/cc0000/ffffff"
  }, {
    "id": 8,
    "name": "Porsche",
    "color": "Red",
    "model": "Carrera GT",
    "rental": 116,
    "status": 1,
    "picture": "http://dummyimage.com/119x100.png/dddddd/000000"
  }, {
    "id": 9,
    "name": "Acura",
    "color": "Orange",
    "model": "TL",
    "rental": 136,
    "status": 1,
    "picture": "http://dummyimage.com/124x100.png/ff4444/ffffff"
  }])

=begin
Admin.destroy_all
Admin.create!(
  [{
    "id": 1,
    "name": "admin",
    "password": "123",
    "email": "admin@abc.com",
  }])
=end
p "Updated!!!"