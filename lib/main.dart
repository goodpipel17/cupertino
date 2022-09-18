import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(cupterino());
}

class cupterino extends StatefulWidget {
  const cupterino({Key? key}) : super(key: key);

  @override
  State<cupterino> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<cupterino> {
  var _gender = "laki laki";
  bool wifi = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
            backgroundColor: Colors.white,
            middle: Text(
              "Cupertino",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  CupertinoIcons.settings,
                  color: Colors.blue,
                  size: 22,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.blue,
                  size: 22,
                )
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          // Wifi icon is updated based on switch value.
                          wifi
                              ? CupertinoIcons.wifi
                              : CupertinoIcons.wifi_slash,
                          color: wifi
                              ? CupertinoColors.systemBlue
                              : CupertinoColors.systemRed,
                        ),
                        const SizedBox(width: 10),
                        const Text('Wi-Fi'),
                      ],
                    ),
                    Column(),
                    CupertinoSwitch(
                      value: wifi,
                      thumbColor: CupertinoColors.systemBlue,
                      trackColor: CupertinoColors.systemRed.withOpacity(0.14),
                      activeColor: CupertinoColors.systemRed.withOpacity(0.64),
                      onChanged: (bool? value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          wifi = value!;
                        });
                      },
                    ),
                  ],
                ),
                Text("Email"),
                CupertinoTextField(
                  prefix: Icon(
                    CupertinoIcons.mail,
                    color: Color.fromARGB(255, 4, 4, 3),
                  ),
                  padding: EdgeInsets.all(12),
                  placeholder: "Email ID",
                ),
                Padding(padding: EdgeInsets.all(12)),
                Text("Masukan Password"),
                CupertinoTextField(
                  prefix: Icon(
                    CupertinoIcons.lock,
                    color: Color.fromARGB(255, 4, 4, 3),
                  ),
                  padding: EdgeInsets.all(12),
                  placeholder: "Password",
                  suffix: Icon(
                    CupertinoIcons.eye_fill,
                    color: Color.fromARGB(255, 4, 4, 3),
                  ),
                ),
                Padding(padding: EdgeInsets.all(12)),
                Column(
                  children: [
                    CupertinoButton.filled(
                        padding: EdgeInsets.all(4),
                        child: Text("Submit"),
                        onPressed: () {}),
                  ],
                ),
                Padding(padding: EdgeInsets.all(170)),
                CupertinoTabBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person),
                    )
                  ],
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.black,
                  border:
                      Border(top: BorderSide(color: Colors.indigo.shade900)),
                ),
              ],
            ),
          ),
        ));
  }
}
