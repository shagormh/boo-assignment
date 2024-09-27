class BOOK{
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  BOOK(this.title, this.author, this.publicationYear, this.pagesRead){
    totalBooks++;
  }

  void read(int pages){
    pagesRead += pages;

  }

  int getPagesRead(){
    return pagesRead;
  }

  String getTitle(){
    return title;
  }

  String getAuthor(){
    return author;
  }

  int getPublicationYear(){
    return publicationYear;
  }

  int getBookAge(){
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }



}

void main(){
  
  BOOK book1 = BOOK("Microprocessor", "Ramesh S. Gaonkar", 1996, 110);
  BOOK book2 = BOOK("Assembly Language Programming", "Charles Marut", 1992, 167);
  BOOK book3 = BOOK("Operating System", "ABRAHAM SILBERSCHATZ", 1988,110);


  book1.read(20);
  book2.read(40);
  book3.read(60);

  print('Book 1:');
  print('Title: ${book1.getTitle()}');
  print('Author: ${book1.getAuthor()}');
  print('Publication Year: ${book1.getPublicationYear()}');
  print('Pages Read: ${book1.getPagesRead()}');
  print('Book Age: ${book1.getBookAge()} years\n');

  print('Book 2:');
  print('Title: ${book2.getTitle()}');
  print('Author: ${book2.getAuthor()}');
  print('Publication Year: ${book2.getPublicationYear()}');
  print('Pages Read: ${book2.getPagesRead()}');
  print('Book Age: ${book2.getBookAge()} years\n');

  print('Book 3:');
  print('Title: ${book3.getTitle()}');
  print('Author: ${book3.getAuthor()}');
  print('Publication Year: ${book3.getPublicationYear()}');
  print('Pages Read: ${book3.getPagesRead()}');
  print('Book Age: ${book3.getBookAge()} years\n');

  print('Total books created: ${BOOK.totalBooks}');

}

