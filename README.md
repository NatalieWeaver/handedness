# Left-Right Confusion by Handedness

## Question

Do left-handed people experience less left-right confusion than right-handed people?

## Hypothesis

**Null hypothesis**: left-right confusion and handedness are independent (i.e. lefties and rightes have the same probability of experiencing left-right confusion)

**Alternative hypothesis**: left-right confusion and handedness are not independent. More specifically, left-handed people experience less left-right confusion because they frequently have to deal with things designed for right-handed people such as scissors, spiral notebooks, and school desks.

## Method

1. Poll instagram followers on whether they experience left-right confusion and their handedness. Specifically, I asked the following questions on 2022-08-23:
    - Do you struggle to tell left from right?
        - Yes
        - No
    - Are you left-handed or right-handed?
        - Left-handed
        - Right-handed
        - Ambidextrous??!
2. Clean the data by joining the results of the two polls by respondents' usernames, and keeping only respondents who answered both polls and were left- or right-handed (not ambidextrous)
3. Perform a Pearson's chi-squared test for statistical independence to test whether the observed contingency table was significantly different from the expected contingency table under the null hypothesis. Reject the null if and only if the p-value is small (< 0.05 by convention). I did this analysis in both R and Google Sheets.
    - Link to R script: https://github.com/NatalieWeaver/handedness/blob/main/right_left_confusion.R
    - Link to Google Sheets: https://docs.google.com/spreadsheets/d/1IcrQzTblnN7eJNUcLz7tJdbn7gb59pH5OMblraBJocc/edit#gid=645253841

## Results

The p-value was 0.92, much larger than 0.05, so we fail to reject the null hypothesis. The data do not show that left-handed people experience less left-right confusion than right-handed people. The observed and expected (under the null) contingency tables are as follows, with handedness across the top and an indicator for experiencing left-right confusion down the side

observed|left|right
---|---|---
0|4|46
1|2|21

expected|left|right
---|---|---
0|4.11|46.89
1|1.89|21.11

The observed table looks very similar to the expected table, and the p-value quantifies this similarity. Specifically, _p_ = 0.92 means that if you ran this experiment infinitely many times in a universe where the null hypothesis was actually true, then in 92% of those experiments you would expect to get observations that were even more extreme (i.e. different from the expected values) than the observations we got in this experiment.

## Acknowledgements

Thanks Lily for suggesting this poll. Sorry I couldn't support lefty supremacy but I had to follow the data.
