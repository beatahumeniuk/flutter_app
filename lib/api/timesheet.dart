import 'package:chopper/chopper.dart';

part 'timesheet.chopper.dart';

@ChopperApi(baseUrl: 'http://www.mocky.io/v2')
abstract class TimesheetAPI extends ChopperService {

  @Get(path: '/5eb330813200007c477b8815')
  Future<Response> getDays();
}

class TimesheetDay {
  DateTime localDate;
  int day;
  String dayOfWeek;
  double hours;
}
