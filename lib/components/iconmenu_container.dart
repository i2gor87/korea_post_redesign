import 'package:flutter/material.dart';
import 'package:koreapostredesign/components/menu_icon.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: MediaQuery.of(context).size.height * 0.25,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '택배예약',
                      outline: true,
                      iconData: Feather.truck,
                    ),
                    onTap: () {
                      print('hello');
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: 'EMS예약',
                      outline: true,
                      iconData: SimpleLineIcons.plane,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '우편번호검색',
                      outline: true,
                      iconData: MaterialCommunityIcons.database_search,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '우체국찾기',
                      outline: true,
                      iconData: MaterialCommunityIcons.map_search_outline,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '착불요금결제',
                      outline: true,
                      iconData: Feather.box,
                    ),
                    onTap: () {
                      print('hello');
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '주거이전신청',
                      outline: true,
                      iconData: SimpleLineIcons.location_pin,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '간편사전접수',
                      outline: true,
                      iconData: MaterialCommunityIcons.cellphone_android,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: 'POST Shop',
                      outline: true,
                      iconData: FontAwesome.building,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
        ],
      ),
    );
  }
}
