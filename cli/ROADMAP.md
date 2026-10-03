# Roadmap Belajar Dart

Target: ngerti Dart → bisa bikin aplikasi (Flutter) → bisa bikin API pakai Dart.

Cara belajar: konsep dijelasin di chat → gua ngetik sendiri → setor buat dicek.

## Bagian 1 — Bahasa Dart

- [x] **Bab 1** — `main()`, var/final/const, tipe statis, if/else, for, List, Map, interpolation, fungsi (`=>`, param bernama)
- [x] **Bab 2** — null safety: `?`, `??`, `?.`, `??=`, `!`, promosi tipe
  - [x] latihan `tampilkanNama(String? nama)` — kelar 2026-08-23
- [x] **Bab 3** — class & object ← paling penting buat Flutter
  - [x] class, field, constructor, method, `List<Buku>`, `@override toString()`, panggil method di loop — `bin/oop_01.dart`, kelar 2026-08-29
  - [x] `extends` (pewarisan) — `bin/oop_02.dart`, kelar 2026-09-01
  - [x] getter — `bool get mahal`, `bin/oop_01.dart`, kelar 2026-09-01
  - [x] named constructor — `Buku.gratis`, kelar 2026-09-01
  - [x] polymorphism — udah kejadian di `bin/oop_02.dart` (`Kucing`/`Anjing` nimpa `suara()`), cuma belum disebut istilahnya
- [ ] **Bab 3.5** — OOP lanjutan yang murah & langsung kepake
  - [x] `_` private & encapsulation — `final int _harga` + `get harga`, dibuktiin dari `bin/toko.dart` (error "isn't defined"), kelar 2026-09-02
  - [ ] setter (pasangan getter)
  - [ ] `static`
- [ ] **Bab 4** — collection: `map`, `where`, `sort`, `fold`
- [ ] **Bab 5** — async/await, `Future`

## Bagian 2 — Aplikasi

- [ ] **Bab 6** — Flutter dasar: widget, state
- [ ] **Bab 7** — layout & navigasi
- [ ] **Bab 8** — ambil data dari internet

## Bagian 3 — API

- [ ] **Bab 9** — JSON: parse & bikin
- [ ] **Bab 10** — bikin server sendiri (`shelf` / `dart_frog`)
- [ ] **Bab 11** — sambungin aplikasi Flutter ke API bikinan sendiri

## Catatan

- `bin/dasar_01.dart` udah dihapus — terlalu padat, jangan dijadiin acuan.
- `bin/learn.dart`, `bin/contoh.dart`, `bin/example.dart` = tempat latihan.
- `bin/example.dart` = contekan: `toString` auto-panggil vs method biasa manual, plus `??` pas ambil kunci Map yang kosong.
- Ditunda sampai ketemu kasusnya beneran (jangan dihafal duluan):
  - `abstract class` → nongol sendiri di bab 6, `StatelessWidget` itu abstract.
  - `mixin` → nongol di bab 7 (`with SingleTickerProviderStateMixin`). Cukup bisa MAKAI.
  - `implements` → paling jarang; nanti aja kalau proyek API-nya udah butuh kontrak.
