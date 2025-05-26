import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 30, left: 30, top: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categorias Populares",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "See All",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 114, 74, 94)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFF8CDEC),
                child:  Image.network(
                  "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/iconbb.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFF9ED2F7),
                child:  Image.network(
                  "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/iconr.png",
                  height: 65,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFfcbb8ef),
                child: Image.network(
                  "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/icont.png",
                  height: 55,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFFacdcc),
                child:  Image.network(
                  "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/icona.png",
                   height: 65,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, right: 0, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balones",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Ropa",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Tenis",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Accesorios",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}