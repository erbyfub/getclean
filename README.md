How the script run_analysis.R works:
1. The variable names (in features.txt) are loaded.
2. The test data set (in test directory, subject IDs in subjects.txt, activity IDs in y_test.txt, and the remaining observations in X_test.txt) are loaded, assigning the variable names to the appropriate columns.
3. Combine subject and activity data with remaining variables.
4. Repeat steps 2-3 with training data set (in train directory).
5. Combine test and training data into one set.
6. Remove all measurement variables except means and standard deviations.
7. Make variable names more readable.
8. Split data into list where each element contains the data for a single subject.
9. Split these elements further into sub-elements that each contain the data for a single activity, resulting in a total of 180 subelements (30 subjects * 6 activities).
10. Take the average for each variable in each subelement.
11. Convert this list of averages back into a data frame.
12. Replace activity IDs with verbal names.
13. Write resulting table to a file, tidydata.txt.