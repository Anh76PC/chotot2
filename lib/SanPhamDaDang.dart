import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Product.dart';

class SanPhamDaDang extends StatelessWidget {
  final List<Product> products = [
    Product(
      imageUrl:
          'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
      name: 'Product 1',
      price: "100.000",
      sellingDate: DateTime.now(),
    ),
    Product(
      imageUrl:
          'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
      name: 'Product 2',
      price: "150.000",
      sellingDate: DateTime.now(),
    ),
    Product(
      imageUrl:
          'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
      name: 'Product 2',
      price: "150.000",
      sellingDate: DateTime.now(),
    ),
    Product(
      imageUrl:
          'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnfoxbvplre5b2',
      name: 'Product 2',
      price: "150.000",
      sellingDate: DateTime.now(),
    ),
    // Add more products as needed
  ];

  Widget buildIconButton(IconData iconData, String tooltip,
      {VoidCallback? onTap}) {
    return IconButton(
      onPressed: onTap,
      icon: Tooltip(
        message: tooltip,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Sản phẩm đã đăng',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
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
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        // Handle the first button press
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        onPrimary: const Color(0xFFee4d2d),
                        side: const BorderSide(
                          color: Color(0xFFee4d2d),
                        ),
                      ),
                      child: const Text('Xem trang'),
                    ),
                    
                  ],
                ),
              ),
              
            ],
          ),
          Divider(
                      color: const Color.fromARGB(255, 94, 92, 92),
                      thickness: 1.0,
                    ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Product product = products[index];

                String formattedDate =
                    DateFormat('HH:mm dd/MM/yyyy').format(product.sellingDate);

                return Column(
                  children: [
                    ListTile(
                      leading: Image.network(
                        product.imageUrl,
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${product.price}đ',
                            style: TextStyle(
                              color: Color(0xFFee4d2d),
                            ),
                          ),
                          Text(formattedDate),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildIconButton(Icons.visibility_off, "Ẩn tin"),
                          buildIconButton(Icons.edit, "Sửa tin"),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color.fromARGB(255, 94, 92, 92),
                      thickness: 1.0,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
