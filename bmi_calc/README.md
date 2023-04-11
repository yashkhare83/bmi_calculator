# bmi_calc

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Help for this project-

color Constructor - https://stackoverflow.com/questions/67133798/flutter-how-to-create-constructor-in-my-style-class
ex- class Style {
  Color styleColor;
  
  Style(this.styleColor) : 
    header = TextStyle(
      color: styleColor,
      fontSize: 24,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
    ),
    title1 = TextStyle(
      color: styleColor,
      fontSize: 24,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
    );
  
  final TextStyle header;
  final TextStyle title1;
}
