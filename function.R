
luas_lingkaran = function(r) {
  phi = 3.14
  luas = phi * (r^2)
  return(luas)
}

luas_segitiga = function(alas, tinggi) {
  return(alas * tinggi / 2)
}

cetak = function() {
  print("Hello World!!!")
}

lima = function() {
  return(5)
}

berhitung = function(n) {
  for (i in 1:n) {
    print(i)
  }
}