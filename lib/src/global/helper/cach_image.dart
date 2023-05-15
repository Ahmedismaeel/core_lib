import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:core/src/global/extensions/device_utils.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final double radius;
  const CacheImage(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
          height: Device.height(scale: height, context: context),
          width: Device.width(scale: width, context: context),
          fit: BoxFit.cover,
          imageUrl: image,
          fadeOutDuration: Duration(seconds: 0),
          fadeInDuration: Duration(seconds: 0),
          placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    color: AppColor.neutral,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(10, 7),
                          blurRadius: 24)
                    ],
                    image: const DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.fill,
                    )),
                height: Device.height(scale: height, context: context),
                width: Device.width(scale: width, context: context),
                child: Center(child: CircularProgressIndicator()),
              ),
          errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: AppColor.neutral,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                        offset: Offset(10, 7),
                        blurRadius: 24)
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fill,
                  )),
              height: Device.height(scale: height, context: context),
              width: Device.width(scale: width, context: context))),
    );
  }
}
