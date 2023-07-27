import 'package:ar_flutter_plugin_sample/infrastructure/ar_object_download.dart';
import 'package:ar_flutter_plugin_sample/view/objectsonplanesexample.dart';
import 'package:flutter/material.dart';

class PlaneArDrawingButton extends StatelessWidget {
  const PlaneArDrawingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: const Text("Plane AR表示"),
      onPressed: () {
        ArObjectDownload.downloadFile(
            "http://192.168.186.137:5000/get_glb", "Astronaut.glb");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ObjectsOnPlanesWidget()));
      },
    ));
  }
}