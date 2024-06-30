import 'package:flutter_application_getx_to_other/shared/keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageData {
  late GetStorage _db;
  //Storage en local ==> get_storaged dependencie

  Future<StorageData> init() async {
    _db = GetStorage();
    await _db.writeIfNull(keyFiliere, []);
    return this;
  }

  //read
  T read<T>(String Key) {
    return _db.read(Key);
  }

  //Write
  void write(String Key, dynamic value) async {
    await _db.writeIfNull(keyFiliere, value);
  }

  // var filieres = [];
}
