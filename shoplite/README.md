# shoplite

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Энэнд MyApp , MyHomePage гэсэн 2 класс байна. 
MyApp нь Stateless буюу төлөв өөрчлөгдөхгүй класс.
MyHomePage гэдэг нь Stateful буюу төлөв өөрчлөгдөж шинэчлэгдэх боломжтой класс.

dependencies — апп ажиллахад ашиглах сангууд:
- flutter (sdk: flutter) — интерфэйс, widget-үүдийг бүтээх үндсэн сан.
- cupertino_icons: ^1.0.8 — iOS загварын icon-уудын сан.
dev_dependencies — хөгжүүлэлт, тестэд ашиглах сангууд:
- flutter_test (sdk: flutter) — апп болон widget-үүдийн тест бичих сан.
- flutter_lints: ^6.0.0 — кодын бичиглэлийн дүрмийг шалгаж, зөвлөмж өгдөг сан.


android/ хавтас нь Flutter аппыг Android төхөөрөмж дээр ажиллуулах, бүтээхэд хэрэгтэй тохиргоо болон Android талын кодыг агуулдаг. Жишээлбэл, аппын зөвшөөрөл, package нэр, Gradle тохиргоо энд байрлана.

Ихэвчлэн lib/ хавтсанд Dart хэлээр код бичнэ. Аппын эхлэх файл нь lib/main.dart бөгөөд дэлгэц, widget болон аппын үйлдлүүдийг эндээс хөгжүүлнэ.