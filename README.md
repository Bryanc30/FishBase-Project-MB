# **Species Location Comparer**

## **Authors** 
Bryan <br>
Maria Tafoya: tafoya.maria07@gmail.com  <br>

## **Purpose:** 
The main purpose of the program will be to take data from
the rgbif package in the R software and format it in such a way that makes it easier for someone to look for a specific component. This might be automatically creating histograms of species distributions or creating maps the visualize species distributions. <br>

### **General Idea**
Take lattitude/longitude information on a particular species (provided by the user) and then plot a dotted map representing the species distribution. Maybe just within California or a relatively smaller region like that. So the data would look like the example fishbase data, but it would also include L/L. We want to first plot the data like the "map_fetch" function does, which will be a challenge since the function doesn't seem to take alternative data (as in, data from sources other than the GBIF API). After plotting the data on the map, we want to use statistical tests to compare the sample data with the GBIF API data. <br>

**The input would have the following:** <br>
	Species Scientific Name <br>
  Lattitude <br>
	Longitude <br>
	Anything else...? Elevation? Year? <br>

### **Pseudocode:**

First, take the species name from the inputted data. The species name should be the samefor the entire set of data, so the code will just take the species name from the first line of data. <br>

Once it has that species name, it will use the occ_search() function to search it. <br>

Next, from the search output, it will take the lattitude and longitude data columns and create a new table that only contains those two columns. <br>

## **Program Workflow:**
<img src="https://github.com/Bryanc30/FishBase-Project-MB/blob/master/programminstuff.png" width="50%" height="50%">

## **Dependencies**
The program can be run using R within Hoffman2, so R studio is not required. However it is recommended for practice purposes. In R within Hoffman2, four packages must donloaded manually: openssl, rgeos, rgbif, and raster. 

### **Getting familiar with rgbif in R studio by trying different commands**
install.packages('openssl') <br>
install.packages('rgeos') <br>
install.packages('rgbif') <br>
occ_search(scientificName = "Ursus americanus", limit = 50) <br>
occ_search(taxonKey=key, limit=20) <br>
key <- name_backbone(name='Helianthus annuus', <br> kingdom='plants')$speciesKey <br>
occ_search(taxonKey=key, limit=20) <br>
splist <- c('Accipiter erythronemius', 'Junco hyemalis', 'Aix sponsa') <br>
keys <- sapply(splist, function(x) name_backbone(name=x)$speciesKey, USE.NAMES=FALSE) <br>
occ_search(taxonKey=keys, limit=5, hasCoordinate=TRUE) <br>
x <- map_fetch(taxonKey = 3118771, year = 2010) <br>
**Since we are using the function "search_occ(___________)" we want to take the scientific name of the species (scientificName parameter) from the dataset and input it into the function.** <br> 

## **Instructions**
The program is designed to run in Hoffman2. The first part of the script is a bash script that will extract species information from a dataset. It is important to analyze the data prior to using the script because the location of species within the data set must be known. <br>

The second part of the script is an R script that requires specific packages to be downloaded. To download the packages do the following within Hoffman2: <br>
1. Load R by typing 'module load R' in the command line. <br>
2. Next in the command line type 'R' <br>
3. '>install.packages('nameofpackage')' <br>

You can now return to Hoffman2 to run the script by typing 'quit()' in the command line. 

To run the script type the following in the command line: <br>
'sh scriptname.sh'

## Expected Output**
The designed script will take species information from a dataset and place the species names into a seperate file. Using the 'occ_search' tool in the rgbif package, the script will take a species name one at a time and run it providing a data set including latitide/longitude values. Using the 'map_fetch' tool in the same package, the script will run species names one at a time and output a map with longiude/latitude values plotted.



