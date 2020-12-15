import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';


List<MenuItem> items = [
  new MenuItem<int>(
    id: 0,
    title: 'Home',
    icon: Icons.home,
 
  ),
  
  new MenuItem<int>(
    id: 1,
    title: 'Profile',
    icon: Icons.person,
   
  ),
  new MenuItem<int>(
    id: 2,
    title: 'Orders',
    icon: Icons.shopping_cart,
   
  ),
  new MenuItem<int>(
    id: 3,
    title: 'Offers and Promo',
    icon: Icons.loyalty,
    
  ),
  new MenuItem<int>(
    id: 4,
    title: 'Privacy Policy',
    icon: Icons.library_books,
    
  ),
  new MenuItem<int>(
    id: 4,
    title: 'Security',
    icon: Icons.security,
   
  ),
];
final menu = Menu(
  items: items.map((e) => e.copyWith(icon: null)).toList(),
);

final menuWithIcon = Menu(
  items: items,
);
