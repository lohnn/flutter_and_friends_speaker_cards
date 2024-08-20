extension StringExtensions on String {
  String? get nullIfEmpty => trim().isEmpty ? null : this;
}
