import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function()? ontap;

  const UserTile({super.key, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage(
                      "asset/Images/demopic.avif",
                    ),
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text,style:const TextStyle(fontFamily: 'Classic',fontSize: 15),),
                const Text(
                  "Last Seen 12:30 PM",
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Classic',
                      color: Colors.black38),
                ),
              ],
            ),
            const SizedBox(width: 35,),
            const Icon(Icons.arrow_forward_ios,size: 18,),
          ],
        ),
      ),
    );
  }
}
