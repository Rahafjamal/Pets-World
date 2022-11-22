import 'package:flutter/material.dart';
import 'package:ant_design_flutter/ant_design_flutter.dart' as ant;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CatPagination extends StatelessWidget {
  CatPagination({super.key, required this.Data, required this.type,required this.PaginationData});
  var Data;
  String type;
  Function PaginationData;

  var storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    var pagination = Data['pagination'];
    return ant.Button(
      type: ant.ButtonType.primary,
      onClick: () {
        // open modal for pagination
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Pagination"),
                  content: ant.Pagination(
                    defaultCurrent: pagination['current_page'] + 1,
                    total: pagination['total_count'],
                    pageSize: 50,
                    onChange: (page, pageSize) {
                      PaginationData(page);
                    },
                  ),
                  actions: [
                    ant.Button(
                      type: ant.ButtonType.primary,
                      onClick: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Close"),
                    ),
                  ],
                ));
      },
      child: Text('Paginaton ${pagination['current_page'] + 1}'),
    );
  }
}
