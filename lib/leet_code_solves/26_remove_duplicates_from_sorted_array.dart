main(){
  List<int> nums=[0,0,1,1,1,2,2,3,3,4];
  print(removeDuplicates(nums));
}
int removeDuplicates(List<int> nums) {
  int currentElement = 0;
  int pointer = 0;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[pointer]) {
      nums[currentElement + 1] = nums[i];
      currentElement++;
      pointer++;
    } else {
      pointer++;
    }
  }
  print(nums);

  return currentElement + 1;
}