import '../index.dart';
import 'package:flukit/flukit.dart';
import 'package:provider/provider.dart';

class MachineSettingRoute extends StatefulWidget {
  @override
  _MachineSettingRouteState createState() => _MachineSettingRouteState();
}

class _MachineSettingRouteState extends State<MachineSettingRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(), // 构建主页面
    );
  }

  Column buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        buildButtonColumn(Icons.call, 'CALL'),
        buildButtonColumn(Icons.near_me, 'ROUTE'),
        buildButtonColumn(Icons.share, 'SHARE')
      ]),
    );
  }
}
