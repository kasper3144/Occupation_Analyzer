# Occupation_Analyzer
## About
NYU CAES and MASY wish to develop additional tools for student job seekers to match their resumes against jobs by a mutual similarity scoring to a standard occupation as defined by the BLS O*NET database. Part of the terms of job evaluation for job seekers is to discover their educational preparation for a particular desirable job. The tool scores the resume against a group of jobs and presents the user with the top-scoring jobs to select a target set (this is termed simple scoring). The resulting top target job table is scored against the occupations. A cosine similarity score is computed (called mutual similarity) between the top job/occupation sores and the resume/occupation sores (termed smart scores. The ranked jobs  (by smart scoring) are then presented to the user as best matched to their resume.

## How to use?
1. Visit https://occupationanalyzer.shinyapps.io/AppliedProject2/
2. Clone all files to your PC and run it locally.
If you run the code locally, modify the code in server.R "occupation_df <- read.csv('O_NET JOBS Cleaned utf8.csv')" to "occupation_df <- read.csv('O_NET JOBS Cleaned.csv')". Use "Jobs Test File with Scores Cleaned.csv" as the job list or save your jobs list as CSV file instead of CSV UTF-8(Comma delimited)(*.csv) file.

## Input
1. A resume as .txt file.
2. A job list as CSV UTF-8(Comma delimited)(*.csv) file.
![](https://github.com/kasper3144/Occupation_Analyzer/blob/master/www/job_list.png)
__Sample Job List__

## Output
1. The scoring of the target jobs to the resume via occupation-matching.
