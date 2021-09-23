class DoctorModel {
  final Map<String, String> _available_dates;
  final String name;

  DoctorModel(this._available_dates, this.name);
}

class DumpData {
  final DoctorModel drMustafa =
      DoctorModel({'Tusday': '6:00 AM - 12:00 PM'}, 'Dr.Mustafa ghani');
  final DoctorModel drHamza = DoctorModel({
    'Sunday': '2:00 PM - 8:30 PM',
    'Monday': '2:00 PM - 8:30 PM',
    'Tusday': '2:00 PM - 8:30 PM',
    'Winsday': '2:00 PM - 8:30 PM',
    'Friday': '8:30 AM - 8:30 PM',
    'Saturday': '8:30 AM - 8:30 PM',
  }, 'Dr.Hamza ali');
  final DoctorModel drMouda = DoctorModel({
    'Sunday': '2:00 PM - 8:30 PM',
    'Monday': '2:00 PM - 8:30 PM',
    'Tusday': '2:00 PM - 8:30 PM',
    'Winsday': '2:00 PM - 8:30 PM',
    'Friday': '8:30 AM - 8:30 PM',
    'Saturday': '8:30 AM - 8:30 PM',
  }, 'Dr.Mouda adeeb');
  final DoctorModel drMalath = DoctorModel({
    'Sunday': '2:00 PM - 8:30 PM',
    'Monday': '2:00 PM - 8:30 PM',
    'Tusday': '2:00 PM - 8:30 PM',
    'Winsday': 'off',
    'Friday': 'off',
    'Saturday': '8:30 AM - 8:30 PM',
  }, 'Dr.Malath');
  final DoctorModel drAyman = DoctorModel({
    'Sunday': '2:00 PM - 8:30 PM',
    'Monday': '2:00 PM - 8:30 PM',
    'Tusday': '2:00 PM - 8:30 PM',
    'Winsday': 'off',
    'Friday': 'off',
    'Saturday': '8:30 AM - 8:30 PM',
  }, 'Dr.Ayman salah al-deen');
}
