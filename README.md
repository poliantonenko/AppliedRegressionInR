# AppliedRegressionInR
This is a final assignment for Applied Regression in R course

## Completion requirements

To succesfuly complete this course, students are required to do the following:

1)Pick a dataset featured on the TidyTuesday project (any year).

2)Formulate a research problem related to the data. This research problem can be either predictive or inferential in nature (e.g. Can we predict the popularity of a song on Spotify based on its characteristics? Does the gender wage gap in the US depend on the proportion of women in the field? Are more expensive video games rated better?).

3)Analyze the data using a linear regression model and write a report on your findings. This report should include clear definition of your research problems, description of your data (including descriptive statistics), description of your regression model (both tables and graphs where appropriate), diagnostics of your regression model and overall conclusion. You can transform and filter data as necessary, but clearly describe all data transformations.

4)Prepare two documents for submission: (1) a script which must be fully operational: it has to run without error from start (including downloading data from TidyTuesday website) to finish without any need for outside interference and produce all analytic outputs (models, charts) used for the assignment, (2) final report (e.g. Word or Pdf) as described above.

## Dataset

For this assignment I have picked Bechdel Test dataset https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-03-09/readme.md

## Analysis and report

### Research problem definition

Does the binary outcome (variable "binary") differ depending on the year(variable "year")?

### Variable selection

#### Dependent variable

- *binary* (binary pass or fail of bechdel test)

#### Main independent variable

- *year* (year) - movies could become more feminist in recent years.

- *rated* (rating of movie) - movies for adults might have less chances to pass the test, if it has violence, it's more likely to be done by men, sex and nudity mostly appear in heterosexual context. 

- *metascore* (metascore rating) - reviewers might have better opinion about movies that pass the test.

- *imdb_rating* (IMDB rating) - same as for metascore.

- *runtime* (runtime) - women might have a bigger chance to appear and have a dialogue about something else in a movie if it's longer?


#### Data description

![chart 1](https://github.com/poliantonenko/AppliedRegressionInR/blob/main/charts/binary.png)

![chart 2](https://github.com/poliantonenko/AppliedRegressionInR/blob/main/charts/imdb%20rating.png)

![chart 3](https://github.com/poliantonenko/AppliedRegressionInR/blob/main/charts/rated%20binary.png)

![chart 4](https://github.com/poliantonenko/AppliedRegressionInR/blob/main/charts/binary%20year.png)

#### Regression model

#### Diagnostics

#### Conclusion