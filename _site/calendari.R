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
            'Silvia Moriana',
            'Rick Steketee',
            'Shevanti Nayagam',
            'Mària Sanchez, Agnes Moragues, Carole Amroune, Mònica Solanes (AC2M)',
            'Antoine Claessens',
            'Daniel López-Acuña TBC',
            'Chagas - pending',
            'Clara Pons',
            'Michelle Turner',
            'Judit Vall Castello',
            'C Chaccour',
            'Jaume Ordi',
            'Gemma Moncunill',
            'Nathan Bertelsen - TBC',
            'Emil Letang',
            'Alfred Cortés Closas')
centre <- c('ISGlobal',
            'Independent consultant',
            'ISGlobal',
            'PATH',
            'Imperial College London',
            'ISGlobal',
            '',
            '',
            '',
            'ISGlobal',
            '',
            'UPF',
            '',
            'ISGlobal',
            'ISGlobal',
            '',
            'ISGlobal',
            'ISGlobal')
titol <- c('Health in infants born to mothers who received Meloquine or Sulphadoxine-Pyrimethamine in Pregnancy',
           'Maternal Health in a Changing World: from Urbanization to Urban Centric Design',
           'Tratar la enfermedad de Chagas: razones para impulsar tratamiento, barreras y principales recomendaciones para mejorar el acceso',
           'Transitioning from Disease Control to Elimination – the example of malaria in southern Africa',
           'TBC - Heptatis B',
           'Why do you even bother me? A (funny) rationale on administrative boundaries when conducting research funded by external agencies',
           'TBC - Genomic Epidemiology',
           '',
           '',
           'Two attempts to measure inequality in health: HIV in Mozambique and Maternal Health in several Sub-Saharan countries',
           'Environmental risk factors for cancer',
           'Impact of the economic crisis on child health',
           'Ivermectin for malaria elimination recent advances and prospects',
           'Results of the CaDMIA study, and futureperspectives for cause of death research',
           'Vaccine-specific cellular immune correlates induced by RTS,S/AS01E in children and infants from a phase III trial in Africa',
           '',
           'Cryptococcal meningitis: a silent, neglected, but easily preventable serial killer',
           'Adaptation of malaria parasites to changes in their environment: to bet or not to bet - TBC')
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
