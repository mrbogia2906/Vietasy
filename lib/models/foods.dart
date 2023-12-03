class Food {
  final String name;
  final String image;
  final String about;
  final String process;
  final String address;

  const Food({required this.name,
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
      'Phở Hà Nội là một món ăn nổi tiếng ở đất Hà Thành. Người dân nơi đây cũng không rõ nó xuất hiện từ bao giờ. Với vị thơm ngon của nước dùng, sự dẻo dai của bánh phở hòa cùng hương thơm của các loại rau ăn kèm đã làm cho phở Hà Nội trở nên đặc biệt trong mắt của những tín đồ ẩm thực.\n\n'
          "Phở Hà Nội được biết đến đầu tiên qua những gánh hàng rong. Thời điểm đó mọi người hay gọi món ăn này “phở gánh”, tạo nên nét đặc trưng riêng. Những gánh phở đi qua từng con phố, len lỏi vào trong ngõ nhỏ cùng với tiếng rao vặt đem đến nét đẹp của một Hà Thành rất xưa.\n\n"
          "Hiện nay, những gánh phở như này không còn nhiều, chỉ xuất hiện một số ít ở phố cổ, rất khó để bắt gặp được. Tuy nhiên, giá trị và hương vị của phở Hà Nội vẫn còn đó, không bị phai mờ theo thời gian.\n\n"
          "Phở Hà Nội đặc biệt nhờ nước dùng ngọt thanh, trong vắt được ninh từ xương của trâu hoặc bò. Khi ăn cùng những sợi phở dai dai kèm thêm một chút hành lá, giấm ớt, rau xanh,... tạo nên hương vị phở bò hoàn hảo, không nơi đâu có được.",
      process: "Xương ức gà: 1kg.\n"
"Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bún chả',
      image: 'assets/images/buncha.jpg',
      about: 'Cùng nhiều món ăn Hà thành như Phở Bát Đàn, chả cá Lã Vọng, bánh đa kê... chẳng ai rõ Bún chả Hà Nội ra đời khi nào, chỉ biết từ thế hệ này sang thế hệ khác món ăn đã trở thành một phần không thể thiếu trong cuộc sống của người dân Hà thành.\n\n Với 3 phần chính là bún, chả nướng và nước chấm, món ăn đặc sản sở hữu cho mình hương vị vô cùng lôi cuốn, hấp dẫn. Đó là sự kết hợp hài hòa giữa thịt nướng qua tẩm ướp đậm đà, sợi bún dai dai, thơm ngon cùng vị chua ngọt khó cưỡng của nước chấm. Khi thưởng thức kèm với các loại rau sống tươi mát, món ngon càng khiến người ăn tấm tắc mãi không thôi. Quả là món bún đại diện cho cội nguồn văn hóa ẩm thực thủ đô!',
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Cơm tấm',
      image: 'assets/images/comtam.jpg',
      about: 'Cơm tấm là một món ăn truyền thống của người Sài Gòn và được coi là món ăn “quốc dân” của thành phố này. Cơm tấm thường được chế biến từ cơm tấm, một loại cơm gạo tấm nhỏ hơn và cứng hơn cơm trắng thông thường.\n\n'
          'Cơm tấm có thể được tìm thấy ở các quán ăn và quán ăn đường phố khắp Sài Gòn, từ những quán lớn đến những quán nhỏ. Món ăn này có giá cả phải chăng và được ưa chuộng bởi hương vị thơm ngon và lượng dinh dưỡng cung cấp cho cơ thể. Với hương vị đặc trưng và tính thanh mát, cơm tấm đã trở thành món ăn yêu thích của người dân Sài Gòn và được coi là biểu tượng ẩm thực của thành phố này.',
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Phở bò',
      image: 'assets/images/phobo.jpg',
      about:
      'Phở Hà Nội là một món ăn nổi tiếng ở đất Hà Thành. Người dân nơi đây cũng không rõ nó xuất hiện từ bao giờ. Với vị thơm ngon của nước dùng, sự dẻo dai của bánh phở hòa cùng hương thơm của các loại rau ăn kèm đã làm cho phở Hà Nội trở nên đặc biệt trong mắt của những tín đồ ẩm thực.\n\n'
          "Phở Hà Nội được biết đến đầu tiên qua những gánh hàng rong. Thời điểm đó mọi người hay gọi món ăn này “phở gánh”, tạo nên nét đặc trưng riêng. Những gánh phở đi qua từng con phố, len lỏi vào trong ngõ nhỏ cùng với tiếng rao vặt đem đến nét đẹp của một Hà Thành rất xưa.\n\n"
          "Hiện nay, những gánh phở như này không còn nhiều, chỉ xuất hiện một số ít ở phố cổ, rất khó để bắt gặp được. Tuy nhiên, giá trị và hương vị của phở Hà Nội vẫn còn đó, không bị phai mờ theo thời gian.\n"
          "Phở Hà Nội đặc biệt nhờ nước dùng ngọt thanh, trong vắt được ninh từ xương của trâu hoặc bò. Khi ăn cùng những sợi phở dai dai kèm thêm một chút hành lá, giấm ớt, rau xanh,... tạo nên hương vị phở bò hoàn hảo, không nơi đâu có được.",
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bún thang',
      image: 'assets/images/bunthanghn.jpg',
      about: "Đó là bún thang. Thang trong tiếng Hán có nghĩa là canh. Bún thang có thể hiểu là “bún được chan bởi canh”. Sự ra đời của món ăn này bắt nguồn từ món canh thượng thang của người thủ đô xưa. Như vậy, có nghĩa bún thang đã là một trong những món ăn có truyền thống lâu đời trong văn hóa ẩm thực của người Hà Nội. \n\n"
      "Trải qua nhiều năm, món bún thang vẫn được đông đảo người dân thủ đô yêu thích. Không khó để kiếm một quán bún thang trên phố, nhưng ngon, đúng vị, nguyên sắc thì chỉ có một vài nơi như quán bún thang ở Hàng Hòm, Cầu Gỗ hay Giảng Võ…\n\n"
          "Bát bút thang có cái tên đơn giản, nhưng cách chế biến lại cầu kỳ. Cần ít nhất khoảng 20 nguyên liệu để làm nên một bán bún nhiều màu sắc. Bún rối trắng muốt, thịt gà ta da vàng, củ cải khô dầm chua ngọt, trứng gà rán mỏng, giò lụa, rau dăm, mùi tàu, nấm hương... tất cả đều được thái chỉ hoặc xé nhỏ, tơi, bông như ruốc. Ngần ấy nguyên liệu, ngần ấy màu sắc trộn đều trên nền trắng muốt của bún khiến món ăn sặc sỡ như một bông hoa. Nước dùng cũng phải lấy từ xương hầm trong nhiều giờ, trong, sánh, tránh váng bọt.\n\n"
      ,
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Miến lươn',
      image: 'assets/images/mienluon.jpg',
      about: "Trong các món đặc sản Nghệ An thì miến lươn là món ăn chiếm được nhiều sự yêu thích nhất bởi mùi vị nhẹ nhàng, dễ ăn, hợp khẩu vị nhiều người. Miến lươn có cách chế biến vô cùng phong phú. Nét riêng biệt của miến lươn Nghệ An là vị cay rất đặc trưng của miền Trung. Vị cay này sẽ làm át đi vị tanh của lươn.\n\n"
          "Ngoài việc là một món ăn hấp dẫn, ngon miệng, lươn còn có tác dụng rất tốt đối với sức khỏe. Theo Đông y, lươn được dùng để tiêu trừ phong thấp, bồi dưỡng khí huyết, chữa bệnh suy dinh dưỡng và bệnh huyết trắng ở phụ nữ. Đặc biệt, đặc tính sinh khí huyết và bổ dưỡng của lươn còn giúp lưu thông máu rất tốt, giảm đau nhức tai, cải thiện chứng khô miệng và tăng cường khả năng tình dục. Tuy nhiên, phụ nữ đang mang thai không nên ăn thịt lươn.",
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bún bò Huế',
      image: 'assets/images/bunbohue.jpg',
      about: "Bún bò Huế xưa ra đời từ thời chúa Nguyễn Hoàng (khoảng thế kỷ thứ 16). Tương truyền, xưa có cô Bún xinh đẹp, giỏi giang, thạo nghề làm bún. Tại làng Vân Cù (nay thuộc thị xã Hương Trà, tỉnh Thừa Thiên Huế), cô Bún đã sáng tạo ra cách chế biến một món ăn mới: Lấy thịt bò nấu thành nước dùng cho món bún. Từ đó, món bún bò ra đời, được lưu giữ và phát triển qua nhiều thế hệ. Đến nay, bún bò Huế đã được cải biên với sự có mặt của nhiều nguyên liệu khác như giò heo, tiết lợn, chả cua,... \n\n"
          "Bún bò Huế có nhiều điểm khác biệt so với món bún bò của những địa phương khác. Món ăn này nổi tiếng đến mức gần như ai đã đi du lịch Huế cũng phải thưởng thức ít nhất một lần.",
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bánh đa cua',
      image: 'assets/images/banhdacua.jpg',
      about: "Nếu như Yên Bái nổi tiếng với món bánh chưng đem ở Cánh đồng Mường Lò thì Bánh đa cua Hải Phòng được người dân nơi đây xem như là linh hồn của nền ẩm thực đất Cảng. Không chỉ có từ lâu đời, món ăn này còn chứa đựng một phần văn hóa đặc sắc của vùng đất du lịch Hải Phòng từ xưa đến nay. Trải qua biết bao nhiêu thăng trầm, món bánh đa cua vẫn gắn liền với đời sống và tinh thần của người dân nơi đây.\n\n"
          "Không chỉ là một món ăn thông thường, Bánh đa cua Hải Phòng còn là một biểu tượng của vùng đất đầu sóng ngọn gió. Vào năm 2012, Bánh đa cua Hải Phòng cùng với một vài món ăn nổi tiếng khác như phở, cơm cháy Ninh Bình, gỏi cuốn...được công nhận là món ăn đạt kỷ lục Châu Á tại Faridabad (Ấn Độ). Đồng thời còn vượt qua nhiều đặc sản khác để lọt vào TOP15 món ăn đại diện cho nền ẩm thực Việt Nam đa dạng và phong phú. Càng ngày bánh đa cua càng nổi tiếng và vươn xa ra khắp thế giới.",
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bún mọc',
      image: 'assets/images/bunmoc.jpg',
      about: 'Bún mọc, món ngon đặc trưng Hà thành dường như đã trở thành một phần quen thuộc trong đời sống ẩm thực Sài Gòn. Nó có mặt ở mọi ngóc ngách thành phố này, từ những con đường sầm uất cho đến những ngõ hẻm lao động với đủ khẩu vị và biến thể khác nhau. Người ta cũng thường tranh cãi về việc gọi sao cho đúng cái chữ “mọc” đó. Chỗ gọi là “mọc” vì món này được cho là có xuất xứ từ làng Mọc (Nhân Mục – Nhân Chính), nay là quận Thanh Xuân, Hà Nội. Có người lại cho là “mộc”, tức là những viên giò sống vo tròn đặc trưng của tô bún này. Chuyện này thì hạ hồi phân giải, Sài Gòn cũng lắm chỗ để “mộc” hay “mọc” nhưng quan trọng là tô bún có ngon và đặc sắc hay không mà thôi. Một tô bún mọc ngon luôn đòi hỏi sự tỉ mỉ và hài hòa trong việc kết hợp các loại gia vị với nhau, cũng là sự kết hợp tự nhiên của bún, mọc, sườn non, chả quế, nấm hương và hành. Nước dùng cũng được chuẩn bị rất kỹ, hầm từ xương heo, vớt bọt cho thật trong mà không cần phải nêm nếm quá nhiều. Ngoài ra, nước dùng ngon cũng nhờ vào miếng sườn được ninh kỹ vừa để lấy nước ngọt, vừa cho mềm để khách ăn không bị vất vả.',
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
  Food(
      name: 'Bún ốc nguội',
      image: 'assets/images/bunocnguoi.jpg',
      about: 'Bún ốc, món ngon đặc trưng Hà thành dường như đã trở thành một phần quen thuộc trong đời sống ẩm thực Sài Gòn. Nó có mặt ở mọi ngóc ngách thành phố này, từ những con đường sầm uất cho đến những ngõ hẻm lao động với đủ khẩu vị và biến thể khác nhau. Người ta cũng thường tranh cãi về việc gọi sao cho đúng cái chữ “mọc” đó. Chỗ gọi là “mọc” vì món này được cho là có xuất xứ từ làng Mọc (Nhân Mục – Nhân Chính), nay là quận Thanh Xuân, Hà Nội. Có người lại cho là “mộc”, tức là những viên giò sống vo tròn đặc trưng của tô bún này. Chuyện này thì hạ hồi phân giải, Sài Gòn cũng lắm chỗ để “mộc” hay “mọc” nhưng quan trọng là tô bún có ngon và đặc sắc hay không mà thôi. Một tô bún mọc ngon luôn đòi hỏi sự tỉ mỉ và hài hòa trong việc kết hợp các loại gia vị với nhau, cũng là sự kết hợp tự nhiên của bún, mọc, sườn non, chả quế, nấm hương và hành. Nước dùng cũng được chuẩn bị rất kỹ, hầm từ xương heo, vớt bọt cho thật trong mà không cần phải nêm nếm quá nhiều. Ngoài ra, nước dùng ngon cũng nhờ vào miếng sườn được ninh kỹ vừa để lấy nước ngọt, vừa cho mềm để khách ăn không bị vất vả.',
      process: "Xương ức gà: 1kg.\n"
          "Gà: 1 con (khoảng 1,2kg-1,5kg)\nBánh phở: 1 kg.\nHành tây: 1 củ\nHành tím: 5 củ\nGừng: 1 củ\nRau ăn kèm: Ngò ôm, húng quế, húng cây, giá, chanh tươi, ớt sừng, lá chanh.\nGia vị nêm: Đường phèn, muối, bột ngọt, hạt nêm, tiêu, nước mắm, tương ớt, tương đen."
      ,
      address: '- Phở gà Nguyệt\n'
          'Địa chỉ: số 5 phố Phủ Doãn, Hoàn Kiếm, Hà Nội\n'
          '- Phở gà Hà \n'
          'Địa chỉ: số 15 phố Hàng Hòm, Hàng Gai, Hoàn Kiếm, Hà Nội \n'
          '- Phở gà Bảo Khánh\n'
          'Địa chỉ: số 20 phố Bảo Khánh, Hoàn Kiếm, Hà Nội'),
];
