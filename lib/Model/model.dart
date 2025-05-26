class LocationDetail {
  String image;
  String name;
  int price;
  double rating;
  int time;
  String description;

  LocationDetail({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
    required this.time,
  });
}

List<LocationDetail> locationItems = [
  LocationDetail(
    image: "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/b1.jpg",
    name: 'Voleibol',
    price: 1750,
    rating: 5.0,
    time: 5000 ,
    description:
        'Balón de voleibol ligero y resistente, ideal para juegos recreativos y entrenamientos. Su superficie suave mejora el control y el golpeo. Apto para uso en interiores o exteriores.',
  ),
  LocationDetail(
    image: "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/b2.jpg",
    name: 'Futbol',
    price: 2350,
    rating: 4.9,
    time: 20000 ,
    description:
        "Balón de fútbol duradero y bien equilibrado, ideal para entrenamientos y partidos. Su cubierta resistente ofrece buen control y precisión en cada pase o tiro. Apto para todo tipo de superficies.",
  ),
  LocationDetail(
    image: "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/b3.jpg",
    name: 'Basquetbol',
    price: 3250,
    rating: 5.0,
    time:9000 ,
    description:
        'Balón de baloncesto con excelente agarre y rebote uniforme. Ideal para entrenamientos y juegos en cancha interior o exterior. Fabricado con materiales resistentes para mayor durabilidad.',
  ),
  LocationDetail(
    image: "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/b4.jpg",
    name: 'Americano',
    price: 3500,
    rating: 4.0,
    time:60000 ,
    description:
        "Balón de fútbol americano con textura antideslizante para un mejor agarre. Ideal para entrenamientos y juegos recreativos. Resistente y adecuado para uso en exteriores.",
  ),
  LocationDetail(
    image: "https://raw.githubusercontent.com/Miriam-BonillaZ-1050/images_tiendadepotiva/refs/heads/main/b5.jpg",
    name: 'Beisbol',
    price: 3350,
    rating: 4.5,
    time:20000 ,
    description:
        'Pelota de béisbol con costuras reforzadas y núcleo sólido. Ideal para prácticas y partidos recreativos. Ofrece buen rendimiento y durabilidad en cada lanzamiento.',
  ),
];