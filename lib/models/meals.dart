class Meals {
  final String strMealThumb;
  final String strMeal;

  Meals({required this.strMealThumb, required this.strMeal});

  /// From JSON -> Ambil data dari API, terus konversi jadi object Meals
  factory Meals.fromJson(Map<String, dynamic> json) {
    return Meals(strMealThumb: json['strMealThumb'], strMeal: json['strMeal']);
  }

  /// To JSON
  Map<String, dynamic> toJson() {
    return {'strMealThumb': strMealThumb, 'strMeal': strMeal};
  }
}
