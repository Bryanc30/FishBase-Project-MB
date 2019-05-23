# Suggestions for a good README 
Every project is different, so consider which of these sections apply to your <br>
project. The sections used in the template are suggestions for most open source <br>
projects Readme files typically tell potential users:<br>

# **Name: Species Location Comparer**

## **Authors** 
Bryan and Maria <br>

The purpose for writing the program <br>
Let people know what your program can do specifically. Provide context and add <br>
a link to any reference visitors might be unfamiliar with. A list of Features <br>
or a Background subsection can also be added here. Also, depending on what you <br>
are making, it can be a good idea to include screenshots or images. Remember <br>


## **Purpose:** 
The main purpose of the program will be to take data from
the rgbif package in the R software and format it in such a way that makes it easier for someone to look for a specific component. This might be automatically creating histograms of species distributions or creating maps the visualize species distributions. <br>

What they need to have installed to run the program <br>
However, consider the possibility that whoever is reading your README is a <br>
novice and would like more guidance. Do they need R packages? Python Libraries? <br>

	 To be determined. <br>

How to actually use the program <br>
The commands to run, how to access the help menu, etc. Show the expected output <br>
if you can. It’s helpful to have inline the smallest example of usage that you <br>
can demonstrate, while providing links to more sophisticated examples if they <br>
are too long to reasonably include in the README. <br>

	To be determined. <br>

In summary, you want your Readme to attract potential users, then convince them <br>
that you program is awesome, and show them how to use it. <br>

## **Getting familiar with rgbif in R by trying different commands**
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


## **General Idea**
Take lattitude/longitude information on a particular species (provided by the user) and then plot a dotted map representing the species distribution. Maybe just within California or a relatively smaller region like that. So the data would look like the example fishbase data, but it would also include L/L. We want to first plot the data like the "map_fetch" function does, which will be a challenge since the function doesn't seem to take alternative data (as in, data from sources other than the GBIF API). After plotting the data on the map, we want to use statistical tests to compare the sample data with the GBIF API data. <br>

**The input would have the following:** <br>
	Species Scientific Name <br>
  Lattitude <br>
	Longitude <br>
	Anything else...? Elevation? Year? <br>

## **Pseudocode:**

First, take the species name from the inputted data. The species name should be the samefor the entire set of data, so the code will just take the species name from the first line of data. <br>

Once it has that species name, it will use the occ_search() function to search it. <br>

Next, from the search output, it will take the lattitude and longitude data columns and create a new table that only contains those two columns. <br>


#Code:
	Stuff

#Example Data:

	Stuff

## **Project Flowchart**

<img src="https://github.com/Bryanc30/FishBase-Project-MB/blob/master/programminstuff.png" width="50%" height="50%">
