class Course {
  String title;
  String description;
  String lecture;
  String imUrl;
  Course(this.title, this.description, this.lecture, this.imUrl);
  static List<Course> generateCourse() {
    return [
      Course('قرأن كريم', 'buildng software sysatem', 'lecture',
          'assets/images/kiko.jpg'),
      Course('صوتيات ', 'buildng software ', 'lesson2',
          'assets/images/kiko.jpg')
    ];
  }
}
