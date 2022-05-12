mixin DecisionSize {
  double getSizePersentaseWidth(double width, int persentase) {
    return width * persentase / 100;
  }

   double getSizePersentaseHeight(double height, int persentase) {
    return height * persentase / 100;
  }
}
