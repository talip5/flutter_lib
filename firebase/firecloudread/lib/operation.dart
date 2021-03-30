import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> uploadingData(String _productName, String _productPrice,
    bool _isFavourite) async {
  await FirebaseFirestore.instance.collection("products").add({
    'productName': _productName,
    'productPrice': _productPrice,
    'isFavourite': _isFavourite,
  });
}

Future<void> editProduct(bool _isFavourite,String id) async {
  await FirebaseFirestore.instance
      .collection("products")
      .doc(id)
      .update({"isFavourite": !_isFavourite});
}

Future<void> deleteProduct(DocumentSnapshot doc1) async {
  await FirebaseFirestore.instance
      .collection("products")
      .doc(doc1.id)
      .delete();
}