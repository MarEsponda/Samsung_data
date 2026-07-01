# Project: Getting and Cleaning Data Course Project

This repository contains the R code and documentation for the final project of the **Getting and Cleaning Data** course from Johns Hopkins University on Coursera.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data set that can be used for later analysis.

## Dataset
The data used in this project represents measurements collected from the accelerometers from the Samsung Galaxy S II smartphone worn by 30 volunteers while performing six different physical activities. 

* **Full Description:** [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* **Source Data (ZIP File):** [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Repository Files

* `README.md`: This file, providing an overview of the repository, the dataset, and how the script works.
* `CodeBook.md`: A code book that describes the variables, the data, and any transformations or work performed to clean up the data.
* `run_analysis.R`: The actual R script used to perform the 5 data cleaning steps required by the project.
* `tidy_data_final.txt`: The final output data set containing the average of each variable for each activity and each subject.

## Requirements and Prerequisites

To run the script successfully, you need:
1. **R or RStudio** installed.
2. The following R packages installed:
   * `readr`
   * `dplyr`

You can install them by running:
```R
install.packages("readr")
install.packages("dplyr")
