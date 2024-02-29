// Struct
typedef struct 
{   
    // mazeData holds contents of rows and columns
    int playerPos[2];
    int endPos[2];
}maze;



// Validate file
int vaidateFile(char fileName[]) {
    // Checks if maze height and width within 5-100
        // return 0 
    // else
        // printf("Height and width out of range\n")
        // return 1
    // Checks if maze is rectangle
        // return
    // else
        // printf("Maze is not rectangle\n")
        // return 1
}

// Inititialize maze
maze initializeMaze(char fileName[]) {
    // Opens File
    // Reads File
    // Puts data in appropriate fields on maze struct
    // returns the maze
}

// Display maze
void displayMaze() {
    // Loop through rows
        // Loop through columns
            // Check if end of row
                // Print newline

            // Print out current element of maze
}

// Player movement
int playerMovement(char keyboardInput) {
    switch(keyboardInput) {
        case 'w':
        case 'W':
            // check if wall or edge
                // printf("you cannot move there\n")
            //else
                // Decrement by 1 players y position
                //printf("player moved up\n");
            break;
        case 'a':
        case 'A':
            // check if wall or edge
                // printf("you cannot move there\n")
            //else
                // Decrement by 1 players x position
                // printf("player moved left\n");
            break;
        case 's':
        case 'S':
            // check if wall or edge
                // printf("you cannot move there\n")
            //else
                // Increment by 1 players y position
                // printf("player moved down\n");
            break;
        case 'd':
        case 'D':
            // check if wall or edge
                // printf("you cannot move there\n")
            //else
                // Increment by 1 players x position
                // printf("player moved right\n");
            break;
        default:
            break;
    }
}           

// Check win condition
int winCondition(maze currentMaze) {
    if (currentMaze.playerPos == currentMaze.endPos) {
        // printf("you have won!\n");
        // return 1;
    } else{
        // return 0;
    }
}

// Maze game
int main(int argc, char *argv[]) {
    if (argc == 0)
    {
        printf("Usage: ./SkeletonCode <name>\n");
    }
    // if(validateFile(argv[0]) == 1)
        // return 1
    // maze myMaze = initializeMaze();
    // while (winCondition(myMaze) == 0)
        // checks for keyboard input
            // if 'M/m'
                // displayMaze()
            // if any movement key
                // playerMovement()
    // return 0
}
