import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "../services/firestore.dart";
import "minifitalina.dart";


class Remedios extends ChangeNotifier {

  final List<Minifitalina> _donation = [];

  final List<Minifitalina> _cart = [];

  List<Minifitalina> get donation => _donation;

  List<Minifitalina> get cart => _cart;

  remedios() {
    _startRemedioStream();
  }

  void _startRemedioStream() {

    FirestoreService().getRemedioStream().listen((QuerySnapshot snapshot) {
      _donation.clear();
      for(var data in snapshot.docs){
        _donation.add(Minifitalina(
          name: data["name"],
          quanty: data["quanty"],
          description: data["description"],
          imagePath: data["imagepath"]));
      }
      notifyListeners();
    });
  }

  //aumentar a quantidade de produto no carrinho
  void incrementQuantity(Minifitalina item) {
    _cart.firstWhere((cartItem) => cartItem == item).incrementQuantity();
    notifyListeners();
  }

  //diminuir a quantidade de produto no carrinho
  void decreamentQuantity(Minifitalina item) {
    _cart.firstWhere((cartItem) => cartItem == item).decreamentQuantity();
    notifyListeners();
  }

  // zerar quantidade de produto no carrinho
  void initialQuantity(Minifitalina item) {
    _cart.firstWhere((cartItem) => cartItem == item).initialQuantity();
    notifyListeners();
  }

  void addToCart(Minifitalina item) {
    if (_cart.contains(item)) {
      incrementQuantity(item);
      notifyListeners();
    } else {
      _cart.add(item);
      incrementQuantity(item);
      notifyListeners();
    }
  }

// remover do carrinho
  void removeFromCart(Minifitalina item) {
    initialQuantity(item);
    _cart.remove(item);
    notifyListeners();
  }

// diminuir quantidade no carrinho
  void decreamentFromCart(Minifitalina item) {
    decreamentQuantity(item);
    notifyListeners();
  }
}

