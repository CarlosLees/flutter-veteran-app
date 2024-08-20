import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListViewShimmer extends StatelessWidget {
  const ListViewShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          child: ListView.builder(
            itemCount: 10, itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 30,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            );
          })
      ),
    );
  }
}
