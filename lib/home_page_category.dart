import 'package:flutter/material.dart';
import 'package:flutter_app/app_state.dart';
import 'package:flutter_app/model/category.dart';
import 'package:provider/provider.dart';


class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState=Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId==category.categoryId;

    return GestureDetector(
      onTap: (){
        if(!isSelected){
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 90,
      height: 90,
      decoration:  BoxDecoration(
        border: Border.all(color: isSelected ? Colors.amber : Colors.white, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(20),),
        color: isSelected ? Colors.white: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(category.icon, color: Colors.amber, size: 40,),
          SizedBox(height: 10),
          Text(category.name,style: TextStyle(
            color: isSelected ? Colors.amber: Colors.white,
            fontSize: 13,
          ),)
        ],
      ),
      ),




    );
  }
}
