# Pokemon Team Builder (Flutter + GetX)

เพื่อสร้างทีมได้สูงสุด **3 ตัว** เท่านั้น  

## ฟีเจอร์
- แสดงรายชื่อโปเกมอน 40 ตัวแรก พร้อมรูปจาก [PokéAPI](https://pokeapi.co/)
- ผู้ใช้เลือกทีมโปเกมอนได้สูงสุด 3 ตัว
- ป้องกันการเลือกซ้ำ
- Preview ทีมที่เลือกไว้ พร้อมปุ่มเอาออก

---

## ข้อกำหนด (Requirements)

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (แนะนำ >= 3.10.0)
- Dart SDK (มาพร้อม Flutter)
- Android Studio / VS Code / หรือ IDE ที่รองรับ Flutter

---

## Dependencies

ใช้ package `get` สำหรับ state management

ไฟล์ `pubspec.yaml` ต้องมี:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6