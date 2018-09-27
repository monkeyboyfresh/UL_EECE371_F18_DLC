//MATRIX 1
//--------------------------------
//m is the number of rows
//d is the values for the rows
//n is the number of colomns
//c is the values for the colomns
const int m = 3;
const int n = 3;

//MATRIX 2
//--------------------------------
//p is the number of rows
//d is the values for the rows
//q is the number of colomns
//c is the values for the colomns
const int p = 3;
const int q = 3;

int sum = 0;
int multiply[m][q];

int first[m][n] = {1, 2, 0,       //A[0][0], A[0][1], A[0][2]
                   0, 1, 1,       //A[1][0], A[1][1], A[1][2]
                   2, 0, 1};      //A[2][0], A[2][1], A[2][2]

int second[p][q] = {1, 1, 2,      //A[0][0], A[0][1], A[0][2]
                    2, 1, 1,      //A[1][0], A[1][1], A[1][2]
                    1, 2, 1};     //A[2][0], A[2][1], A[2][2]
void setup() {
  Serial.begin(9600);
}

void loop() {
  for (int c = 0; c < m; c++) {
    for (int d = 0; d < q; d++) {
      for (int k = 0; k < p; k++) {
        sum = sum + first[c][k] * second[k][d];
      }
      multiply[c][d] = sum;
      sum = 0;
    }
  }
  
  for (int c = 0; c < m; c++) {
    for (int d = 0; d < q; d++) {
      Serial.print(multiply[c][d]), Serial.print(" ");
    }
    Serial.println("");
  }
}

