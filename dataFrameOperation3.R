library(dplyr)

dataset <- read.csv('buat_file_csv.csv')

dataset2 = filter(dataset, kelamin == 'male' | umur > 20)
dataset2 = mutate(dataset2, banyak = 2)
dataset2 = select(dataset2, c(nama, kelamin))

# Melakukan piping untuk membuat 3 operasi tadi menjadi lebih ringkas, karena di gabung variabel nya
# piping di lakukan dengan operasi %>%
# dan tidak perlu memanggil ulang variabel nya

dataset %>% filter(kelamin == 'male' | umur > 20) %>% mutate(banyak = 2) %>% select(c(nama, kelamin))

dataset %>% 
  filter(kelamin == 'male' | umur > 20) %>%
  mutate(banyak = 2) %>%
  select(c(nama, kelamin))