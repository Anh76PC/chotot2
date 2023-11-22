import 'Comment.dart';
import 'CommentWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ChiTietSanPham extends StatefulWidget {
  @override
  _ChiTietSanPhamState createState() => _ChiTietSanPhamState();
}

class _ChiTietSanPhamState extends State<ChiTietSanPham> {
  bool showFullPhoneNumber = false;
  List<Comment> comments = [];
  int countVote = 0;
  List<String> imageUrls = [
    'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
    'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lns8k2zxf1iy29',
    'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lns8k307emwqe3',
    'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lns8k33t9cvu76',
    'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lns8k31vc7al97',
    'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lns8k34d8jql3c',
  ];

  @override
  void initState() {
    super.initState();
    initializeComments();
  }

  void initializeComments() {
    addComment('user1', 'Đẹp quá');
    addComment('user2', 'Tốt');
    addComment('user3', 'Xấu');
    addComment('user4', 'Sản phẩm quá đắt');
    addComment('user5', 'Giá rẻ');
  }

  void addComment(String username, String comment) {
    setState(() {
      comments.add(Comment(username: username, comment: comment));
    });
    countVote++;
  }

  @override
  Widget build(BuildContext context) {
    String phoneNumber = showFullPhoneNumber ? '0987654321' : '09*******';

    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Replace with your desired background color

      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dòng 1 - Hiển thị thông tin sản phẩm
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 8, 128, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cột trái - Hình ảnh
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          items: imageUrls
                              .map((url) => Image.network(
                                    url,
                                    fit: BoxFit.fitHeight,
                                    height: 500,
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            height: 500,
                            enlargeCenterPage: true,
                          ),
                        ),
                        // Text elements below the image
                        const Text(
                          'Giày Converse Run Star Motion nam nữ, giày CV Run Star Motion bản S. Cấp full phụ kiện',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            // Display the number of comments
                            Text(
                              ' ${comments.length} bình luận',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Dòng 2 - Giá sản phẩm
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '469.000' + 'đ',
                            style: TextStyle(
                              fontSize: 36,
                              color: Color(0xFFee4d2d),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const SizedBox(height: 16),
                        // Add additional information as needed
                      ],
                    ),
                  ),
                  const SizedBox(width: 64),
                  // Cột phải - Nội dung
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 16.0), // Add margin to the left
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Dòng 3 - Thông tin người bán
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white, // Set the background color
                              border: Border.all(
                                color:
                                    Colors.white, // Set the color of the border
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Avt người bán (bo tròn)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0), // Add right padding
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://down-vn.img.susercontent.com/file/02e25097ad6e3a01f8c70b65b74fc2c2_tn',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Tên người bán và hai nút
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'giaydepshop',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Xử lý khi nhấn nút thứ nhất
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          onPrimary: const Color(
                                              0xFFee4d2d), // Màu chữ cam
                                          side: const BorderSide(
                                            color: Color(
                                                0xFFee4d2d), // Màu viền cam
                                          ),
                                        ),
                                        child: const Text('Xem trang'),
                                      ),
                                      // Khoảng cách giữa tên người bán và hai nút
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 28),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showFullPhoneNumber = !showFullPhoneNumber;
                              });
                            },
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Align children to the start and end of the row
                                children: [
                                  Icon(Icons.phone,
                                      color: Colors.white), // Phone icon
                                  const SizedBox(width: 16),
                                  Text(
                                    phoneNumber,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.green,
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment
                                          .centerRight, // Align the text to the right
                                      child: Text(
                                        "BẤM ĐỂ HIỆN SỐ",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          decorationColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 28),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color.fromARGB(255, 107, 106, 106),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Align children to the start and end of the row
                                children: [
                                  Icon(Icons.chat,
                                      color: Colors.green), // Phone icon
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment
                                          .centerRight, // Align the text to the right
                                      child: Text(
                                        "CHAT VỚI NGƯỜI BÁN",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.green,
                                          decorationColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Dòng 2 - Hiển thị bình luận
            const Padding(
              padding: EdgeInsets.only(left: 36),
              child: Text(
                'Bình luận về sản phẩm:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Danh sách bình luận
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 32),
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: comments.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CommentWidget(
                      username: comments[index].username,
                      comment: comments[index].comment,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
