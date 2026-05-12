import 'package:flutter/material.dart';

import '../utils/app_color.dart';
class TmAppbar extends StatelessWidget implements PreferredSize{
  const TmAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.Pcolor,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pakhi.jpg'),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AL-AMIN',style:Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),),
              Text('alaminkhan133742@gmail.com',style:Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),),
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.logout))
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}