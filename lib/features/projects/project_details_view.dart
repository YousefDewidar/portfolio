import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/data/models/project.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/customer_services.dart';
import 'package:my_portfolio/features/projects/widget/link_button_card.dart';

class ProjectDetailsView extends StatelessWidget {
  final Project project;
  const ProjectDetailsView({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomerService(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 100.w),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4E3555), Color(0xff161B2F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: project.img,
                fit: BoxFit.fitHeight,
                height: 500,
                width: MediaQuery.of(context).size.width,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(child: Divider(endIndent: 10)),
                  Text(
                    project.name,
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: .5),
                  ),
                  const Expanded(child: Divider(indent: 10)),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                project.desc,
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 207, 207, 207),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.featured_play_list_outlined,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Features: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFEAEAEA),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (String feature in project.features)
                      Container(
                        height: 120,
                        width: 150,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 207, 207, 207),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            feature,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFFEAEAEA),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'project state: ${project.state}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 207, 207, 207),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.date_range_outlined,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'publish date: ${project.date}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 207, 207, 207),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.code,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Languages & Tools: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 207, 207, 207),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  for (String lang in project.languages)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 207, 207, 207))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: 'https://skillicons.dev/icons?i=$lang',
                              height: 40,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            Text(
                              lang,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 207, 207, 207),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.laptop_mac_rounded,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Project type: ${project.type}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 207, 207, 207),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinkButtonCard(
                    title: 'GitHub Repo',
                    img: 'assets/github.png',
                    url: project.links.repo,
                  ),
                  LinkButtonCard(
                    title: 'Google Play',
                    img: 'assets/google-play.png',
                    url: project.links.googlePlay,
                  ),
                  LinkButtonCard(
                    title: 'Download APK',
                    img: 'assets/android.png',
                    url: project.links.download,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
