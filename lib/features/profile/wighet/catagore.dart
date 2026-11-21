import 'package:flutter/material.dart';

class Catagore extends StatefulWidget {
  final String value;
  final String label;
  const Catagore(
    {
      super.key,
       required this.value,
        required this.label});

  @override
  State<Catagore> createState() => _CatagoreState();
}

class _CatagoreState extends State<Catagore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal:20.0,
          vertical: 12.0
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 0.23
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    widget.value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),

                    ),
                  Text(
                    widget.label,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    )
                ],
              ),
              
           
      
            ],
          ),
      ),
    );
  }
}