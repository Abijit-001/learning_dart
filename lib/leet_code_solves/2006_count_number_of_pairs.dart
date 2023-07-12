main() {
  List<int> nums = [1, 2, 2, 1];
  int k = 1, count = 0;

  for (int i = 0; i < nums.length; i++) {
    int j=i;
    for (i; i < nums.length; i++) {
      if((nums[i]-nums[j]).abs()==k) {
        count++;
      }
    }
    i=j;
  }
  print(count);
}
