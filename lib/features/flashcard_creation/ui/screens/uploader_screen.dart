import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UploaderScreen extends StatefulWidget {
  const UploaderScreen({super.key});

  static const String name='/uploader-screen';

  @override
  State<UploaderScreen> createState() => _UploaderScreenState();
}

class _UploaderScreenState extends State<UploaderScreen> {
  String? _selectedFileName;
  bool _isClicked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exit'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child:_isClicked ?

            Column(
              children: [
                150.verticalSpace,
                Center(
                  child: SpinKitFadingCircle(
                    color: Color(0xFFb8aee0),
                    size: 100,
                  ),
                ),

                Center(child: Text('Processing...'))
              ],
            )

            :Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upload Your Resources',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp
                    ),),
                    20.verticalSpace,
                    Text('Paste video link',style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700
                    ),),
                    5.verticalSpace,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Paste link here',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500
                        ),
                        prefixIcon: Icon(Icons.link,color: Colors.grey.shade500,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(0xFFb8aee0)
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Color(0xFFb8aee0)
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Color(0xFFb8aee0)
                            )
                        )
                      ),
                    ),
                    20.verticalSpace,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFb8aee0),
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Upload Resources here',style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700
                            ),),
                            2.verticalSpace,
                            Text('Lorem ipsum dolor amet',style: TextStyle(
                                color: Colors.grey.shade500
                            ),),
                            10.verticalSpace,
                            OutlinedButton.icon(
                              onPressed: _pickFile,
                              icon: Icon(Icons.upload,color: Colors.grey.shade800,),
                              label: Text('Upload',style: TextStyle(
                                color: Colors.grey.shade500
                              ),),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Color(0xFFb8aee0)
                                )
                              ),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: _onClickContinueButton,
                  child: Text('Continue',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(double.maxFinite),
                      padding: EdgeInsets.all(9.h),
                      backgroundColor: Color(0xFFb8aee0),
                      foregroundColor: Colors.black,
                      elevation: 6,
                      shadowColor: Colors.grey[200]
                  ),
                ),

              ],
            ),
        ),
      ),
    );
  }
  void _pickFile() async{
    FilePickerResult? result= await FilePicker.platform.pickFiles(
      type: FileType.any
    );
    if(result!=null){
      _selectedFileName=result.toString();
    }
  }

  void _onClickContinueButton() async {
    _isClicked=true;
    setState(() {});
    await Future.delayed(Duration(seconds: 10));
    _isClicked=false;
    setState(() {});

  }

}
