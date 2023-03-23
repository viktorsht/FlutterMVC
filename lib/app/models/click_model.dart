import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Click{
  RxInt tap = 0.obs;

  Click({int x = 10}){
    tap.value = x;
  }

  void increment() => tap.value++;
  void decrement() => tap.value--;

}