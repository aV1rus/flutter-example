import 'package:demo/model/avatar.dart';
import 'package:flutter/material.dart';

class avatar_widget extends StatelessWidget {
  final Avatar avatar;

  const avatar_widget({
    required this.avatar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          color: const Color(0xAA0000FF),
          borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child:
                  Image.network(height: 100, fit: BoxFit.fill, avatar.url,),
                )),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(avatar.name ?? 'Oops',
                    style: const TextStyle(fontSize: 20), maxLines: 2,),
                  const Text('200 Points',
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
