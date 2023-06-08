class AppData {
  static List<BookItem> bookItems = [
    BookItem('assets/images/ali-baba-temp.jpg', 'مجموعه کتاب سفر علی‌بابا',
        'جامع ترین راهنمای گردش و تفریح در شهرهای پرطرفدار را به رایگان دانلود کنید.'),
    BookItem('assets/images/ali-baba-temp2.jpg', 'پادکست رادیو دور دنیا',
        'درباره هر چیزی که مربوط به سفر، ماجراجویی و تفریح باشد با هم گپ می‌زنیم'),
  ];

  static List<String> cities = [
    "تهران - مهرآباد",
    "اهواز",
    "شیراز",
    "مشهد",
    "بندر عباس",
    "اصفهان",
    "تبریز",
    "آبادان",
    "اردبیل",
    "ارومیه",
    "ایرانشهر",
    "بوشهر",
    "بیرجند",
    "پارس آباد",
    "خرم آباد",
    "رشت",
    "زاهدان"
  ];

  static List<MagazineItem> magazineItems = [
    MagazineItem('assets/images/mag/mag1.jpg',
        'جاهای دیدنی استامبول و آشنایی با مکان های گردشگری و تفریحی'),
    MagazineItem('assets/images/mag/mag2.jpg',
        'جاهای دیدنی ارمنستان؛ تاریخ را ورق بزنید'),
    MagazineItem('assets/images/mag/mag3.jpg',
        'بهرین جاهای دیدنی باتومی گرجستان که باید سفر کرد'),
    MagazineItem('assets/images/mag/mag4.jpg',
        'بهرین جاهای دیدنی باتومی گرجستان که باید سفر کرد'),
    MagazineItem('assets/images/mag/mag5.jpg',
        'بهرین جاهای دیدنی باتومی گرجستان که باید سفر کرد'),
  ];

  static List<MyTravel> myTravelItems = [
    MyTravel('قطار یزد به تهران', "مهتاب سیرجم", "22:45 - 17 خرداد", 1,
        1025545878, "قطار", "assets/images/travelComp/mahtab.jpg"),
    MyTravel('قطار تهران به یزد', "مهتاب سیرجم", "18:35 - 25 آبان", 1,
        2569545878, "قطار", "assets/images/travelComp/mahtab.jpg"),
    MyTravel('اتوبوس تهران به مشهد', "همسفر", "10:55 - 09 دی", 1, 5654945888,
        "اتوبوس", "assets/images/travelComp/hamsafar.jpg"),
    MyTravel('هواپیما اهواز به اصفهان', "ایران ایر", "16:15 - 30 بهمن", 2,
        1024785888, "هواپیما", "assets/images/travelComp/iranair.jpg"),
    MyTravel('قطار تهران به شیراز', "ایران ایر", "19:25 - 15 آذر", 2,
        9964785888, "قطار", "assets/images/travelComp/noor.jpg"),
    MyTravel('قطار شیراز به مشهد', "ایران ایر", "14:20 - 17 آذر", 2, 656585888,
        "قطار", "assets/images/travelComp/raja.jpg"),
  ];

  static List<PlusListViews> plusListViewsItems = [
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/1.jpg", "بازار توپخانه", "کرمانشاه",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "بام کرمانشاه", "کرمانشاه",
          " اگر دوست دارید مدتی از هیاهوی شهری دور بمانید و لحظاتی را در آرامش سپری کنید اگر دوست دارید مدتی از هیاهوی شهری دور بمانید و لحظاتی را در آرامش سپری کنید"),
      PlusCityInfo("assets/images/plusCity/3.jpg", "غار قوری قلعه", "کرمانشاه",
          " برای ماجراجویی هیچ چیزی نمیتواند مانند یک غار طولانی و پر پیچ و خم در میان کوه و اگر دوست دارید مدتی از هیاهوی شهری دور بمانید و لحظاتی را در آرامش سپری کنید"),
      PlusCityInfo("assets/images/plusCity/4.jpg", "طاق بستان", "کرمانشاه",
          " هر سفری قصه خودش را دارد و بخشی از این قصه به مرور جاذبه های تاریخی دوست دارید مدتی از هیاهوی شهری دور بمانید و لحظاتی را در آرامش سپری کنید"),
    ], "کرمانشاه؛ خاک زرین، میهن فرهاد و شیرین"),
    PlusListViews([
      PlusCityInfo(
          "assets/images/plusCity/3.jpg",
          "بازار اوزی ها و لاری ها",
          "بندرعباس",
          "بازار بزرگ بندر 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo(
          "assets/images/plusCity/1.jpg",
          "بازار اوزی ها و لاری ها",
          "بندرعباس",
          "بازار بزرگ بندر 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo(
          "assets/images/plusCity/4.jpg",
          "بازار اوزی ها و لاری ها",
          "بندرعباس",
          "بازار بزرگ بندر 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بندرعباس، مروارید خلیج فارس"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "چابهار",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "چابهار",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "چابهار",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "چابهار",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "چابهار یا پهار بهار؟"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/3.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بوشهر، شبه جزیره ای پر شور"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/3.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بوشهر، شبه جزیره ای پر شور"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/3.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بوشهر، شبه جزیره ای پر شور"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/3.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بوشهر، شبه جزیره ای پر شور"),
    PlusListViews([
      PlusCityInfo("assets/images/plusCity/3.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/2.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
      PlusCityInfo("assets/images/plusCity/4.jpg", "کوه های مریخی", "بوشهر",
          "بازار بزرگ کرمانشاه 18 راسته دارد که بازار توپخانه یکی از راسته های اصلی این بازار است. بازار بزرگ کرمانشاه 18 راسته دارد."),
    ], "بوشهر، شبه جزیره ای پر شور"),
  ];
}

class BookItem {
  final String imageUrl;
  final String title;
  final String caption;

  BookItem(this.imageUrl, this.title, this.caption);
}

class MagazineItem {
  final String imageUrl;
  final String title;

  MagazineItem(this.imageUrl, this.title);
}

class MyTravel {
  final String title;
  final String description;
  final String date;
  final int count;
  final int id;
  final String vehicle;
  final String iconUrl;

  MyTravel(this.title, this.description, this.date, this.count, this.id,
      this.vehicle, this.iconUrl);
}

class PlusCityInfo {
  final String imageUrl;
  final String title;
  final String city;
  final String caption;

  PlusCityInfo(this.imageUrl, this.title, this.city, this.caption);
}

class PlusListViews {
  final List<PlusCityInfo> cities;
  final String title;

  PlusListViews(this.cities, this.title);
}
