import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      elevation: 5,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      shadowColor: Colors.black,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              gradient: LinearGradient(
                colors: [Color(0xFF4E3555), Color(0xff161B2F)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(child: Image.asset("assets/me.png")),
          ),
          Positioned(
            bottom: -15,
            right: -17,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color.fromARGB(255, 2, 28, 37),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.engineering_outlined,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "+1 Year",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Junior Mobile Developer",
                        style: TextStyle(
                            color: Color.fromARGB(163, 255, 255, 255),
                            fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
