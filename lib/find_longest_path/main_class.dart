import 'dart:io';

import 'find_paths.dart';

main() {
  stdout.write("Enter rows and column number : ");
  int m = int.tryParse(stdin.readLineSync()!)!;
  int n = int.tryParse(stdin.readLineSync()!)!;
  List<List<int>> maze=[];

  for (int i = 0; i < m; i++) {
    List<int> row=[];
    for (int j = 0; j < n; j++) {
      stdout.write("($i,$j)   ");
      row.add(j);
    }
    maze.add(row);
    print("\n");
  }

  stdout.write("Enter starting point rows and column number : $maze");
  int mStart = int.tryParse(stdin.readLineSync()!)!;
  int nStart = int.tryParse(stdin.readLineSync()!)!;

  stdout.write("Enter ending point rows and column number : ");
  int mEnd = int.tryParse(stdin.readLineSync()!)!;
  int nEnd= int.tryParse(stdin.readLineSync()!)!;

  markPoints(mStart,nStart,mEnd,nEnd,m,n);

  findPaths(maze, mEnd, nEnd);
}

void markPoints(int mStart, int nStart, int mEnd, int nEnd, int m, int n) {

  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      ((i==mStart && j==nStart) || (i==mEnd && j==nEnd))? stdout.write("x   "): stdout.write("(${i-1},${j-1})   ");
    }
    print("\n");
  }
}

void findPaths(List<List<int>> maze, int m, int n) {
  List<int> path = List<int>.filled(m + n - 1, 0);
  findPathsUtil(maze, m, n, 0,0, path, 0);
}
