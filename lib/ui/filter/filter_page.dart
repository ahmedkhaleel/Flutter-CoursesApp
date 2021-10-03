import 'package:flutter/material.dart';
import 'package:flutter_appm/constants.dart';
import 'package:flutter_appm/state/filter_state_container.dart';
import 'package:flutter_appm/ui/filter/filter_widged.dart';


import '../../strings.dart';

class FilterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FilterPageState();


}

class _FilterPageState extends State<FilterPage>{
  FilterState state;
@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    state = FilterStateContainer.of(context);
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text(Strings.filter),
         ),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children:<Widget> [
             FilterWidget(
              value: Constants.iosFilter,
               groupValue: state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.android,
             ),
             FilterWidget(
               value: Constants.androidFilter,
               groupValue: state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.ios,
             ),
             FilterWidget(
               value: Constants.sssFilter,
               groupValue: state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.sss,
             ),
             FilterWidget(
               value: Constants.flutterFilter,
               groupValue: state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.flutter,
             ),
             FilterWidget(
               value: Constants.macosFilter,
               groupValue:state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.macos,
             ),
             FilterWidget(
               value: Constants.allFilter,
               groupValue: state.filterValue,
               onChanged: _handleRRadioValuechange,
               text: Strings.all,
             ),
           ],
         ),
         ),
       ),
     );

  }

  void _handleRRadioValuechange(int value) async {
   state.updateFilterValue(value);
  }
}