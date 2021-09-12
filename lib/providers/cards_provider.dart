import 'package:flutter/material.dart';

class CardsProvider with ChangeNotifier {
  List<Map<String, dynamic>> _cardsList = [
   {
     "2021":{
       "September":[
         {
           "id":"21001",
           "date":"20210901",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"fox.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
         {
           "id":"21002",
           "date":"20210902",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"adderSnake.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
         {
           "id":"21003",
           "date":"20210903",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"aradwolf.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
         {
         "id":"21004",
           "date":"20210904",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"ardwark.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
         {
         "id":"21005",
           "date":"20210905",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"fox.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
         {
         "id":"21006",
           "date":"20210906",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"adderSnake.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
           {
         "id":"21007",
           "date":"20210907",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"aradwolf.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21008",
           "date":"20210908",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"ardwark.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21009",
           "date":"20210909",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"fox.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21010",
           "date":"20210910",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"adderSnake.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21011",
           "date":"20210911",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"aradwolf.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21012",
           "date":"20210912",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"ardwark.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21013",
           "date":"20210913",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"fox.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
         "id":"21014",
           "date":"20210914",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"adderSnake.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
          {
          "id":"21015",
           "date":"20210915",
           "animal":"Gray Wolf",
           "scfName":"Vulpes Vulpes",
           "imgPath":"aradwolf.svg",
           "description":"The gray wolf is a powerful warrior, who moves alone and stalks prey. The wolf is known to hunt in packs and fight amongst themselves from terriroty",
         },
       ]
     }
   }
  ];

  List<Map<String,dynamic>> get cardListByMonth{
    return [..._cardsList[0]["2021"]["September"]];
  }

  
}
