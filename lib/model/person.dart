class Person {
  String name;
  String title;
  String description;
  String experience;

  Person({
    required this.description,
    required this.name,
    required this.title,
    required this.experience,
  });

  String getName() {
    return name;
  }

  String getDescription() {
    return description;
  }

  String getTitle() {
    return title;
  }

  String getExpriance() {
    return experience;
  }
}
