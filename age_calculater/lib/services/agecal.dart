import 'package:age/age.dart';

class AgeCalculation {
  // calculate age of person
  AgeDuration calculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    return age;
  }

  // calculate next birthday
  AgeDuration nextbirthday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextbday = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    AgeDuration nextbirthdayDuraction =
        Age.dateDifference(fromDate: today, toDate: nextbday);
    return nextbirthdayDuraction;
  }

// designed and developed by @mrinal sharma

  // calculate next birthday weekday
  int nextbday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextbday = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    return nextbday.weekday;
  }
}
