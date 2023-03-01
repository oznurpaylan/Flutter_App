
class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
        required this.title,
        required this.description,
        required this.location,
        required this.duration,
        required this.punchLine1,
        required this.punchLine2,
        required this.categoryIds,
        required this.galleryImages});
}

final yuruyusEvent = Event(
    imagePath: 'assets/images/yuruyus.jpg',
    title: "10 km Orman Yürüyüşü",
    description: "Etkinlik açıklaması ",
    location: "Kent Park",
    duration: "3s",
    punchLine1: "Yürüyüş!",
    punchLine2: "",
    galleryImages: [],
    categoryIds: [0, 4]);

final tiyatroEvent = Event(
    imagePath: "assets/images/tiyatro.jpg",
    title: "Kumarbazlar Gösterisi",
    description: "",
    location: "Kültür Tiyatro Salonu",
    duration: "5s",
    punchLine1: "",
    punchLine2: "",
    categoryIds: [0, 2],
    galleryImages: []);

final piknikEvent = Event(
    imagePath: "assets/images/piknik.jpg",
    title: "Birlikte Piknik Yapalım",
    description: "",
    location: "Kent Parkı",
    duration: "5s",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [],
    categoryIds: [0, 4]);

final futbolEvent = Event(
    imagePath: "assets/images/futbol.jpg",
    title: "Halı Saha Ekibi",
    description: "",
    location: "Kartal Halı Saha",
    duration: "3s",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [],
    categoryIds: [0, 3]);

final gosterimEvent = Event(
    imagePath: "assets/images/sinema.jpg",
    title: "Avatar film gösterimine davetlisiniz",
    description: "",
    location: "Yeni Sinema",
    duration: "1h",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [],
    categoryIds: [0,1]);

final events = [
  yuruyusEvent,
  tiyatroEvent,
  piknikEvent,
  futbolEvent,
  gosterimEvent,
];