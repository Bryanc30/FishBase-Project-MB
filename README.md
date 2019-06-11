# **Species Location Comparer**

## **Authors** 
Bryan bclem96@gmail.com  <br>
Maria Tafoya: tafoya.maria07@gmail.com  <br>

## **Purpose:** 
The main purpose of the program will be to take input data from the user involving multiple species, as well as locational data, and return both the GBIF database results and create a file folder containing population maps of each of those species. <br>

### **General Idea**
The general idea of the program is to make it easier to see if data you collected on species' locations is unusual compared to what has already been observed in years past. It does so using the GBIF database, which contains hundreds of records on almost every species. <br>

**The input would have the following:** <br>
	Species Scientific Name <br>
  Lattitude <br>
	Longitude <br>

## **Program Workflow:**
<img src="https://github.com/Bryanc30/FishBase-Project-MB/blob/master/programminstuff.png" width="50%" height="50%">

## **Dependencies**
The program can be run using R within [Hoffman2](https://www.hoffman2.idre.ucla.edu/software/), so [R studio](https://www.rstudio.com/products/rstudio/download/) is not required. However it is recommended for practice purposes. In R within Hoffman2, four packages must downloaded manually: openssl, rgeos, rgbif, raster and png. 

## **Instructions**
The program is designed to run in Hoffman2. The first part of the script is a bash script that will extract species information from a dataset. It is important to analyze the data prior to using the script because the location of species within the data set must be known. <br>

The second part of the script is an R script that requires specific packages to be downloaded. To download the packages do the following within Hoffman2: <br>
1. Load R <br>
```
$module load R 
$R
```
**You know you have succesffully loaded R when a message appears in the command line begins with '>'.** <br>

2. Install packages
```
>install.packages("nameofpackage")
```

3. You can now return to Hoffman2 to run the script.
```
>quit()
```

To run the script type the following in the command line: <br>
```
sh scriptname.sh datafile.txt
```

## **Expected Output**
The designed script will take species information from a dataset and place the species names into a seperate file. Using the 'occ_search' tool in the rgbif package, the script will take a species name one at a time and run it providing a data set including latitide/longitude values. Using the 'map_fetch' tool in the same package, the script will run species names one at a time and output a map with longiude/latitude values plotted. <br>

## **References**
Chamberlain S, Barve V, Mcglinn D, Oldoni D, Desmet P, Geffert L, Ram K (2019). _rgbif: Interface to the Global Biodiversity
	Information Facility API_. R package version 1.3.0, <URL:https://CRAN.R-project.org/package=rgbif>. <br>

R Core Team (2019). R: A language and environment for
  statistical computing. R Foundation for Statistical
  Computing, Vienna, Austria. URL https://www.R-project.org/. <br>

https://github.com/ropensci/rgbif

https://www.hoffman2.idre.ucla.edu/software/

## **Acknowledgements**
Thank you to Professor Emily Curd and Daniel Chavez for guidance in creating this program. Thank you to the class of EEB c177 for the feedback and testing this program.


