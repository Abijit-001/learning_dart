import 'dart:math';
import 'dart:developer' as dev;

/// Generate a binary tree with random number of node and random of data.
// TreeNode max: 2
// maxDepth: 10
// Does not know the depth of its leaf
// Each Node will have max value of 100

/*
main() {
  Random random = Random();
  int totalLvl = random.nextInt(10);
  int totalNode = 2 * totalLvl - 1;

  List<int> node=[];

  for (int i = 0; i < totalNode; i++) {
    int nodeValue=random.nextInt(100);
    node.add(nodeValue);
  }
  printTreeArray(node, node.length);

}

void printTreeArray(List<int> array, int arrayLength) {
  int currentLevel = 0;
  int maxPerLevel = pow(2, currentLevel).toInt();
  for (int i = 0; i < arrayLength; i++) {
    if (i == maxPerLevel - 1) {
      print("\n");
      currentLevel++;
      maxPerLevel = pow(2, currentLevel).toInt();
    }
    String space="";
    for(int j=0;j<currentLevel;j++){
      space="$space   ";
    }

    print("$space ${array[i]}");
  }
}*/

class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}

Random random = Random();

TreeNode generateRandomBinaryTree(int maxValue, int currentDepth, int maxDepth) {
  if (currentDepth >= maxDepth || random.nextInt(2) == 0) {
    return TreeNode(random.nextInt(maxValue) + 1);
  }

  return TreeNode(
    random.nextInt(maxValue) + 1,
    left: generateRandomBinaryTree(maxValue, currentDepth + 1, maxDepth),
    right: generateRandomBinaryTree(maxValue, currentDepth + 1, maxDepth),
  );
}

void printBinaryTree(TreeNode? node, [String prefix = '', bool isLeft = true]) {
  if (node == null) return;

  printBinaryTree(node.right, '$prefix${isLeft ? '│   ' : '    '}', false);

  print('$prefix${isLeft ? '└── ' : '┌── '}${node.value}');

  printBinaryTree(node.left, '$prefix${isLeft ? '    ' : '│   '}', true);
}

void main() {
  int maxValue = 100;
  int maxDepth = 10;

  TreeNode root = generateRandomBinaryTree(maxValue, 0, maxDepth);
  printBinaryTree(root);
}

