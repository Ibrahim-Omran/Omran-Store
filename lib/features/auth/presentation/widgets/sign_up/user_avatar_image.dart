import 'package:flutter/material.dart';
import 'package:omran_store/core/common/animations/animate_do.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFadeInDown(
      duration: 500,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: NetworkImage(
            'https://essingtonparishcouncil.gov.uk/wp-content/uploads/2019/07/Person-icon-grey.jpg'
          ),
        ),
    );
  }
}
