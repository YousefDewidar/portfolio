
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/widgets/title_card.dart';

class GitHubStats extends StatelessWidget {
  const GitHubStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleCard(
          title: "Github Stats",
          desc: "MY Github Stats 📊",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              scale: 0.4,
              "https://skillicons.dev/icons?i=github",
            ),
            Image.network(
              height: 200.w,
              "https://github-readme-streak-stats.herokuapp.com/?user=YousefDewidar&theme=black-ice&hide_border=true&stroke=0000&background=060A0CD0",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              height: 200.w,
              "https://github-readme-stats.vercel.app/api/top-langs/?username=YousefDewidar&langs_count=8&count_private=true&layout=compact&theme=react&hide_border=true&bg_color=0D1117",
            ),
            Image.network(
              height: 200.w,
              "https://github-readme-stats.vercel.app/api?username=YousefDewidar&show_icons=true&count_private=true&theme=react&hide_border=true&bg_color=0D1117",
            ),
          ],
        ),
      ],
    );
  }
}
