
import 'package:get_directory_native/get_directory_native.dart';

class FindDirectory {
  FindDirectory._privateConstructor();

  static final FindDirectory _instance = FindDirectory._privateConstructor();

  static FindDirectory get getInstance => _instance;

  Future<String> findRootDirectory() async{
    String getDirectoryNative = await GetDirectoryNative.platformVersion ?? '/storage/emulated/0';
    return "$getDirectoryNative/";
  }
}
