import 'package:alswebsite/widgets/glassmorpism.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:Colors.black54,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(

            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                 Container(
                   height: height,
                   width: width,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20)
                   ),
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               CircleAvatar(
                                 radius: 25,
                                 backgroundImage: AssetImage("asstes/als.jpg")
                               ),
                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){},
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Home'
                                     ,style: GoogleFonts.lato(fontSize: height*0.03),),
                                  ),
                                 ),
                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){},
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('About us'
                                       ,style: GoogleFonts.lato(fontSize: height*0.03),),

                                   ),
                                 ),

                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){},
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Our App',
                                     style: GoogleFonts.lato(fontSize: height*0.03),),

                                   ),
                                 ),

                               SizedBox(width: 20,),
                               InkWell(
                                 onTap: (){},
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Contacts',
                                       style: GoogleFonts.lato(fontSize: height*0.03),),

                                   ),
                                 ),

                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: height*0.9,
                             width: width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                 image: AssetImage("asstes/backup.jpg"),
                                 fit: BoxFit.cover,
                               ),
                             ),
                             alignment: Alignment.center,
                             child:  Center(
                               child:  // alignment is for centering the frostedglass, we don't use Center();
                               //  because if you want to change its position and remove the Center();
                               //  widget, everything will get messy the script crashes.
                               FrostedGlassBox(
                                 // theWidth is the width of the frostedglass
                                 theWidth: 200.0,
                                 // theHeight is the height of the frostedglass
                                 theHeight: 200.0,
                                 // theChild is the child of the frostedglass
                                 theChild: Text(
                                   'Hello world',
                                   style: TextStyle(color: Colors.white54, fontSize: 30.0),
                                 ),
                               ),
                             ),

                           ),
                         ),
                       ],
                     ),
                   ),
                 )
                ],
              ),
            ),
          ),
        ),
      )




    );
  }
}
