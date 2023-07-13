/*

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter rows and column number : ");
  int m = int.tryParse(stdin.readLineSync()!)!;
  int n = int.tryParse(stdin.readLineSync()!)!;
  List<List<int>> maze=[];

  for (int i = 0; i < m; i++) {
    List<int> row=[];
    for (int j = 0; j < n; j++) {
      stdout.write("o   ");
      row.add(j);
    }
    maze.add(row);
    print("\n");
  }

  stdout.write("Enter starting point rows and column number : ");
  int mStart = int.tryParse(stdin.readLineSync()!)!;
  int nStart = int.tryParse(stdin.readLineSync()!)!;

  stdout.write("Enter ending point rows and column number : ");
  int mEnd = int.tryParse(stdin.readLineSync()!)!;
  int nEnd= int.tryParse(stdin.readLineSync()!)!;

  Point start = Point(mStart, nStart);
  Point end = Point(mEnd, nEnd);

  markPoints(mStart,nStart,mEnd,nEnd,m,n);

  List<Point> longestPath = findLongestPath(maze, start, end);

  print("\nLongest Path with ${longestPath.length} node visited.");
  for (Point point in longestPath) {
    stdout.write("(${point.x}, ${point.y})");
  }
}

List<Point> findLongestPath(
    List<List<int>> maze, Point start, Point end) {
  List<Point> currentPath = [];
  List<Point> longestPath = [];

  findPath(maze, start, end, currentPath, longestPath);

  return longestPath;
}

void findPath(List<List<int>> maze, Point current, Point end,
    List<Point> currentPath, List<Point> longestPath) {
  currentPath.add(current);

  if (current == end) {
    if (currentPath.length > longestPath.length) {
      longestPath.clear();
      longestPath.addAll(currentPath);
    }
  } else {
    List<Point> neighbors = getNeighbors(maze, current);

    for (Point neighbor in neighbors) {
      if (!currentPath.contains(neighbor)) {
        findPath(maze, neighbor, end, currentPath, longestPath);
      }
    }
  }

  currentPath.removeLast();
}

List<Point> getNeighbors(List<List<int>> maze, Point point) {
  List<Point> neighbors = [];

  int numRows = maze.length;
  int numCols = maze[0].length;

  if (point.x > 0) neighbors.add(Point(point.x - 1, point.y));
  if (point.x < numRows - 1) neighbors.add(Point(point.x + 1, point.y));
  if (point.y > 0) neighbors.add(Point(point.x, point.y - 1));
  if (point.y < numCols - 1) neighbors.add(Point(point.x, point.y + 1));

  return neighbors;
}

void markPoints(int mStart, int nStart, int mEnd, int nEnd, int m, int n) {

  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      ((i==mStart && j==nStart) || (i==mEnd && j==nEnd))? stdout.write("x   "): stdout.write("o   ");
    }
    print("\n");
  }
}
*/

/*
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
*/