import 'dart:math';
import 'package:ecobiz_mobile_flutter/config/api_client_environtment.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:intl/intl.dart';

class Formatter extends ApiClientEnvironment {
  /// format 'yyyy-MM-dd hh:mm.ss'
  static const String formatterDateTime1 = 'yyyy-MM-dd hh:mm:ss';

  /// format 'dd MMMM yyyy'
  static const String formatterDateTime2 = 'dd MMMM yyyy';

  /// format 'yyyy-MM-dd'
  static const String formatterDateTime3 = 'yyyy-MM-dd';

  /// format yyyy-MM-dd'T'HH:mm:ss'Z'
  static const String formatterDateTime4 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

  /// format 'yyyy-MM-dd hh:mm.ss'
  static const String formatterDateTime5 = 'yyyy-MM-dd hh:mm:ss.SSS';

  /// format 'EE, dd MMMM yyyy'
  static const String formatterDateTime6 = 'EEEE, dd MMMM yyyy';

  /// format 'hh.mm'
  static const String formatterTime = 'hh.mm';

  /// format 'dd MMMM'
  static const String formatterDateTime7 = 'dd MMMM';

  // format 'dd MM'
  static const String formatterDateTime8 = 'dd MM';

  /// format 'dd-MM-yyyy'
  static const String formatterDateTime9 = 'dd-MM-yyyy';

  static const String localID = 'id_ID';

  Formatter._privateConstructor();

  static final Formatter _instance = Formatter._privateConstructor();

  static Formatter get getInstance => _instance;

  String formatterPrefixPhoneNumber(String phoneNumber) {
    if (phoneNumber.substring(0, 1) == '0')
      return phoneNumber.replaceRange(0, 1, '62');
    return phoneNumber;
  }

  String convertDateTimeFormatter(
      {required DateTime dateTime,
      required String toFormat,
      String locale = localID}) {
    try {
      return DateFormat(toFormat, localID).format(dateTime);
    } on Exception catch (e) {
      print("error format $e");
      return "";
    }
  }

  String convertStringDateTimeFormatter(
      {required String source,
      required String fromFormat,
      required String toFormat,
      String local = Formatter.localID}) {
    try {
      DateTime dateHandle = DateFormat(fromFormat).parse(source);
      return DateFormat(toFormat, "id").format(dateHandle);
    } on Exception catch (e) {
      return e.toString();
    }
  }

  String convertStringDateTimeZoneFormatter(
      {required String source,
      required String fromFormat,
      required String toFormat,
      String local = Formatter.localID}) {
    try {
      DateTime dateHandle = DateFormat(fromFormat, local)
          .parse(source.replaceAll('T', ' ').replaceAll('Z', ''));
      return DateFormat(toFormat, Formatter.localID).format(dateHandle);
    } on Exception catch (_) {
      return "";
    }
  }

  String convertTimeZoneRangeFormatter(
      {required String fromDate,
      required String toDate,
      required String fromFormat,
      required String toFormat}) {
    try {
      DateTime dateHandleFromDate = DateFormat(fromFormat)
          .parse(fromDate.replaceAll('T', ' ').replaceAll('Z', ''));
      DateTime dateHandleToDate = DateFormat(fromFormat)
          .parse(toDate.replaceAll('T', ' ').replaceAll('Z', ''));
      return "${DateFormat(toFormat).format(dateHandleFromDate)} - ${DateFormat(toFormat).format(dateHandleToDate)}";
    } on Exception catch (_) {
      return "";
    }
  }

  String formatterValidLinkRedirect(String id) {
    // if (id.isEmpty || id == "") return DummyData.linkImageNotFound;
    // return "https://sis-dev-public.s3.amazonaws.com/1200px-VAN_CAT-1634093920387.png";
    return "$baseUrl/media/$id/redirect";
  }

  String formatterLinkArticlePdfDwonload(String contentId, String token) {
    // if (id.isEmpty || id == "") return DummyData.linkImageNotFound;
    return "$baseUrl/customer/content/$contentId/download?bearer_token=$token";
  }

  String formatterValidLinkImageFix(String id, int width) {
    return "$baseUrl/media/$id/redirect?w=$width&auto=compress"
        .replaceSpace
        .trim();
  }

  String formatterDeleteSpace(String value) {
    return value.replaceAll(" ", "%20").trim();
  }

  String formatterFileMediaName(String pathName) {
    return pathName.split("/").last;
  }

  // Format File Size
  String getFileSizeString({required int bytes, int decimals = 0}) {
    if (bytes <= 0) return "0 Bytes";
    const suffixes = [" Bytes", " KB", " MB", " GB", " TB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
  }

  DateTime getDateTimeFormatFromString(String source, String fromFormat) {
    try {
      return DateFormat(fromFormat).parse(source);
    } on Exception catch (_) {
      return DateTime.now();
    }
  }
}
