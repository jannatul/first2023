class bookPriceClass{
  String title;
  String author;
  num price;
  bookPriceClass({required this.title,required this.author,required this.price}){
  }

  factory bookPriceClass.factoryBookPriceClass(Map<String, dynamic> myMap){
    return bookPriceClass(title: myMap['title'], author: myMap['author'], price: myMap['price']);
  }
  totalBookPrice(List<num> myList){
    var reducedValue=myList.reduce((value, element) => value+ element);
    print('price of book');
    print(reducedValue);
  }

}