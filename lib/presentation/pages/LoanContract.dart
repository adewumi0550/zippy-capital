import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zippy/constants/Color.dart';
import 'package:zippy/presentation/widgets/Search.dart';

class Loan extends StatefulWidget {

  @override
  _LoanState createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:30.0,left: 10.0),
                    child: Text('Apply \n for Loan',  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30,color: blackColor),),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                   Padding(
                     padding: const EdgeInsets.only(top:30.0,left: 10.0),
                     child: Text('Details',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: blackColor)),
                   ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.005,),

                  Search(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      dashboardCard(title:'Consumer loan', description:'Manage your financial life'),

                      SizedBox(height:  MediaQuery.of(context).size.height*0.04,),
                      dashboardCard(title:'Refinance', description:'Save your money  \n by reducing overpayment '),
                      buttonLoan()

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
        decoration: BoxDecoration(color: Colors.white,),
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

  Widget buttonLoan() {


    return   Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 20.0,),
        child:   Container(
            child: MaterialButton(
                minWidth: double.infinity,
                height: 60.0,
                color: hoverColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Apply for Loan',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: ()  {
                  print('Apply for Loan');
                 }
            )
        )

    );
  }

}
