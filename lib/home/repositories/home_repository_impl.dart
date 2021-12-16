import 'package:firebase/firestore.dart';
import 'package:siteflutter/home/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRpository {
  CollectionReference get tarefas => Firestore.instance.collections("tarefas");

  @override
  Future getTarefas() {
    // TODO: implement getTarefas
    throw UnimplementedError();
  }

  @override
  Stream streamTarefas() {
    // TODO: implement streamTarefas
    throw UnimplementedError();
  }
}
