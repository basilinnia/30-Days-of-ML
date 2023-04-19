
## why ordinal encoding and one-hot encoding works? <br><br>

&nbsp;&nbsp; Ordinal encoding works by assigning a unique integer to each unique value of the categorical variable, based on its natural order or hierarchy. This approach preserves the order of the original values and allows the model to capture the relative difference between the categories. <br><br>

&nbsp; &nbsp;  For example, if we have a categorical variable that represents education level (e.g., high school, college, graduate), we can encode these categories as 1, 2, and 3, respectively. In this case, the model can learn that a higher value indicates a higher education level and can use this information to make predictions. <br><br>

&nbsp; &nbsp; One-hot encoding, on the other hand, creates a binary variable for each category of the original variable. Each binary variable takes a value of 1 if the corresponding category is present in the data point and 0 otherwise <br><br> 

 &nbsp; &nbsp; For example, if we have a categorical variable that represents color (e.g., red, blue, green), we can create three binary variables called "IsRed," "IsBlue," and "IsGreen" with values of 1 if the data point corresponds to that color and 0 otherwise. One-hot encoding creates a sparse matrix, where most of the variables are 0, but it ensures that each category is represented independently of the others. <br><br>

 Additionally, one-hot encoding can help prevent the model from assigning undue importance to a particular category by treating each category as equal. This is important because some machine learning algorithms may assign higher weights to variables that have more values or larger ranges, which could lead to a bias towards certain categories of the categorical variable. <br><br>


**NOTE** : We refer to the number of unique entries of a categorical variable as the cardinality of that categorical variable.