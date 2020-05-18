library(dplyr)
library(ggplot2)

dataset = read.csv('buat_file_csv.csv')

#scatter plot berbentuk koordinat

#geompoint adalah sebuah method untuk memunculkan titik2 koordinat nya. tanpa geom point tidak muncul titik nya
#dan setiap point melambangkan 1 row (baris)
ggplot(dataset, aes(x = umur, y = penghasilan)) + geom_point(colour = 'blue')

#histogram di gunakan untuk melihat distribusi suatu variabel. ada bins dan juga binwidth
ggplot(dataset, aes(x = umur)) + geom_histogram(binwidth = 10)


#geom bar untuk membuat sebuah chart bar
#fill jg bisa di isi dengn warna, dan hapus method aes nya
ggplot(dataset, aes(x = umur, y = penghasilan)) + geom_bar(stat = 'identity', width = 0.5, aes(fill = nama))


#pie chart
#membuat pie chart adalah dengan membuat chart batang terlebih dahulu dan tambahkan method coord_polar("y", start = 0)
ggplot(dataset, aes(x = "", y = umur, fill = nama)) + geom_bar(stat = 'identity', width = 1) + coord_polar("y", start = 0)


#line chart
ggplot(dataset, aes(x = umur, y = penghasilan)) + stat_summary(fun.y = sum, geom = 'line')

ggplot(dataset, aes(x = umur, y = penghasilan)) + geom_line() + geom_point(colour = 'blue')