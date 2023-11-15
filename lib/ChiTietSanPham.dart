import 'Comment.dart';
import 'CommentWidget.dart';
import 'package:flutter/material.dart';

class ChiTietSanPham extends StatefulWidget {
  @override
  _ChiTietSanPhamState createState() => _ChiTietSanPhamState();
}

class _ChiTietSanPhamState extends State<ChiTietSanPham> {
  bool showFullPhoneNumber = false;
  List<Comment> comments = [];

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
  }

  @override
  Widget build(BuildContext context) {
    String phoneNumber = showFullPhoneNumber
        ? 'Nhấn để hiện số điện thoại: 0987654321'
        : 'Nhấn để hiện số điện thoại: 09*******';

    return Scaffold(
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
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cột trái - Hình ảnh
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Cột phải - Nội dung
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Dòng 1 - Tên sản phẩm
                        const Text(
                          'Giày Converse Run Star Motion nam nữ, giày CV Run Star Motion bản S. Cấp full phụ kiện',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Dòng 2 - Giá sản phẩm
                        const Text(
                          '469.000' + 'đ',
                          style: TextStyle(
                            fontSize: 36,
                            color: Color(0xFFee4d2d),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Dòng 3 - Thông tin người bán
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Avt người bán (bo tròn)
                            Container(
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
                            const SizedBox(width: 16),
                            // Tên người bán và hai nút
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'giaydepshop',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Khoảng cách giữa tên người bán và hai nút
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
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
                                        child: const Text('Chat Ngay'),
                                      ),
                                      const SizedBox(width: 32),
                                      // Dòng 4 - Thông tin người bán (chia thành 2 dòng)
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start, // Align to the right
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style,
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                        text: 'Đánh giá ',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color.fromARGB(
                                                              255,
                                                              126,
                                                              123,
                                                              122), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '12,5k',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFFee4d2d), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      // Keep the rest of the text as is
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 60),
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style,
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                        text: 'Sản phẩm ',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color.fromARGB(
                                                              255,
                                                              126,
                                                              123,
                                                              122), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '888',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFFee4d2d), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      // Keep the rest of the text as is
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start, // Align to the right
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style,
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                        text: 'Tham gia ',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color.fromARGB(
                                                              255,
                                                              126,
                                                              123,
                                                              122), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '7 năm trước',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFFee4d2d), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      // Keep the rest of the text as is
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style,
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                        text: 'Người theo dõi ',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color.fromARGB(
                                                              255,
                                                              126,
                                                              123,
                                                              122), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '30,1k',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFFee4d2d), // Change the color of "1k" to orange
                                                          decoration: TextDecoration
                                                              .none, // Remove underline
                                                        ),
                                                      ),
                                                      // Keep the rest of the text as is
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 28),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showFullPhoneNumber = !showFullPhoneNumber;
                            });
                          },
                          child: Text(
                            phoneNumber,
                            style: const TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 12, 120, 208),
                              decoration:
                                  TextDecoration.underline, // Add underline
                              decorationColor: Color.fromARGB(
                                  255, 42, 142, 224), // Set underline color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Dòng 2 - Hiển thị bình luận
            const Padding(
              padding: EdgeInsets.only(left: 16),
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
                  physics: AlwaysScrollableScrollPhysics(),
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


