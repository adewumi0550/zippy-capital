import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zippy/constants/Color.dart';

class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:40.0,left: 10.0),
                    child: Text('Welcome, Charles',  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: blackColor),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width,
                        child:Card(
                          elevation: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total loan amount', style: TextStyle(color: secondaryColor,fontSize: 13,), ),
                                    Text('...', ),
                                  ],
                                ),

                                RichText(
                                  text: TextSpan(

                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(text: '#562.600', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: primaryColor)),
                                      TextSpan(text: '.00', style: TextStyle(fontWeight: FontWeight.bold,)),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 30,),

                                Padding(
                                  padding: const EdgeInsets.only(left:28.0,right: 100.0,bottom: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          CircleAvatar(radius: 3,backgroundColor: primaryColor,),
                                          Text(' Repaid', style: TextStyle(color: secondaryColor)),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          CircleAvatar(radius: 3,backgroundColor: primaryColor,),
                                          Text(' Unpaid', style: TextStyle(color: secondaryColor)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(

                                        style: DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(text: '#3.890', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: blackColor)),
                                          TextSpan(text: '.00', style: TextStyle(fontWeight: FontWeight.bold,)),
                                        ],
                                      ),
                                    ),

                                    RichText(
                                      text: TextSpan(

                                        style: DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(text: '#3.890', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,)),
                                          TextSpan(text: '.00', style: TextStyle(fontWeight: FontWeight.bold,)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Text(
                                    'Next payment date: 5th May, 2021',
                                    style: TextStyle(color: secondaryColor,)
                                ),
                                SizedBox(height: 30,),
                                Text('Pay Now', style: TextStyle(color: primaryColor,),),


                              ],
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height:  MediaQuery.of(context).size.height*0.04,),

                      dashboardCard(title:'Apply for a Loan', description:'Receive funds in your account \n in as little as 5 minutes'),

                      SizedBox(height:  MediaQuery.of(context).size.height*0.01,),
                      dashboardCard(title:'Get Loans to Pay Bills ', description:'We can help you find the \n most suitable options for \n loans to pay your bills.'),
                    ],
                  )
              ],
              ),
            ),
          ),
        ),

      ),
    );
  }

  dashboardCard({title, description}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: cardBackground),
        height: MediaQuery.of(context).size.height/6,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Text(description, style: TextStyle(fontSize: 13, color: colorCard),)
                ],

              ),
              Padding(
                padding: const EdgeInsets.only(top:18.0,right: 8.0),
                child: Icon(Icons.location_on),
              )


            ],
          ),
        ),
      ),
    );
  }
}
