import 'package:threads_clone/data/data.dart';
import 'package:threads_clone/data/threads.dart';

abstract class Ithread{
  List<thread> getThread();
}

class threadRemoteDataSource extends Ithread{
  @override
  List<thread> getThread(){
    return listThread()
    .map((jsonObject) => thread.formJson(jsonObject))
    .toList();
  }
  
 
}