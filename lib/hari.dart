import 'package:flutter/material.dart';

class gst1 extends StatefulWidget {
  const gst1({super.key});

  @override
  State<gst1> createState() => _gst1State();
}

class _gst1State extends State<gst1> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();
  TextEditingController t5=TextEditingController();
  TextEditingController t6=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('GST Calculator',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Row(
              children: [
                Text("Amount",style: TextStyle(fontSize: 20),),
              ],
            ),
            TextFormField(controller: t1),
            Row(
              children: [
                Text("Tax",style: TextStyle(fontSize: 20),),
              ],
            ),
            TextFormField(controller: t2,),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50,width: 170,
                    child: TextFormField(controller: t3,
                      decoration: InputDecoration(
                        hintText: 'included tax amount',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 50,width: 170,
                      child: TextFormField(controller: t5,
                        decoration: InputDecoration(
                          hintText: 'Included tax',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(height: 50,width: 170,
                    child: TextFormField(controller: t4,
                      decoration: InputDecoration(
                        hintText: 'excluded tax amount',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 50,width: 170,
                      child: TextFormField(controller: t6,
                        decoration: InputDecoration(
                          hintText: 'Excluded tax',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: ()
              {
                setState(() {
                  double a=double.parse(t1.text);
                  double b=double.parse(t2.text);
                  double c=(a*(100/(100+b)));
                  t3.text=c.toString();
                });
              },
                child: Text("included tax amount",style: TextStyle(fontSize: 20,color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent,fixedSize:Size(300, 40)),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: ()
              {
                setState(() {
                  double a=double.parse(t1.text);
                  double b=double.parse(t2.text);
                  double c= a-(a*(100/(100+b)));
                  t5.text=c.toString();

                });
              }, child: Text("included tax",style: TextStyle(fontSize: 20,color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent,fixedSize:Size(300, 40)),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: ()
              {
                setState(() {
                  double a=double.parse(t1.text);
                  double b=double.parse(t2.text);
                  double c=a+(a*b/100);
                  t4.text=c.toString();

                });


              }, child: Text("excluded tax amount",style: TextStyle(fontSize: 20,color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent,fixedSize:Size(300, 40)),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: ()
              {
                setState(() {
                  double a=double.parse(t1.text);
                  double b=double.parse(t2.text);
                  double c= a*b/100;
                  t6.text=c.toString();
                });
              }, child: Text("excluded tax ",style: TextStyle(fontSize: 20,color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent,fixedSize:Size(300, 40)),),
            ),
          ],
        ),
      ),
    );
  }
}