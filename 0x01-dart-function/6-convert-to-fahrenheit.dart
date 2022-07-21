List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((c) => (((c * 9 / 5) + 32) * 100).round() / 100)
      .toList();
}
