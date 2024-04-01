class ProductData {
  static List<Map<String, dynamic>> cartProductData = [];
  static Set<Map<String, dynamic>> cartData = {};
  static void convertUniqueData() {
    cartProductData = cartData.toList();
  }

  static num totalprice() {
    num sum = 0.0;
    for (var element in cartProductData) {
      sum = sum + element['total'];
    }
    return sum;
  }

  static num grandtotal() {
    num add = 0.0;
    for (var element in cartProductData) {
      add = totalprice() + element['delivery'];
    }
    return add;
  }

  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      'categoryName': 'Mobile',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Galaxy S21 Ultra",
          "price": 1299.99,
          "description":
              "Samsung's flagship smartphone featuring a stunning 6.8-inch Dynamic AMOLED display,",
          "category": "flagship",
          "thumbnail":
              "https://m.media-amazon.com/images/I/71bjBI+h9fL._SX679_.jpg",
          "image": [
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/t/3/u/-original-imagt46g4qahyjza.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/u/b/o/-original-imagtnqjmk7dxnkh.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/h/w/9/-original-imagtnqjgrhfxxrc.jpeg?q=70&crop=false",
          ]
        },
        {
          "id": 2,
          "title": "iPhone 13 Pro",
          "price": 999.00,
          "description":
              "Apple's latest flagship iPhone with a stunning ProMotion display, powerful A15 Bionic chip",
          "category": "flagship",
          "thumbnail":
              "https://m.media-amazon.com/images/I/51G+UDiRqGL._SX679_.jpg",
          "image": [
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/9/e/e/-original-imaghx9q5rvcdghy.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/g/f/y/-original-imaghxcpwzegadzn.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/v/j/y/-original-imagtc6fn5zhecfd.jpeg?q=70&crop=false",
          ]
        }
      ]
    },
    {
      'categoryName': 'Clothing',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Men's Slim-Fit Shirt",
          "price": 39.99,
          "description":
              "A stylish and versatile slim-fit shirt for men, perfect for both formal.",
          "category": "men's clothing",
          "thumbnail":
              "https://m.media-amazon.com/images/I/61zorR45cML._SX679_.jpg",
          "image": [
            "https://m.media-amazon.com/images/I/71ts7uv0WFL._SY879_.jpg",
            "https://m.media-amazon.com/images/I/41FEWlXPBqL._SY445_SX342_.jpg",
            "https://m.media-amazon.com/images/I/71kh27MQabL._SY741_.jpg"
          ]
        },
        {
          "id": 2,
          "title": "Women's Floral Dress",
          "price": 49.99,
          "description":
              "A beautiful floral dress for women, featuring a flattering fit and vibrant floral print.",
          "category": "women's clothing",
          "thumbnail":
              "https://m.media-amazon.com/images/I/81cTI2o5DbL._SY879_.jpg",
          "image": [
            "https://m.media-amazon.com/images/I/81cTI2o5DbL._SY879_.jpg",
            "https://m.media-amazon.com/images/I/81JzQwnf9ZL._SX679_.jpg",
            "https://m.media-amazon.com/images/I/71ft8HDknTL._SY741_.jpg"
          ]
        }
      ]
    },
    {
      'categoryName': 'Makeup',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Mac Foundation",
          "description":
              "Achieve a natural, matte finish with this lightweight foundation. ",
          "price": 7.99,
          "category": "makeup",
          "thumbnail":
              "https://m.media-amazon.com/images/I/31y7dj5O07L._SX300_SY300_QL70_FMwebp_.jpg",
          "image": [
            "https://m.media-amazon.com/images/I/31s9aL6YWpL._SX300_SY300_QL70_FMwebp_.jpg",
            "https://m.media-amazon.com/images/I/31ojKoTKrtL._SX300_SY300_QL70_FMwebp_.jpg",
            "https://m.media-amazon.com/images/I/41cY7oM+VbL._SY300_SX300_.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Beauty Gloss",
          "description":
              "Get explosive shine that feels as good as it looks with this non-sticky lip gloss.",
          "price": 19.00,
          "category": "makeup",
          "thumbnail":
              "https://m.media-amazon.com/images/I/41IpTE+62lL._SY300_SX300_.jpg",
          "image": [
            "https://m.media-amazon.com/images/I/41b5WlafHLL._SX300_SY300_QL70_FMwebp_.jpg",
            "https://m.media-amazon.com/images/I/31sqME3iKKL._SX300_SY300_QL70_FMwebp_.jpg",
            "https://m.media-amazon.com/images/I/41fQzcGPjUL._SY300_SX300_QL70_FMwebp_.jpg",
          ]
        },
      ]
    },
  ];
}
