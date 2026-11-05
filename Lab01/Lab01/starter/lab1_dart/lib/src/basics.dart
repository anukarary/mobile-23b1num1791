// Даалгавар 1 — Dart хэлний үндэс: null safety, функц, collection, closure.

/// 1.1 Оюутны товч мэдээллийг буцаана.
///
/// Жишээ:
///   describeStudent('Бат')                              → 'Бат'
///   describeStudent('Бат', age: 21)                     → 'Бат (21)'
///   describeStudent('Бат', major: 'Програм хангамж')    → 'Бат — Програм хангамж'
///   describeStudent('Бат', age: 21, major: 'ПХ')        → 'Бат (21) — ПХ'
String describeStudent(String name, {int? age, String? major}) {
  final ageText = age != null ? ' ($age)' : '';
  final majorText = major != null ? ' — $major' : '';

  return '$name$ageText$majorText';
}

/// 1.2 Онооноос үсгэн дүн гаргана (switch expression ашигла).
///
/// 90–100 → 'A', 80–89 → 'B', 70–79 → 'C', 60–69 → 'D', 0–59 → 'F'.
/// 0–100 хооронд биш бол [ArgumentError] шиднэ.
String letterGrade(int score) {
  return switch (score) {
    > 100 || < 0 => throw ArgumentError('score must be between 0 and 100'),
    >= 90 => 'A',
    >= 80 => 'B',
    >= 70 => 'C',
    >= 60 => 'D',
    _ => 'F',
  };
}

double average(List<int> scores) {
  if (scores.isEmpty) {
    return 0.0;
  }

  final total = scores.fold<int>(0, (sum, score) => sum + score);
  return total / scores.length;
}

/// 1.4 [passMark]-аас дээш (тэнцүү орно) оноотой оюутнуудын нэрийг
/// цагаан толгойн дарааллаар буцаана (where, map, sort ашигла).
List<String> passedStudents(Map<String, int> scores, {int passMark = 60}) {
  return scores.entries
      .where((p) => p.value >= passMark)
      .map((p) => p.key)
      .toList()
    ..sort();
}

/// 1.5 Дуудах бүрт дараагийн ID-г буцаадаг функц үүсгэнэ (closure).
///
///   final nextId = makeIdGenerator(start: 100);
///   nextId(); // 100
///   nextId(); // 101
int Function() makeIdGenerator({int start = 1}) {
  return () => start++;
}
