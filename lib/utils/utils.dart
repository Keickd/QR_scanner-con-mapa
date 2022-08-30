import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/scan_model.dart';

launchUrlFunction(BuildContext context, ScanModel scan) async {
  final Uri url = Uri.parse(scan.valor);

  if (scan.tipo == 'http') {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
