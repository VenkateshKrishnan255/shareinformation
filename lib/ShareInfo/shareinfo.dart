import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareInfo extends StatelessWidget {
  const ShareInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Information'),
        actions: [
          PopupMenuButton(
              itemBuilder:(context) =>[
                PopupMenuItem(child: Text('Share Name'),
                onTap: (){
                  print('--------------------->ShareName Clicked');
                  _shareName();
                },
                ),
                PopupMenuItem(child: Text('Share MobileNo'),
                onTap: (){
                  print('--------------------->ShareMobileNo Clicked');
                  _shareMobileNo();
                },
                ),
                PopupMenuItem(child: Text('Share MobileNo'),
                  onTap: (){
                    print('--------------------->ShareMobileNo Clicked');
                    _shareEmailId();
                  },
                ),
                PopupMenuItem(child: Text('Share MobileNo'),
                  onTap: (){
                    print('--------------------->ShareMobileNo Clicked');
                    _shareAddress();
                  },
                )
              ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'S.Venkatesh Krishnan',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '+91 8610338291',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'chidambaram.kavitha@gmail.com',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'S2, S K Illam,\n2nd Cross Street,\nPlot No. 5,\nKamalam Nagar,\nNanmangalam,\n'
                  'Chennai - 147.',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  void _shareName() {
    print('---------------->ShareName Method');
    Share.share("S.Venkatesh Krishnan");
  }
  void _shareMobileNo() {
    print('---------------->ShareMobileNo Method');
    Share.share("+91 8610338291");
  }
  void _shareEmailId() {
    print('---------------->ShareName Method');
    Share.share("chidambaram.kavitha@gmail.com");
  }
  void _shareAddress() {
    print('---------------->ShareName Method');
    Share.share("S2, S K Illam,\n2nd Cross Street,\nPlot No. 5,\nKamalam Nagar,\nNanmangalam,\nChennai - 147.");
  }
}
