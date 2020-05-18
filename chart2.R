library(dplyr)
library(ggplot2)

dataset = read.csv('dataset_superstore.csv')


#geom_smooth untuk menunjukkan hasil regresi
#lab digunakan untuk mengubah nama Axis 

plot1 = ggplot(dataset, aes(x = sales, y = profit)) +
          geom_point(color = '#873bd9', size = 4, shape = 17) +
          geom_smooth(method = 'lm', color = 'red', linetype = 'dotted', size = 3) +
          labs(title = 'coba coba',
               subtitle = 'haloo',
               caption = 'Bahasa R') +
          xlab("Order Sales") +
          ylab("Order Profit") +
          xlim(c(0, 7500)) + ylim(c(-2500,2500)) +
          theme(
            plot.title = element_text(color = 'blue', size = 15, face = 'bold'),
            plot.subtitle = element_text(color = 'blue', size = 10, face = 'italic'),
            legend.position = 'top'
          )

plot1

ggsave('tes.png', plot1)
