# game-interaction-phoneTag
Simple scenario of a game of phone tag. Two models are built and explored probabilistically. Model 1 considers just game participants. Model 2 considers auxiliary agents known as 'assistants', who do not participate but aid by calling other agents randomly.

Model 1
We employ the matrixcalc function within the R programming language to compute matrix powers. 
First, we establish the dimensions of the matrix, denoted by variables row and column, both
set to 16. Next, we generate a matrix of zeros with these dimensions using the matrix function.
The resulting matrix is stored in the variable InfMat.

To input numerical values into specific positions of the matrix (to constructing the adjacency
matrix), we start the process by referencing our matrix as InfMat. The [] operator is used with
this matrix. For instance, the expression InfMat[1,2]=7 substitutes the element situated at the
intersection of the first row and second column of the matrix with the value 7. This procedure is
iteratively executed across the matrix.

The t() function is employed to calculate the transpose of the matrix, and the result is stored
in the variable TransitionMatrix. A 16 × 1 vector comprised of ones is created using the rep()
function and assigned to the variable initialProbability. Finally, the matrix.power() function
is utilized to compute the 100th power of the matrix (stored in the variable matrixPower), and
matrix-vector multiplication is executed through the %*% operator.

Model 2
The initial step involves the specification of the probability of selecting an assistant, denoted by
the variable p. Next, the matrix is constructed following a procedure similar to the one previously
employed. However, in this iteration, a matrix consisting of elements derived from the ratio p/15
is generated, and a diagonal matrix with elements set to 0 is created using the diag() function.
