import 'package:s_m/models/counter.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedCounter extends Model {

  Counter counter1 = Counter();
  Counter counter2 = Counter();
  Counter counter3 = Counter();

  increment() {
    counter1.count++;
    counter2.count += 4;
    counter3.count += 8;
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }

}
