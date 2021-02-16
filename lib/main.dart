import 'package:flutter/material.dart';
import 'package:nuevawebflutter_1/widgets/customAppbar_widget.dart';
import 'package:nuevawebflutter_1/widgets/customDrawer_widget.dart';

void main() {
  runApp(MyApp());
  }

  const KdesktopBreakpoint = 1024;
  bool fullScreen;
  
  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Resposive Demo",
        home: DashBoardPage(),
              );
          }
            
        }
        
        class DashBoardPage extends StatefulWidget{
          @override
          State<StatefulWidget> createState() => _DashBoardPageState();
                  }
          
  class _DashBoardPageState extends State<DashBoardPage>{
              @override
  Widget build(BuildContext context) {

    fullScreen = (MediaQuery.of(context).size.width >= KdesktopBreakpoint)
    ? true
    : false;


    return LayoutBuilder(
      builder: (context, dimens) => Scaffold(
        drawer: !fullScreen ? builderDrawer(context) : null,
        appBar: buildAppbar(),
        body: Row(
          children: [
            if(fullScreen) builderDrawer(context),
            Expanded(child: Container(
              alignment: Alignment.topCenter,
              child: buildBody(dimens.maxWidth, dimens.maxWidth),))
                        ],
                      ),
                              ),
                            );
                        }
              
                buildBody(double maxWidth, double maxWidth2) {
                  return Container(
                    color: Colors.blue,
                  );
                }
        
          
}
