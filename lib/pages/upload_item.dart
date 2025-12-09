import 'package:flutter/material.dart';
import 'package:recycle_app/services/widget_support.dart';

class UploadItem extends StatefulWidget {
  const UploadItem({super.key});

  @override
  State<UploadItem> createState() => _UploadItemState();
}

class _UploadItemState extends State<UploadItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
                ),
                SizedBox(width: 20,),

                Text("Upload Item",style: AppWidget.healinetextstyle(22),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
