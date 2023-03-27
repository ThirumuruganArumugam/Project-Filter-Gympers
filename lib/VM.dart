import 'package:filter/Model.dart';
import 'package:mobx/mobx.dart';
import 'main.dart';

class FilterVM extends FilterModel {
  FilterVM() {
    setBrand(brandCollection: ["Nike", "Addidas", "Puma", "All"]);
    setProduct(productCollection: [
      {
        "Brand": "Nike",
        "Category": "Men's T-shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image1.png",
      },
      {
        "Brand": "Nike",
        "Category": "Men's T-shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image2.png",
      },
      {
        "Brand": "Nike",
        "Category": "Men's T-shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image3.png",
      },
      {
        "Brand": "Addidas",
        "Category": "Men's T-shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image2.png",
      },
      {
        "Brand": "Puma",
        "Category": "Men's T-shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image3.png",
      },
      {
        "Brand": "Addidas",
        "Category": "Men's shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image4.png",
      },
      {
        "Brand": "Puma",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image1.png",
      },
      {
        "Brand": "Puma",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image4.png",
      },
      {
        "Brand": "Puma",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image3.png",
      },
      {
        "Brand": "Addidas",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image2.png",
      },
      {
        "Brand": "Nike",
        "Category": "Men's Shirt",
        "ProductImage": "lib/Helpers/Resources/Asset/Images/image4.png",
      },
    ]);

    setempproduct(productempCollection: productCollection);
  }

  productFilter({required int brandindex}) {
    print("in");
    print(productempCollection);
    setProduct(productCollection: []);
    print(productCollection);
    for (var element in productempCollection) {
      if (brandCollection[brandindex] == element["Brand"]) {
        print(element["Brand"]);
        productCollection.add(element);
        print(productCollection);
      }
    }
    if (brandCollection[brandindex] == "All") {
      setProduct(productCollection: productempCollection);
    }
  }
}
