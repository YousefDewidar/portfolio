import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/data/models/project.dart';
import 'package:my_portfolio/features/projects/project_details_view.dart';
import 'package:page_transition/page_transition.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        isHovered = value;
        setState(() {});
      },
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: ProjectDetailsView(
              project: widget.project,
            ),
          ),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(10),
        height: 400.w,
        width: 270.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: isHovered ? Border.all(color: Colors.white) : const Border(),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox(
                height: 180.w,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: widget.project.img,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.w),
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
                      widget.project.name,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.project.desc,
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
                          widget.project.state,
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: const Color.fromARGB(209, 255, 255, 255)),
                        ),
                        Text(
                          widget.project.date,
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: const Color.fromARGB(209, 255, 255, 255)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
