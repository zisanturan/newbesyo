import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Product {
  final String name;
  final String link;
  final IconData icon;
  final List<String>? images; // Optional field for images

  Product({
    required this.name,
    required this.link,
    required this.icon,
    this.images, // Optional images list
  });
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Product> products = [
    Product(
      name: 'Top',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Top+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.sports_soccer,
    ),
    Product(
      name: 'Forma',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Forma+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.sports_handball,
    ),
    Product(
      name: 'Mont',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Mont+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.ac_unit,
    ),
    Product(
      name: 'Çorap',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Çorap+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.checkroom,
    ),
    Product(
      name: 'Sweatshirt',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Sweatshirt+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.hiking,
    ),
    Product(
      name: 'Ayakkabı',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Ayakkabı+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.run_circle,
    ),
    Product(
      name: 'Yağmurluk',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Yağmurluk+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.umbrella,
    ),
    Product(
      name: 'Kitap',
      link:
          'https://wa.me/905064668387?text=Merhaba%2C+Kitap+ürünü+ile+ilgili+detaylı+bilgi+almak+istiyorum',
      icon: Icons.book,
      images: [
        'assets/images/kitap2.jpeg',
        'assets/images/kitap1.jpeg',
      ],
    ),
  ];

  List<bool> productClicked = List.filled(8, false);

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                productClicked[index] = !productClicked[index];
              });
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              product.icon,
                              size: 40,
                              color: const Color(0xFF0028FF),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0028FF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (productClicked[index])
                          ElevatedButton.icon(
                            onPressed: () => _launchUrl(product.link),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF31E1F7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                            ),
                            icon: const Icon(FontAwesomeIcons.whatsapp,
                                size: 16, color: Colors.white),
                            label: const Text(
                              'İletişime Geçin',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        if (product.name == 'Kitap' && productClicked[index])
                          SizedBox(
                            height: 150,
                            child: PageView.builder(
                              itemCount: product.images!.length,
                              itemBuilder: (context, pageIndex) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      product.images![pageIndex],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
