namespace my.bookshop;

// tabella libri
entity Books {
  key ID     : Integer;
      title  : String;
      stock  : Integer; //disp magazzino
      author : Association to one Authors;
}

entity Authors {
  key ID        : Integer;
      firstname : String(50);
      lastname  : String(50);
}
