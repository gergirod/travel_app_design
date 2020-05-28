class Hotel {

  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price
  });

}

List<Hotel> hotels = [

    Hotel(
        imageUrl: 'https://i1.wp.com/theluxurytravelexpert.com/wp-content/uploads/2019/11/best-luxury-and-most-exclusive-hotels-brands-in-the-world.jpg?fit=1300%2C731&ssl=1',
        name: "Don Diego",
        address: "Virrey Loreto 1703",
        price: 50
    ),
    Hotel(
        imageUrl: 'https://www.ttagroup.com.au/wp-content/uploads/2018/12/Manchester_exterior_day_2_P.jpg',
        name: "Don Garchinflo",
        address: "Virrey Loreto 1703",
        price: 70
    ),
    Hotel(
        imageUrl: 'https://d3e7bfg0h5jt4g.mrandmrssmith.com/images/1482x988/4704644-palais-ronsard-marrakech-morocco.jpg',
        name: "Don Farchinfle",
        address: "Virrey Loreto 1703",
        price: 80
    ),
    Hotel(
        imageUrl: 'https://static.asiawebdirect.com/m/phuket/portals/phuket-com/homepage/hotel/recommendations-luxury-resorts/pagePropertiesImage/Trisera-luksus-resort1.jpg',
        name: "Don Diego",
        address: "Virrey Loreto 1703",
        price: 90
    ),


  ];
