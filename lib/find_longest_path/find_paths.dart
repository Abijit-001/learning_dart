import 'dart:io';
import 'dart:core';

List<List<int>> allPaths = [];

void findPathsUtil(List<List<int>> maze, int m, int n, int i, int j, List<int> path, int index) {
  if (i == m - 1) {
    for (int k = j; k < n; k++) {
      path[index + k - j] = maze[i][k];
    }
    stdout.write("[${path[0]}, ");
    for (int z = 1; z < path.length - 1; z++) {
      stdout.write("${path[z]}, ");
    }
    stdout.write("${path[path.length - 1]}]\n");
    allPaths.add(List.from(path));
    return;
  }
  if (j == n - 1) {
    for (int k = i; k < m; k++) {
      path[index + k - i] = maze[k][j];
    }
    stdout.write("[${path[0]}, ");
    for (int z = 1; z < path.length - 1; z++) {
      stdout.write("${path[z]}, ");
    }
    stdout.write("${path[path.length - 1]}]\n");
    allPaths.add(List.from(path));
    return;
  }
  path[index] = maze[i][j];
  findPathsUtil(maze, m, n, i + 1, j, path, index + 1);
  findPathsUtil(maze, m, n, i, j + 1, path, index + 1);
}
