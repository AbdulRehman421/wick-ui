import "package:flutter/cupertino.dart";

class KwargsProvider extends ChangeNotifier {
  final List<MapEntry<String, String>> _tableData = [
    const MapEntry("", ""),
  ];

  List<MapEntry<String, String>> get tableData => _tableData;

  void addRow(MapEntry<String, String> rowData) {
    _tableData.add(rowData);
    notifyListeners();
  }

  void removeRow(int index) {
    _tableData.removeAt(index);
    notifyListeners();
  }
}
