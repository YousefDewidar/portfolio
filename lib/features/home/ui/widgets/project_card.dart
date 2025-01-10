import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/data/models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 400.w,
      width: 270.w,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Image.network(project.img, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding:  EdgeInsets.all(10.w),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                    end: Alignment.bottomRight,
                    begin: Alignment.topLeft,
                    colors: [Color(0xff3A255E), Color(0xff602F43)]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.name,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              
                  Text(
                    project.desc,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(186, 255, 255, 255)),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        project.state,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(209, 255, 255, 255)),
                      ),
                      Text(
                        project.date,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(209, 255, 255, 255)),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.w),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
