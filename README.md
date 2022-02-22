# code-organization
Repository for showing "good enough" practices for code organization


This repository provides a model for code structure, based upon [Good enough practices in scientific computing, by Wilson et. al](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510).


We've largely been using R Notebooks for coding, which is fine for tutorials and such, but probably isn't the best for sharing and reproducability. Looking ahead toward a final product, we should restructure things by doing the following:

1. Create the following directories:  
   - src (for R code)
   - data (for any .csv files)
   - output (for any generated images, reports, etc.)
2. Migrate your code to .R files: 
   - in `src` create a file called main.R
     - iteratively begin moving your code to this file, beginning with library() declarations
     - comment like it's going out of style
     - test frequently! (move a little, test, move a little, test, etc.)
3. Create README.md files in `output` and `data`
   - this will allow you to push them to your repo (empty directories can't be pushed)
   - add some very basic markdown to each
4. (Optonal, yet recommended!) In `src` create a file called functions.R
     - create any custom functions of common tasks from main.R in functions.R
     - near the top of main.R, use `source("src/functions.R") to make the custom functions available
     - comment like crazy, so future users of your code understand what's happening
5. Use the main README.md to create your SSA (Species Status Assessment). Refer to markdown syntax to create a decent looking document. (Note: this is something one teammate could work on while another is doing coding steps above, since they are different files).
   
  