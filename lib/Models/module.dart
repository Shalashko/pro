class Module {
  String title;
  String time;
  String descriptin;
  Module(this.title, this.time, this.descriptin);
  static List<Module> genrateModule() {
    return [
      Module('المقدمة', '30 Minutes',
          'نسبة للتطور التكنولوجي كان لا بد من تطوير عملية التعليم'),
      Module('الحروف ', '30 Minutes', 'الحرف هو الجزء الرئيسي لتركيب الكلمة ')
    ];
  }
}
