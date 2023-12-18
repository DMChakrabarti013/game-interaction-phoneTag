# Matrix Model Simulation
This R code simulates a matrix model representing a system without assistants and a similar system with assistants. The matrices describe the transition probabilities between states, and the simulations compute the steady-state probabilities for each system.

## System Without Assistants
We employ the matrixcalc function within the R programming language to compute matrix powers. 
First, we establish the dimensions of the matrix, denoted by variables ```row``` and ```column```, both
set to 16. Next, we generate a matrix of zeros with these dimensions using the matrix function.
The resulting matrix is stored in the variable ```InfMat```.

To input numerical values into specific positions of the matrix (to constructing the adjacency
matrix), we start the process by referencing our matrix as ```InfMat```. The ```[]``` operator is used with
this matrix. For instance, the expression ```InfMat[1,2]=7``` substitutes the element situated at the
intersection of the first row and second column of the matrix with the value 7. This procedure is
iteratively executed across the matrix.

The ```t()``` function is employed to calculate the transpose of the matrix, and the result is stored
in the variable ```TransitionMatrix```. A 16 × 1 vector comprised of ones is created using the ```rep()```
function and assigned to the variable ```initialProbability```. Finally, the ```matrix.power()``` function
is utilized to compute the 100th power of the matrix (stored in the variable ```matrixPower```), and
matrix-vector multiplication is executed through the ```%*%``` operator.

The initial probability vector is set to a uniform distribution. 

## System With Assistants
The second part introduces the concept of assistants by modifying the transition matrix (```assistantMatrix```). The probability of choosing assistants is denoted by ```p```. The code computes the steady-state probabilities for the system with assistants using the power method and a damping factor (```P```).

## Usage
Copy and paste the code into your R environment.

Ensure the ```matrixcalc``` library is installed (```install.packages("matrixcalc")```).

Execute the code to simulate and compare systems with and without assistants.

## Parameters
```row``` and ```column```: Define the size of the transition matrices.

```p```: Probability of choosing assistants.

```P```: Damping factor for the system with assistants.

```initialProbability```: Initial probability distribution for both systems.

## Output
The code calculates the steady-state probabilities for both systems and outputs the results.

## Note
Adjust the matrix size, ```p```, and ```P``` to explore different scenarios.

The code uses the ```matrixcalc``` library for matrix operations and the power method.

## Additional Information
The code leverages the ```matrix.power``` function from the ```matrixcalc``` library for matrix exponentiation.

The steady-state probabilities are calculated after 100 iterations for both systems.

Feel free to modify the code and parameters for further exploration of matrix models with and without assistants.

