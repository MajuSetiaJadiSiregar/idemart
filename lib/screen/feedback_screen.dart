part of "screen.dart";

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF239BD8),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Color(0xFFFED325),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Anda punya ide lain ?',
                            style: Theme.of(context).textTheme.headline1?.copyWith(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Tuliskan ide dan pendapatmu',
                                hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: true
                                    ? InkWell(
                                  onTap: (){},
                                  child: Icon(
                                    Icons.clear,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                )
                                    : null,
                              ),
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.justify,
                              maxLines: 6,
                              keyboardType: TextInputType.multiline,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: ElevatedButton(
                                child: Text("SUBMIT"),
                               onPressed: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                          ),
                                          child: Container(
                                            height: 300,
                                            padding: EdgeInsets.all(12.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                SvgPicture.asset("assets/images/Check-big.svg", width: 150),
                                                SizedBox(height: 10),
                                                Text(
                                                  "Ide Anda berhasil tersubmit !",
                                                  style: Theme.of(context).textTheme.headline1?.copyWith(
                                                    fontFamily: "Poppins",
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SizedBox(
                                                  width: 320.0,
                                                  child: RaisedButton(
                                                    color: Color(0xFF239BD8),
                                                    onPressed: () {},
                                                    child: Text(
                                                        "KEMBALI KE HALAMAN UTAMA",
                                                        style: TextStyle(
                                                            fontFamily: "Poppins",
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 14
                                                        )
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                      );
                                    },
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}