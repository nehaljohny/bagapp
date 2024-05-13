import 'package:flutter/material.dart';

class Bags {
  String? name;
  String? imageUrl;
  double? price;

  Bags({
    this.name,
    this.imageUrl,
    this.price,
  });
}

class HomePage1 extends StatelessWidget {
  final List<Bags> bags = [
    Bags(
      name: "Nike Heritage",
      imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/53b6c38e-42ce-4eef-911e-eebf403d3eb2/heritage-cross-body-bag-H57GpC.png",
      price: 200,
    ),
    Bags(
      name: "Nike Sports",
      imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cbstwl35ntdaamcnhf4l/sportswear-backpack-ShhQ1r.png",
      price: 300,
    ),
    Bags(
      name: "Adidas Training",
      imageUrl: "https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/35573b181e4a463992d1cc5443800bed_9366/op-syst.-backpack-30l.jpg",
      price: 200,
    ),
    Bags(
      name: "Adidas Color Classic",
      imageUrl: "https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/ba3aff868d0c4330aedcc35ad50f668c_9366/adicolor-classic-round-bag.jpg",
      price: 200,
    ),
    Bags(
      name: "Puma F1",
      imageUrl: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_500,h_500/global/090560/01/mod01/fnd/IND/fmt/png/F1-Unisex-Backpack",
      price: 200,
    ),
    Bags(
      name: "Puma Phase",
      imageUrl: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_500,h_500/global/091407/02/fnd/IND/fmt/png/PUMA-Phase-Unisex-Portable-Bag",
      price: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "evaly",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.person_outline_outlined, size: 38,),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: bags.length,
        itemBuilder: (context, index) {
          final product = bags[index];
          return Container(
            height: 800, // Set a specific height for each grid item
            child: GridTile(
              child: Container(
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      product.imageUrl!,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text(
                      product.name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
