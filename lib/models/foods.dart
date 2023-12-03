class Food {
  final String name;
  final String image;
  final String about;
  final String process;
  final String address;

  const Food(
      {required this.name,
      required this.image,
      required this.about,
      required this.process,
      required this.address});
}

const allFoods = [
  Food(
      name: 'Phở gà',
      image: 'assets/images/phoga.jpg',
      about:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable..\n"
          '![assets/images/pho.jpeg]\n\n'
          "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n"
          '![assets/images/pho.jpeg]\n\n'
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
      process: 'Ngon vl1',
      address: 'quan1'),
  Food(
      name: 'Bún chả',
      image: 'assets/images/buncha.jpg',
      about: '2',
      process: 'Ngon vl2',
      address: 'quan2'),
  Food(
      name: 'Cơm tấm',
      image: 'assets/images/comtam.jpg',
      about: '3',
      process: 'Ngon vl3',
      address: 'quan3'),
  Food(
      name: 'Phở bò',
      image: 'assets/images/phobo.jpg',
      about: '4',
      process: 'Ngon vl4',
      address: 'quan4'),
  Food(
      name: 'Bún thang',
      image: 'assets/images/bunthanghn.jpg',
      about: '5',
      process: 'Ngon vl5',
      address: 'quan5'),
  Food(
      name: 'Miến lươn',
      image: 'assets/images/mienluon.jpg',
      about: '6',
      process: 'Ngon vl6',
      address: 'quan6'),
  Food(
      name: 'Bún bò Huế',
      image: 'assets/images/bunbohue.jpg',
      about: '7',
      process: 'Ngon vl7',
      address: 'quan7'),
  Food(
      name: 'Bánh đa cua',
      image: 'assets/images/banhdacua.jpg',
      about: '8',
      process: 'Ngon vl8',
      address: 'quan8'),
  Food(
      name: 'Bún mọc',
      image: 'assets/images/bunmoc.jpg',
      about: '9',
      process: 'Ngon vl9',
      address: 'quan9'),
  Food(
      name: 'Bún ốc nguội',
      image: 'assets/images/bunocnguoi.jpg',
      about: '10',
      process: 'Ngon vl10',
      address: 'quan10'),
];
