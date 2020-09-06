# cleaningDataProject
## Setup
The following *run_analysis.R* script assumes that you have the data in the same working directory. The data is in a directory called "UCI HAR Dataset", no change has been done to the data itself.

Packages used:
* **data.table** for fast read/write operations
* **dplyr** for grouping the data and summarizing it

## Output
To get the new processed data (*avgData.txt*): 
1. Install the required packages
2. Download and extract the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Excute the *run_analysis.R*
