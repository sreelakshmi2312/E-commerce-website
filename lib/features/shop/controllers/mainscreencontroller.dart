import 'package:get/get.dart';
import '../screens/homescreen.dart';
import '../screens/profilescreen.dart';
import '../screens/storescreen.dart';
import '../screens/wishlistscreen.dart';


class MainScreenController extends GetxController{
   Rx<int> selectedpageindex=0.obs;
   final screens=[const HomeScreen(),const StoreScreen(), const WishListScreen(),const ProfileScreen()];
   }
