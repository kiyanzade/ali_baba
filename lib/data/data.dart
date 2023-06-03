class AppData {
  static List<BookItem> bookItems = [
    BookItem('assets/images/ali-baba-temp.jpg', 'مجموعه کتاب سفر علی‌بابا',
        'جامع ترین راهنمای گردش و تفریح در شهرهای پرطرفدار را به رایگان دانلود کنید.'),
    BookItem('assets/images/ali-baba-temp2.jpg', 'پادکست رادیو دور دنیا',
        'درباره هر چیزی که مربوط به سفر، ماجراجویی و تفریح باشد با هم گپ می‌زنیم'),
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
