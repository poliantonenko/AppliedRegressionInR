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

Does movie budget affect its metascore reviews?

### Variable selection

#### Dependent variable

- *metascore* (metascore rating)

#### Main independent variable

- *budget_2013* (budget as of release year)

#### Other independent variables

- *year* (year) - the perceived quality of movies can grow with years of the industry developement. Also the metacritic was launched in 2001, it means that some reviews are done retrospectively, which can probably affect the result.

- *rated* (rating of movie) - maybe rating can affect the reviews as well.

- *runtime* (runtime) - movies can get boring if they're too long?

- *binary* (binary outcome of Bechdel test) - movies which passed the test can be rated more positevily.


### Data description

#### Dependent variable

#### Main independent variable

#### Other independent variables



### Regression model

### Diagnostics

### Conclusion