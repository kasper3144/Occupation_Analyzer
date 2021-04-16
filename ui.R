
navbarPage(
  "Occupation Analyzer",
  tabPanel(
    "Analyze resume & jobs",
    fluidPage(
      wellPanel(p("Please upload your resume as .txt file and the job list as CSV UTF-8(Comma delimited)(*.csv) file."),
                p("Save your job list as CSV UTF-8 file: Copy and paste job information to Excel following the example -> Click 'File' -> 'Save As' -> choose 'CSV UTF-8(Comma delimited)(*.csv)'."),
                p(""),
                p("The program may run several minutes and the progress bar is at the right lefte corner."),
                p("When the top jobs table shows below, you can download the top jobs and bottom jobs. "),
                p('Below is an example of the job list file.'),
                img(src = "job_list.png")
                ),
      
      fluidRow(
        column(
          downloadButton("download_occupations",
                         "Download occupations"),
          width = 2),
        ),
      
      fluidRow(
        br(),
        column(fileInput("uploaded_resume",
                         label = "Upload resume",
                         multiple = FALSE),
               width = 6),
        
        column(fileInput("uploaded_jobs",
                         label = "Upload job list",
                         multiple = FALSE),
               width = 6)
      ),
      
      fluidRow(
        column(
          downloadButton("download_top_jobs2",
                         "Download top jobs ranking"),
          width = 4),
        
        column(
          downloadButton("download_bot_jobs2",
                         "Download bot jobs ranking"),
          width = 4),
        
        column(
          downloadButton("download_resume_job",
                         "Download jobs ranking via resume"),
          width = 4)
        ),
      
      fluidRow(
        br(),  
        column(
          downloadButton("download_top_jobs",
                         "Download top jobs ranking details",
                         class = "butt"),
          width = 4),
        
        column(
          downloadButton("download_bot_jobs",
                         "Download bot jobs ranking details"),
          width = 4)
      ),
      
      fluidRow(
        br(),
        tableOutput(outputId = 'jobs')
      )
      
    )
  ),
  collapsible = TRUE
)