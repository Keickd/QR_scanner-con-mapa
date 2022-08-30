import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/scan_list_provider.dart';
import '../utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({Key? key, required this.tipo}) : super(key: key);

  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemBuilder: (_, i) {
        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: (direction) {
            Provider.of<ScanListProvider>(context, listen: false)
                .borrarScanPorId(scans[i].id!);
          },
          child: ListTile(
            leading: Icon(
              tipo == 'http' ? Icons.link : Icons.map,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(scans[i].valor),
            subtitle: Text(scans[i].id.toString()),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
            onTap: () {
              launchUrlFunction(context, scans[i]);
            },
          ),
        );
      },
      itemCount: scans.length,
    );
  }
}
