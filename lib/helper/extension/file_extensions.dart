// import 'dart:io';
// import 'dart:math';
// import 'package:write_score/core/application/repository/image/models/app_file.dart';
// import 'package:path_provider/path_provider.dart';

// extension FileExtension on File {
//   double sizeOfImage([
//     int decimal = 1,
//   ]) {
//     final file = File(this.path);
//     if (file.existsSync()) {
//       final bytes = file.lengthSync();
//       if (bytes <= 0) {
//         return 0;
//       }
//       // const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
//       // var i = (log(bytes) / log(1024)).floor();
//       final size = bytes / pow(1000, 2);

//       return size;
//     }
//     return 0;
//   }

//   static Future<String> moveToDirectory(AppFile appFile) async {
//     final localPath = appFile.localUrl;
//     final file = File(localPath);
//     final directory = await getApplicationDocumentsDirectory();
//     final fileLocation = File(
//       '${directory.path}${appFile.relativePath}',
//     );

//     if (!fileLocation.existsSync()) {
//       await fileLocation.create(recursive: true);
//     }
//     final result = await fileLocation.writeAsBytes(file.readAsBytesSync());
//     return result.path;
//   }
// }
