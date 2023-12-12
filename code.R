library(matrixcalc)

######## model without assistants ####################
row = 16 # matrix row 
column = 16 # matrix column

InfMat <- matrix(0, row, column) # matrix filled with zeroes

# editing elements of matrix

InfMat[1,2] = (1/4)
InfMat[1,3] = (1/4)
InfMat[1,4] = (1/4)
InfMat[1,5] = (1/4)

InfMat[2,1] = (1/4)
InfMat[2,3] = (1/4)
InfMat[2,5] = (1/4)
InfMat[2,6] = (1/4)

InfMat[3,1] = (1/4)
InfMat[3,4] = (1/4)
InfMat[3,8] = (1/4)
InfMat[3,14] = (1/4)

InfMat[4,3] = (1/5)
InfMat[4,5] = (1/5)
InfMat[4,6] = (1/5)
InfMat[4,8] = (1/5)
InfMat[4,9] = (1/5)

InfMat[5,1] = (1/4)
InfMat[5,2] = (1/4)
InfMat[5,4] = (1/4)
InfMat[5,8] = (1/4)

InfMat[6,7] = (1/2)
InfMat[6,8] = (1/2)

InfMat[7,6] = 1

InfMat[8,1] = (1/4)
InfMat[8,5] = (1/4)
InfMat[8,6] = (1/4)
InfMat[8,14] = (1/4)

InfMat[9,4] = (1/3)
InfMat[9,6] = (1/3)
InfMat[9,10] = (1/3)

InfMat[10,9] = (1/2)
InfMat[10,11] = (1/2)

InfMat[11,10] = (1/2)
InfMat[11,12] = (1/2)

InfMat[12,7] = (1/3)
InfMat[12,11] = (1/3)
InfMat[12,13] = (1/3)

InfMat[13,6] = (1/2)
InfMat[13,12] = (1/2)

InfMat[14,3] = (1/3)
InfMat[14,8] = (1/3)
InfMat[14,15] = (1/3)

InfMat[15,14] = (1/2)
InfMat[15,16] = (1/2)

InfMat[16,1] = (1/3)
InfMat[16,6] = (1/3)
InfMat[16,15] = (1/3)

TransitionMatrix = t(InfMat)

initialProbability = rep((1/16),16) # randomizing agent being chosen at beginning of game

matrixPower = matrix.power(TransitionMatrix,100)
steadyState = matrixPower %*% initialProbability

###################### model with assistants #########################

p=0.0000001 # probability of choosing assistants

assistantMatrix <- matrix((p/15),row,column)

diag(assistantMatrix) <- 0 # fill diagonals with 0

# editing elements of matrix

assistantMatrix[1,2] = (1/4) + (p/15)
assistantMatrix[1,3] = (1/4) + (p/15)
assistantMatrix[1,4] = (1/4) + (p/15)
assistantMatrix[1,5] = (1/4) + (p/15)

assistantMatrix[2,1] = (1/4) + (p/15)
assistantMatrix[2,3] = (1/4) + (p/15)
assistantMatrix[2,5] = (1/4) + (p/15)
assistantMatrix[2,6] = (1/4) + (p/15)

assistantMatrix[3,1] = (1/4) + (p/15)
assistantMatrix[3,4] = (1/4) + (p/15)
assistantMatrix[3,8] = (1/4) + (p/15)
assistantMatrix[3,14] = (1/4) + (p/15)

assistantMatrix[4,3] = (1/5) + (p/15)
assistantMatrix[4,5] = (1/5) + (p/15)
assistantMatrix[4,6] = (1/5) + (p/15)
assistantMatrix[4,8] = (1/5) + (p/15)
assistantMatrix[4,9] = (1/5) + (p/15)

assistantMatrix[5,1] = (1/4) + (p/15)
assistantMatrix[5,2] = (1/4) + (p/15)
assistantMatrix[5,4] = (1/4) + (p/15)
assistantMatrix[5,8] = (1/4) + (p/15)

assistantMatrix[6,7] = (1/2) + (p/15)
assistantMatrix[6,8] = (1/2) + (p/15)

assistantMatrix[7,6] = 1 + (p/15)

assistantMatrix[8,1] = (1/4) + (p/15)
assistantMatrix[8,5] = (1/4) + (p/15)
assistantMatrix[8,6] = (1/4) + (p/15)
assistantMatrix[8,14] = (1/4) + (p/15)

assistantMatrix[9,4] = (1/3) + (p/15)
assistantMatrix[9,6] = (1/3) + (p/15)
assistantMatrix[9,10] = (1/3) + (p/15)

assistantMatrix[10,9] = (1/2) + (p/15)
assistantMatrix[10,11] = (1/2) + (p/15)

assistantMatrix[11,10] = (1/2) + (p/15)
assistantMatrix[11,12] = (1/2) + (p/15)

assistantMatrix[12,7] = (1/3) + (p/15)
assistantMatrix[12,11] = (1/3) + (p/15)
assistantMatrix[12,13] = (1/3) + (p/15)

assistantMatrix[13,6] = (1/2) + (p/15)
assistantMatrix[13,12] = (1/2) + (p/15)

assistantMatrix[14,3] = (1/3) + (p/15)
assistantMatrix[14,8] = (1/3) + (p/15)
assistantMatrix[14,15] = (1/3) + (p/15)

assistantMatrix[15,14] = (1/2) + (p/15)
assistantMatrix[15,16] = (1/2) + (p/15)

assistantMatrix[16,1] = (1/3) + (p/15)
assistantMatrix[16,6] = (1/3) + (p/15)
assistantMatrix[16,15] = (1/3) + (p/15)

assistantTransition <- t(assistantMatrix)

# computation with Google Matrix
bMatrix <- matrix(1/16,16,16)

P = 0.15 # damping factor

mMatrix <- ((1-P)*assistantTransition) + (P*bMatrix)

assistantPower <- matrix.power(assistantTransition, 100)
assistantSteadyState <- assistantPower %*% initialProbability

assistantSteadyState
