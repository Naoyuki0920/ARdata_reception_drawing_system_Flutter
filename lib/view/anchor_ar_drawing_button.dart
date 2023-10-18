import 'package:ar_flutter_plugin_sample/infrastructure/api_url_decision.dart';
import 'package:ar_flutter_plugin_sample/infrastructure/ar_object_download.dart';
import 'package:ar_flutter_plugin_sample/infrastructure/filename_decision.dart';
import 'package:ar_flutter_plugin_sample/view/localandwebobjectsexample.dart';
import 'package:flutter/material.dart';


class AnchorArDrawingButton extends StatelessWidget {
  const AnchorArDrawingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: const Text("AR表示"),
      onPressed: () async {
        String url = await ApiUrlDecision.decisionAPI().toString();
        String filename = await FilenameDecision.decisionFilename().toString();
        ArObjectDownload.downloadFile(url, filename);
        // ignore: use_build_context_synchronously
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LocalAndWebObjectsWidget()));
      },
    ));
  }
}
