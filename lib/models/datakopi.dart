class Kopi {
  String name, price, description, image;
  int rate;

  Kopi(
    {
      required this.name,
      required this.price,
      required this.description,
      required this.image,
      required this.rate
    }
  );
}

List<Kopi> dataKopi = [
  Kopi(
    name: 'Iced Aren Latte',
    price: '25000',
    description: 'Rasa alami gula aren berpadu sempurna dengan espresso premium. Menu terlaris di Fore Coffee',
    image : 'assets/imgkopi/aren.jpg',
    rate: 5
  ),
  Kopi(
    name: 'Iced Biscuit Chizu',
    price: '32000',
    description: 'Perpaduan susu segar dengan busa krim keju di atasnya dengan biskuit remuk',
    image : 'assets/imgkopi/biskuit.jpg',
    rate: 4
  ),
  Kopi(
    name: 'Iced Butterscotch Latte',
    price: '29000',
    description: 'Perpaduan butterscotch dan espresso house blend dengan topping cream sea salt yang lembut di atasnya',
    image : 'assets/imgkopi/butter.jpg',
    rate: 4
  ),
  Kopi(
    name: 'Iced Creme Caramel',
    price: '29000',
    description: 'Sensasi asin, gurih, dan manis paduan susu dan karamel dengan taburan caramel crumble di atasnya',
    image : 'assets/imgkopi/cremee.jpg',
    rate: 4
  ),
  Kopi(
    name: 'Caramel Manuka Machiato',
    price: '32000',
    description: 'Paduan espresso, susu, madu Manuka, dan saus karamel untuk memaniskan harimu.',
    image : 'assets/imgkopi/caramelkopi.jpg',
    rate: 3
  ),
  Kopi(
    name: 'Banana Butter Latte',
    price: '29000',
    description: 'Butter latte dengan campuran rasa dan aroma pisang yang mempunyai sensasi silky dan creamy',
    image : 'assets/imgkopi/classic.jpg',
    rate: 5
  ),
  Kopi(
    name: 'Iced Creme Caramel Latte',
    price: '35000',
    description: 'Sensasi rasa asin, gurih, dan manis dengan paduan espresso juga karamel dengan taburan caramel crumble di atasnya.',
    image : 'assets/imgkopi/creme.jpg',
    rate: 3
  ),
  Kopi(
    name: 'Hot Caramel Crumble',
    price: '29000',
    description: 'Sensasi asin, gurih, dan manis paduan susu dan karamel dengan taburan caramel crumble di atasnya',
    image: 'assets/imgkopi/hotcaramel.jpg',
    rate: 4
  ),
  Kopi(
    name: 'Iced Pandan Latte',
    price: '29000',
    description: 'Latte dengan rasa dan aroma unik dari ekstrak pandan alami. Menu istimewa dari Fore Coffee',
    image: 'assets/imgkopi/pandan.jpg',
    rate: 5
  )
];