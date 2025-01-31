import 'package:electromarket/models/shoe.dart';
import 'package:electromarket/pages/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
              ),
              Icon(
                  Icons.search,
                  color: Colors.grey,
              )
            ],
          ),
        ),
        
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Everyone flies... some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                  "Hot Picks",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
              ),
              Text(
                  "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
            child: ListView.builder(
              itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //create a shoe
                  Shoe shoe = Shoe(
                      name: "Air Jordan",
                      price: "300",
                      imagePath: 'lib/images/554-5547469_jordan-transparent-shoe-air-jordan-2012-hd-png.png',
                      description: 'Cool Shoes'
                  );
                  return ShoeTile(shoe: shoe,);
                }
            )
        ),
        
        const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Divider(
              color: Colors.white,
            ),
        )
      ],
    );
  }
}
