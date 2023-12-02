class Food {
  final String name;
  final String image;
  final String about;
  final String process;
  final String address;

  const Food({required this.name, required this.image, required this.about, required this.process, required this.address});
}

const allFoods = [
  Food(name: 'Phở 1', image: 'assets/images/pho.jpeg',about: '1', process: 'Ngon vl1', address: 'quan1'),
  Food(name: 'Bún 1', image: 'assets/images/pho.jpeg',about: '2', process: 'Ngon vl2', address: 'quan2'),
  Food(name: 'Mỳ 1', image: 'assets/images/pho.jpeg',about: '3', process: 'Ngon vl3', address: 'quan3'),
  Food(name: 'Phở 2', image: 'assets/images/pho.jpeg',about: '4', process: 'Ngon vl4', address: 'quan4'),
  Food(name: 'Bún 2', image: 'assets/images/pho.jpeg',about: '5', process: 'Ngon vl5', address: 'quan5'),
  Food(name: 'Mỳ 2', image: 'assets/images/pho.jpeg',about: '6',  process: 'Ngon vl6', address: 'quan6'),
  Food(name: 'Phở 3', image: 'assets/images/pho.jpeg',about: '7', process: 'Ngon vl7', address: 'quan7'),
  Food(name: 'Bún 3', image: 'assets/images/pho.jpeg',about: '8', process: 'Ngon vl8', address: 'quan8'),
  Food(name: 'Mỳ 3', image: 'assets/images/pho.jpeg',about: '9' , process: 'Ngon vl9', address: 'quan9'),
  Food(name: 'Phở 4', image: 'assets/images/pho.jpeg',about: '10', process: 'Ngon vl10', address: 'quan10'),
];
