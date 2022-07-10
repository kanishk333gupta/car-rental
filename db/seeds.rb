=begin
User.destroy_all
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
  }, {
    "id": 9,
    "name": "Lauritz Downgate",
    "password": "AAiZl84JBe8C",
    "email": "ldowngate8@diigo.com",
    "charges": 0
  }, {
    "id": 10,
    "name": "Portie Kummerlowe",
    "password": "EifXHU7fqY",
    "email": "pkummerlowe9@wp.com",
    "charges": 0
  }, {
    "id": 11,
    "name": "Noel Olekhov",
    "password": "Ke4Cq7u",
    "email": "nolekhova@umn.edu",
    "charges": 0
  }, {
    "id": 12,
    "name": "Sean Etter",
    "password": "ORkmntxe",
    "email": "setterb@harvard.edu",
    "charges": 0
  }, {
    "id": 13,
    "name": "Nedi Pantling",
    "password": "wluG1MqmT4",
    "email": "npantlingc@wired.com",
    "charges": 0
  }, {
    "id": 14,
    "name": "Donia Curm",
    "password": "wSY4UTnQi9X4",
    "email": "dcurmd@alexa.com",
    "charges": 0
  }, {
    "id": 15,
    "name": "Nelle Tallboy",
    "password": "wdOQ4i",
    "email": "ntallboye@merriam-webster.com",
    "charges": 0
  }, {
    "id": 16,
    "name": "Mara Paur",
    "password": "6DBYy9VZ",
    "email": "mpaurf@reverbnation.com",
    "charges": 0
  }, {
    "id": 17,
    "name": "Lil L'Episcopio",
    "password": "2Dt7dFwzR",
    "email": "llepiscopiog@desdev.cn",
    "charges": 0
  }, {
    "id": 18,
    "name": "Dannye Pioli",
    "password": "zA9468i",
    "email": "dpiolih@taobao.com",
    "charges": 0
  }, {
    "id": 19,
    "name": "Tore Iacovelli",
    "password": "bBTXgpMvFB",
    "email": "tiacovellii@uol.com.br",
    "charges": 0
  }, {
    "id": 20,
    "name": "Myrilla Heninghem",
    "password": "KI3x6o",
    "email": "mheninghemj@macromedia.com",
    "charges": 0
  }, {
    "id": 21,
    "name": "Bobbye Spellard",
    "password": "5s4W4QB8E",
    "email": "bspellardk@discuz.net",
    "charges": 0
  }, {
    "id": 22,
    "name": "Dory Tattershall",
    "password": "tQmOeia",
    "email": "dtattershalll@indiatimes.com",
    "charges": 0
  }, {
    "id": 23,
    "name": "Cesare Keaysell",
    "password": "glcXrz7Wr",
    "email": "ckeaysellm@washington.edu",
    "charges": 0
  }, {
    "id": 24,
    "name": "Batsheva Macey",
    "password": "4tGZNuCs5l",
    "email": "bmaceyn@squarespace.com",
    "charges": 0
  }, {
    "id": 25,
    "name": "Meggie Alforde",
    "password": "ybjfrCG",
    "email": "malfordeo@vk.com",
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
    "status": "available",
    "picture": "http://dummyimage.com/119x100.png/cc0000/ffffff"
  }, {
    "id": 2,
    "name": "GMC",
    "color": "Mauv",
    "model": "Envoy XL",
    "rental": 111,
    "status": "available",
    "picture": "http://dummyimage.com/143x100.png/ff4444/ffffff"
  }, {
    "id": 3,
    "name": "Chevrolet",
    "color": "Mauv",
    "model": "Suburban 1500",
    "rental": 249,
    "status": "available",
    "picture": "http://dummyimage.com/147x100.png/cc0000/ffffff"
  }, {
    "id": 4,
    "name": "BMW",
    "color": "Turquoise",
    "model": "X6 M",
    "rental": 328,
    "status": "available",
    "picture": "http://dummyimage.com/249x100.png/5fa2dd/ffffff"
  }, {
    "id": 5,
    "name": "Hyundai",
    "color": "Violet",
    "model": "Elantra",
    "rental": 341,
    "status": "available",
    "picture": "http://dummyimage.com/192x100.png/dddddd/000000"
  }, {
    "id": 6,
    "name": "Ford",
    "color": "Khaki",
    "model": "E-Series",
    "rental": 426,
    "status": "available",
    "picture": "http://dummyimage.com/105x100.png/dddddd/000000"
  }, {
    "id": 7,
    "name": "Honda",
    "color": "Mauv",
    "model": "Civic",
    "rental": 307,
    "status": "available",
    "picture": "http://dummyimage.com/161x100.png/cc0000/ffffff"
  }, {
    "id": 8,
    "name": "Porsche",
    "color": "Red",
    "model": "Carrera GT",
    "rental": 116,
    "status": "available",
    "picture": "http://dummyimage.com/119x100.png/dddddd/000000"
  }, {
    "id": 9,
    "name": "Acura",
    "color": "Orange",
    "model": "TL",
    "rental": 136,
    "status": "available",
    "picture": "http://dummyimage.com/124x100.png/ff4444/ffffff"
  }, {
    "id": 10,
    "name": "Ford",
    "color": "Goldenrod",
    "model": "Aerostar",
    "rental": 432,
    "status": "available",
    "picture": "http://dummyimage.com/152x100.png/dddddd/000000"
  }, {
    "id": 11,
    "name": "Oldsmobile",
    "color": "Aquamarine",
    "model": "Aurora",
    "rental": 300,
    "status": "available",
    "picture": "http://dummyimage.com/143x100.png/cc0000/ffffff"
  }, {
    "id": 12,
    "name": "Chrysler",
    "color": "Pink",
    "model": "Town & Country",
    "rental": 102,
    "status": "available",
    "picture": "http://dummyimage.com/186x100.png/ff4444/ffffff"
  }, {
    "id": 13,
    "name": "Nissan",
    "color": "Yellow",
    "model": "Murano",
    "rental": 421,
    "status": "available",
    "picture": "http://dummyimage.com/134x100.png/5fa2dd/ffffff"
  }, {
    "id": 14,
    "name": "Ford",
    "color": "Turquoise",
    "model": "F250",
    "rental": 362,
    "status": "available",
    "picture": "http://dummyimage.com/220x100.png/dddddd/000000"
  }, {
    "id": 15,
    "name": "GMC",
    "color": "Puce",
    "model": "Acadia",
    "rental": 270,
    "status": "available",
    "picture": "http://dummyimage.com/123x100.png/dddddd/000000"
  }, {
    "id": 16,
    "name": "Mercedes-Benz",
    "color": "Green",
    "model": "M-Class",
    "rental": 153,
    "status": "available",
    "picture": "http://dummyimage.com/136x100.png/cc0000/ffffff"
  }, {
    "id": 17,
    "name": "BMW",
    "color": "Violet",
    "model": "M3",
    "rental": 489,
    "status": "available",
    "picture": "http://dummyimage.com/173x100.png/cc0000/ffffff"
  }, {
    "id": 18,
    "name": "Mazda",
    "color": "Green",
    "model": "Protege",
    "rental": 256,
    "status": "available",
    "picture": "http://dummyimage.com/108x100.png/5fa2dd/ffffff"
  }, {
    "id": 19,
    "name": "Pontiac",
    "color": "Turquoise",
    "model": "Firefly",
    "rental": 483,
    "status": "available",
    "picture": "http://dummyimage.com/157x100.png/cc0000/ffffff"
  }, {
    "id": 20,
    "name": "Mercedes-Benz",
    "color": "Indigo",
    "model": "W201",
    "rental": 153,
    "status": "available",
    "picture": "http://dummyimage.com/134x100.png/dddddd/000000"
  }, {
    "id": 21,
    "name": "Lexus",
    "color": "Maroon",
    "model": "ES",
    "rental": 310,
    "status": "available",
    "picture": "http://dummyimage.com/100x100.png/cc0000/ffffff"
  }, {
    "id": 22,
    "name": "Bentley",
    "color": "Red",
    "model": "Mulsanne",
    "rental": 304,
    "status": "available",
    "picture": "http://dummyimage.com/228x100.png/ff4444/ffffff"
  }, {
    "id": 23,
    "name": "Citroën",
    "color": "Crimson",
    "model": "CX",
    "rental": 204,
    "status": "available",
    "picture": "http://dummyimage.com/140x100.png/5fa2dd/ffffff"
  }, {
    "id": 24,
    "name": "Buick",
    "color": "Khaki",
    "model": "LeSabre",
    "rental": 147,
    "status": "available",
    "picture": "http://dummyimage.com/126x100.png/cc0000/ffffff"
  }, {
    "id": 25,
    "name": "Lexus",
    "color": "Blue",
    "model": "GX",
    "rental": 262,
    "status": "available",
    "picture": "http://dummyimage.com/165x100.png/dddddd/000000"
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