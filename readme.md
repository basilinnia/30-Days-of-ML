# Day 0
Quick introduction to read data (csv files) in pandas 

# Day 1
Displaying data (DataFrames, Series), selecting data for modeling, and also building a basic model with sklearn <br> <br>
**Used:** `DecisionTreeRegressor()` , `model.fit(X, y)`, `random_state` , `.dropna`, `model.predict(X)`

# Day 2
Validating model, Overviewing some terms (mean absolute error, bias, variance, over-fitting, under-fitting, decision trees ) <br> <br>
**Used:** `sklearn.metrics.mean_absolute_error`, `sklearn.model_selection.train_test_split` , `max_leaf_nodes` 

# Day 3
Random Forest Regression, dealing with missing columns, imputation, dropping columns, shape of training data (num_rows, num_columns) <br><br>
**Used:** `sklearn.ensemble.RandomForestRegressor`, `.shape`, `.drop`, `.isnull()`, `.any()`, `axis=0(rows)1(columns)`, `sklearn.impute.SimpleImputer`, `fit_transform()`,` transform()`, `.copy()`

# Day 4
Categorizing data, the curse of dimensionality, dimension reduction, drop categorical variables, ordinal encoding, one-Hot Encoding  <br><br>

**Used:**` .nunique()`, `sklearn.preprocessing.OrdinalEncoder`, `.select_dtypes(exclude=["object"])` ,` X_train.dtypes == 'object'` ,
 `.dtype in ['int64', 'float64']` , `.concat()`, `.astype()`, `OneHotEncoder(handle_unknown='ignore', sparse=False)`

# Day 5
Pipeline, ColumnTransformer <br><br>
**Used:** `Pipeline(steps=[('preprocessor', preprocessor), ('model', model)])`,  `ColumnTransformer(transformers=[])`, `pipeline.fit()`

# Day 6
Cross-Validation <br><br>
**Used:**  `sklearn.model_selection.cross_val_score`,  
`cross_val_score(my_pipeline, X, y, cv=5, scoring="neg_mean_absolute_error")`

# Day 7
Boosting, Gradient Boosting, Weights, Variance, Bias, GradientBoost, AdaBoost, stump, forest of stumps, gini index, residuals, XGBoost <br><br>
**Used:**
 ```py 
XGBRegressor(
    n_estimators=1000, 
    learning_rate=0.05,
    n_jobs=4
).fit(
    X_train, 
    y_train,
    early_stopping_rounds=5,
    eval_set=[(X_valid, y_valid)],
    verbose=False
)
```

# Day 8
Data Leakage <br> <br>
**Used:** `scoring='accuracy'`

 # Day 9
Deep Learning, Neural Network, Neuron, Bias and Weight's role in neuron model  <br> <br>
**Used:** tensorflow, keras , `keras.Sequential`, `layers.Dense(units=1, input_shape=[3])`

# Day 10
Tensors, Multi-Dimensional Datas, Sequential and Functional Model, Dense layer <br> <br>
**Used:** `model.predict(x)`, `tf.linspace(-1.0, 1.0, 100)`, matplotlib, `tf.keras.Sequential`

# Day 11
Convolution, keras, Image manipulation, Convolutional Neural Network, Padding, Pooling, Strided convolution, Gaussian Blur, Edge Detection, downsampling, upsampling, the mathematical meaning of convolution ([with this video](https://youtu.be/KuXjwB4LzSA?si=NFRIkN-FwYond5OH)) <br> <br>
**Used:** : Julia Programming language (to work on kernels and images), in Julia I used: `Kernel.gaussian(3, 3)`, `@inbounds`, `clamp`, `similar(M)`,`using` `Images`, `load`, `RGB`

# Day 12



