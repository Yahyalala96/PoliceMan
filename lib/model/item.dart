class Item {
  final String image;
  final String name;
  final double price;
  final String desc;
  int qty;

  Item({required this.image, required this.name, required this.price,required this.desc, this.qty = 0});
}
