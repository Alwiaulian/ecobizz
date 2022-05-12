import 'dart:io';

import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/string_const.dart';
import 'package:ecobiz_mobile_flutter/services/utils/find_directory.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

class FileDownloader {
  FileDownloader._privateConstructor();

  static final FileDownloader _instance = FileDownloader._privateConstructor();

  static FileDownloader get getInstance => _instance;

  void initialize() async {
    await FlutterDownloader.initialize(
      debug: true, // optional: set false to disable printing logs to console
    );
  }

  void createFolder() async {
    print("create folder");
    final String rootDirectory =
        await FindDirectory.getInstance.findRootDirectory();
    if (!Directory(rootDirectory + StringConst.appFolder).existsSync()) {
      Directory dataFolder;
      if (Platform.isIOS) {
        dataFolder = await getApplicationDocumentsDirectory();
      } else {
        dataFolder = Directory(rootDirectory + StringConst.appFolder);
      }

      await dataFolder.create().then((value) {
        print("Success Create App Folder");
        Directory(value.path + "/${StringConst.appFolderMediaAudio}")
            .create()
            .then((value) => print("Sucess Create App Folder Audio"));
        Directory(value.path + "/${StringConst.appFolderMediaFile}")
            .create()
            .then((value) => print("Sucess Create App Folder File"));
        Directory(value.path + "/${StringConst.appFolderMediaImage}")
            .create()
            .then((value) => print("Sucess Create App Folder Image"));
        Directory(value.path + "/${StringConst.appFolderMediaVideo}")
            .create()
            .then((value) => print("Sucess Create App Folder Video"));
        Directory(value.path + "/${StringConst.appFolderMediaArticle}")
            .create()
            .then((value) => print("Sucess Create App Folder Article"));
      });
    } else {
      String baseDirectory = rootDirectory + StringConst.appFolder + "/";

      if (!Directory(baseDirectory + StringConst.appFolderMediaAudio)
          .existsSync()) {
        Directory(baseDirectory + StringConst.appFolderMediaAudio)
            .create()
            .then((value) => print("Sucess Create App Folder Audio"));
      }
      if (!Directory(baseDirectory + StringConst.appFolderMediaFile)
          .existsSync()) {
        Directory(baseDirectory + StringConst.appFolderMediaFile)
            .create()
            .then((value) => print("Sucess Create App Folder File"));
      }
      if (!Directory(baseDirectory + StringConst.appFolderMediaImage)
          .existsSync()) {
        Directory(baseDirectory + StringConst.appFolderMediaImage)
            .create()
            .then((value) => print("Sucess Create App Folder Image"));
      }
      if (!Directory(baseDirectory + StringConst.appFolderMediaVideo)
          .existsSync()) {
        Directory(baseDirectory + StringConst.appFolderMediaVideo)
            .create()
            .then((value) => print("Sucess Create App Folder Video"));
      }
      if (!Directory(baseDirectory + StringConst.appFolderMediaArticle)
          .existsSync()) {
        Directory(baseDirectory + StringConst.appFolderMediaArticle)
            .create()
            .then((value) => print("Sucess Create App Folder Article"));
      }
    }
  }
}

class FileDownloaderHelper {
  FileDownloaderHelper._privateConstructor();

  static final FileDownloaderHelper _instance =
      FileDownloaderHelper._privateConstructor();

  static FileDownloaderHelper get getInstance => _instance;

  Future<bool> checkingFileExist(
      String? fileName, StatusDownloading media) async {
    String pathFolder;
    if (Platform.isIOS) {
      Directory folder = await getApplicationDocumentsDirectory();
      pathFolder = folder.path;
    } else {
      final String rootDirectory =
          await FindDirectory.getInstance.findRootDirectory();
      String pathSaveDownloader = rootDirectory + StringConst.appFolder;
      pathFolder = Directory(pathSaveDownloader).path;
    }

    if (!Directory(pathFolder).existsSync()) {
      FileDownloader.getInstance.createFolder();
    }

    if (media == StatusDownloading.Video) {
      pathFolder += "/" + StringConst.appFolderMediaVideo;
    } else if (media == StatusDownloading.Audio) {
      pathFolder += "/" + StringConst.appFolderMediaAudio;
    } else if (media == StatusDownloading.File) {
      pathFolder += "/" + StringConst.appFolderMediaFile;
    } else if (media == StatusDownloading.Image) {
      pathFolder += "/" + StringConst.appFolderMediaImage;
    } else {
      pathFolder += "/" + StringConst.appFolderMediaArticle;
    }

    if (File(pathFolder + '/$fileName').existsSync()) {
      return true;
    }

    return false;
  }

  void downloadFile(
      String? fileName, String url, StatusDownloading media) async {
    String pathFolder;
    if (Platform.isIOS) {
      Directory folder = await getApplicationDocumentsDirectory();
      pathFolder = folder.path;
    } else {
      final String rootDirectory =
          await FindDirectory.getInstance.findRootDirectory();
      String pathSaveDownloader = rootDirectory + StringConst.appFolder;
      pathFolder = Directory(pathSaveDownloader).path;
    }

    if (!Directory(pathFolder).existsSync()) {
      FileDownloader.getInstance.createFolder();
    }

    if (media == StatusDownloading.Video) {
      pathFolder += "/" + StringConst.appFolderMediaVideo;
    } else if (media == StatusDownloading.Audio) {
      pathFolder += "/" + StringConst.appFolderMediaAudio;
    } else if (media == StatusDownloading.File) {
      pathFolder += "/" + StringConst.appFolderMediaFile;
    } else if (media == StatusDownloading.Image) {
      pathFolder += "/" + StringConst.appFolderMediaImage;
    } else {
      pathFolder += "/" + StringConst.appFolderMediaArticle;
    }

    bool directoryCheck = Directory(pathFolder).existsSync();

    try {
      await FlutterDownloader.enqueue(
        saveInPublicStorage: directoryCheck ? false : true,
        url: url,
        fileName: fileName,
        savedDir: pathFolder,
        showNotification:
            true, // show download progress in status bar (for Android)
        openFileFromNotification:
            true, // click on notification to open downloaded file (for Android)
      );
    } on Exception catch (e) {
      print("catch $e");
    }
  }
}
