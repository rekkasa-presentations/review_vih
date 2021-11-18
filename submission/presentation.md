---
title: "Evaluating bias and variance across different validation methods for disease simulation models"
header-includes:
  - \usepackage{amssymb}
  - \usepackage{amsmath}
  - \usepackage{bm}
  - \newcommand\given[1][]{\:#1\vert\:}
output:
  ioslides_presentation:
    smaller: TRUE
    keep_md: TRUE
    transition: slower
    widescreen: TRUE
    css: styles.css
  beamer_presentation: default
---




# Optimism 
- Prediction models are targeted to new patients

- <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">SAMPLE</span> from <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">POPULATION</span> of interest

- Fit model in <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">SAMPLE</span> 

- <span style="font-weight: bold">Optimism</span> = <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">AUC</span> -- <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">AUC</span> 

# Optimism correction | Split sample
- Split <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">TRAIN</span> and <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">TEST</span> 

- Fit model in <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">TRAIN</span>

- Calculate optimism-corrected AUC from <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">TEST</span> 

# Optimism correction | Cross-validation
- Split <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">TRAIN</span> and <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">TEST</span> 

- Fit model in <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">TRAIN</span>

- Calculate AUC from <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">TEST</span> 

- Reverse and repeat

- Calculate optimism-corrected AUC as the average performance on the different <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">TEST</span> sets

# Optimism correction | Bootstrap 
## Test
- Draw <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">BOOTSTRAP SAMPLE</span> from <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">SAMPLE</span> 

- Fit model in <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">BOOTSTRAP SAMPLE</span>

## Test 4
- Apply model on <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">SAMPLE</span>

- <span style="font-weight: bold">Optimism</span> = <span style="background-color: coral; color: white;border-radius: 25px; padding: 6px">AUC</span> -- <span style="background-color: green; color: white;border-radius: 25px; padding: 6px">AUC</span> 
