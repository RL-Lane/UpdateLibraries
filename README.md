# UpdateLibraries
## This is a human-guided tool.  It gathers any lines which contain the strings "library(" and "import "

## Instructions:

### Jupyter Notebook  

1. Locate the root of the working directory in which you wish to search.  Copy the filepath.  
2. Open "01_update_libraries.ipynb".  You may need to launch it from a fresh Jupyter Notebook environment.  
3. Search and replace any parts of the notebook containing "C:/xxx" with the filepath you copied.  Use the current directory for the csv save location.  
4. Run only the first two cells. 

### Excel
I have provided a sample of search_results.csv.  This will be replaced every time you run this notebook, but that's okay.  Open it.  

5. Highlight cells A1 - B1  
6. Click Data -> Sort & Filter -> Filter.  
7. Filter to the language you want to start with (.py and .ipynb are both python).  
8. Look for lines of text that don't line up.  Filter out bad lines, such as those containing library(library), or if(!library, or "_", or starting with "#".  
9. Copy the first column.  
10. Open libraries.xlsx .  
11. Go to the Python tab.  
12. Go to the last row and paste in your new data.  
13. Delete column B, and scroll to the top.  
14. Click Data -> Data Tools -> Remove Duplicates.  
15. In B1, type out the second word from column A.  Repeat this until you see an autofill that will complete the list of libraries.  
16. Copy Column B into a new text document, and save it as py_libs.csv .  
17. Repeat steps 11-16 for R.  

### Jupyter Notebook

18. Run the last two cells.

### R Studio
19. Open "02_updateLibraries.R"
20. Replace the string starting with "C:/xxx" with the correct full filepath to the r_libs.csv .
21. Run everything.
22. Because some of the R packages need to restart the R environment in order to install (especially if they're already loaded in memory), you will need to repeatedly run this script until you see that everything in the list is up to date.

#  Conclusion

This is not a perfect set of scripts, but it also shouldn't need to be run frequently.  Because I have provided a sample set of libraries which my past projects have used, you may find that you only need to run steps 1-4 and 18-22.