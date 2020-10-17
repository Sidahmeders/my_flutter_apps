
class User {
  static const String PassionCooking = 'Cooking';
  static const String PassionHiking = 'Hiking';
  static const String PassionTraveling = 'traveling';

  String firstName = '';
  String lastName = '';
  Map<String, bool> passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTraveling: false,
  };
  bool newsletter = false;

  save() {
    print('saving the user to a web server...');
  }

}

