import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:structured_pinterest/utils/constants/color_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';

class Pins extends StatelessWidget {
  const Pins({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.BlackMain.withOpacity(.5),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fillColor: ColorConstants.grey_shaded_3.withOpacity(.2),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search your Pins'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add,
                size: 40,
                color: ColorConstants.BlackMain,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorConstants.grey_shaded_3.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.grid_on_sharp,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorConstants.grey_shaded_3.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Favourite',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorConstants.grey_shaded_3.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Created by you',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: MasonryGridView.builder(
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: Dummydb.popularIdeas.length,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  Dummydb.popularIdeas[index]['url'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            '6 pins saved',
            style: TextStyle(fontSize: 15, color: ColorConstants.BlackMain),
          ),
          SizedBox(
            height: 110,
          )
        ],
      ),
    );
  }
}
