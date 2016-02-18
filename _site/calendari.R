library(knitr)
data <- as.Date(c('2016-03-30',
                  '2016-03-31',
                  '2016-04-06',
                  '2016-04-12',
                  '2016-04-18',
                  '2016-04-27',
                  '2016-05-02',
                  '2016-05-11',
                  '2016-05-18',
                  '2016-05-25',
                  '2016-06-01',
                  '2016-06-08',
                  '2016-06-15',
                  '2016-06-22',
                  '2016-06-29',
                  '2016-07-06',
                  '2016-07-13',
                  '2016-07-20'))
data <- format(data, '%b %d')
ponent <- c('María Rupérez',
            'Dra France Donnay',
            '',
            'Rick Steketee',
            'Shevanti Nayagam',
            '',
            'Antoine Claessens',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '')
centre <- c('ISGlobal',
            'Bill and Melina Gates Foundation',
            '',
            'PATH',
            'Imperial College London',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '')
titol <- c('Health in infants born to mothers who received Meloquine or Sulphadoxine-Pyrimethamine in Pregnancy',
           'TBC - Global Health lecture?',
           '',
           'TBC - Global Health Lecture MalEra',
           'TBC - Heptatis B',
           '',
           'TBC - Genomic Epidemiology',
           '',
           '',
           '',
           '',
           '',
           '',
           '',
           '',
           '',
           '',
           '')
lloc <- c('Aula 3, Fac Medicina, 14:00',
          'TBC',
          'Aula 3, Fac Medicina, 14:00',
          'TBC',
          'TBC',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Caixa Forum Auditorium, 17:00 - 18:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00',
          'Aula 3, Fac Medicina, 14:00')
df <- data.frame(Data = data,
                 Ponent = ponent,
                 Centre = centre,
                 Titol = titol,
                 Lloc = lloc)
kdf <- kable(df, format = 'html')

 
# Read index
index <- readLines('index_without_calendari.html')
# Split at the calendari header
splitter <- which(unlist(lapply(index, function(x){grepl('Calendari', x)})))


pre <- index[1:splitter]
post <- index[(splitter+1):length(index)]
# Print output
cat(paste0(pre, collapse = '\n'))
cat(kdf)
cat(paste0(post, collapse = '\n'))

# Rscript calendari.R > index.html




# # Get lines
# index <- paste0(index, collapse = '\n')
# 
# 
# # Write lines to index.html
# con <- file('~/Desktop/test.html')
# writeLines(text = index, con = con)
# close(con)
