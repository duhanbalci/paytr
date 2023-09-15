import 'package:flutter/material.dart';

class DetailKV extends StatelessWidget {
  const DetailKV(
    this.k,
    this.v, {
    super.key,
  });

  final String? k;
  final String? v;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Text(
              k!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(':'),
          ),
          Expanded(
              child: Text(
            v!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
