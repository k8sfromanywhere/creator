String? validateEmail(String? value) {
  if (value == null || value.isEmpty) return 'Введите e-mail';
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  if (!emailRegex.hasMatch(value)) return 'Некорректный формат';
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) return 'Введите пароль';
  if (value.length < 8) return 'Минимум 8 символов';
  return null;
}
