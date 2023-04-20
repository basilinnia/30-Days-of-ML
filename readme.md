# Day 0
Quick introduction to read data (csv files) in pandas 

# Day 1
Displaying data (DataFrames, Series), selecting data for modeling, and also building a basic model with sklearn <br> <br>
**Used:** DecisionTreeRegressor() , model.fit(X, y), random_state , .dropna, model.predict(X)

# Day 2
Validating model, Overviewing some terms (mean absolute error, bias, variance, overfitting, underfitting, decision trees ) <br> <br>
**Used:** sklearn.metrics.mean_absolute_error, sklearn.model_selection.train_test_split , max_leaf_nodes 

# Day 3
Random Forest Regression, dealing with missing columns, imputation, dropping columns, shape of training data (num_rows, num_columns) <br><br>
**Used:** sklearn.ensemble.RandomForestRegressor, .shape, .drop, .isnull(), .any(), axis=0(rows)1(columns), sklearn.impute.SimpleImputer, fit_transform(), transform(), .copy()

# Day 4
Categorizing data, the curse of dimensionality, dimension reduction, drop categorical variables, ordinal encoding, one-Hot Encoding  <br><br>

**Used:** .nunique(), sklearn.preprocessing.OrdinalEncoder, <br>.select_dtypes(exclude=["object"]) , X_train.dtypes == 'object' ,
 .dtype in ['int64', 'float64'] , .concat(), .astype(), OneHotEncoder(handle_unknown='ignore', sparse=False)


# Day5
Pipeline, ColumnTransformer <br><br>
**Used:** 

