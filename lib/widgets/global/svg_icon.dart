import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final Function()? onTap;
  final String svg;
  final double size;
  final Color? color;

  const SvgIcon(
      {super.key,
      this.onTap,
      required this.svg,
      required this.size,
      this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(svg,
          width: size,
          height: size,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null),
    );
  }
}
