import 'dart:convert';

import 'package:flutter_application_getx_to_other/models/entity/filiere.dart';
import 'package:flutter_application_getx_to_other/models/provider/provider.dart';
import 'package:flutter_application_getx_to_other/shared/keys.dart';
import 'package:get/instance_manager.dart';

class FiliereRepository {
  final StorageData _storageData = Get.find<StorageData>();

  //Store
  void save(List<Filiere> filieres) {
    _storageData.write(keyFiliere, jsonEncode(filieres));
  }

  //show
  List<Filiere> findAll() {
    List<Filiere> filieres = [];
    var data = jsonDecode(_storageData.read(keyFiliere).toString());
    return data.forEach(() => filieres.add(Filiere.fromJson(item)));
  }
}
