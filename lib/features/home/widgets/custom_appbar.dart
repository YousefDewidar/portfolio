import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 500,
        child: BlurryContainer(
          height: 60,
          elevation: 0,
          color: const Color.fromARGB(98, 159, 159, 159),
          padding: const EdgeInsets.all(8),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Container(
            alignment: Alignment.center,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinksCard(title: 'Home', active: true),
                LinksCard(title: 'About'),
                LinksCard(title: 'Projects'),
                LinksCard(title: 'Contact'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinksCard extends StatelessWidget {
  const LinksCard({
    super.key,
    required this.title,
    this.active = false,
  });
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 50,
      height: 40,
      width: 100,
      elevation: 100,
      color: active ? const Color(0x53DDDDDD) : Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Center(
        child: Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            )),
      ),
    );
  }
}

class CustomAppbarForMobile extends StatefulWidget {
  const CustomAppbarForMobile({super.key});

  @override
  State<CustomAppbarForMobile> createState() => _CustomAppbarForMobileState();
}

class _CustomAppbarForMobileState extends State<CustomAppbarForMobile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
        ),
        if (_isExpanded)
          const Column(
            children: [
              LinksCard(title: 'Home', active: true),
              LinksCard(title: 'About'),
              LinksCard(title: 'Projects'),
              LinksCard(title: 'Contact'),
            ],
          ),
      ],
    );
  }
}
