# **Vignette** <br>
## **Running the Script** <br>
1. Download the [rgbif](https://cran.r-project.org/web/packages/rgbif/rgbif.pdf) package manually in R, within Hoffman2. Also download four additional packages: [openssl](https://cran.r-project.org/web/packages/openssl/index.html), [rgeos](https://cran.r-project.org/web/packages/rgeos/index.html),[raster](https://cran.r-project.org/web/packages/raster/index.html), and [png](https://cran.r-project.org/web/packages/png/index.html). <br>
In the command line, type the following:

```
$module load R 
$R 
>install.packages("rgbif")
>install.packages("openssl") 
>install.packages("rgeos") 
>install.packages("raster")
>install.packages("png")
  ```
  
After the packages have installed, return to Hoffman2. <br>
 ``` 
 >quit() 
 ```
  
2. In order to run the bash script, the bash script and R scripts must be in the same directory as the eDNA data set file.<br>
  To run the bash script, do the following.<br>
  ```
  $sh BashScript.sh ExampleData.txt
  ```
  
  **This Vignette directory contains a file called vignette.txt with detailed step-by-step instructions on how to use the scripts and what the outputs should look like.** 
  
 
 
  
