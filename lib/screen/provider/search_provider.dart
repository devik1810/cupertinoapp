import 'package:flutter/cupertino.dart';

class SearchProvider extends ChangeNotifier
{
  int i = 0;
  void changeIndex(int x)
  {
    i++;
  }
}