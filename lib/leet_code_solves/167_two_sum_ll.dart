main() {
  List<int> nums = [2,7,11,15];
  int target = 9;
  List<int> result = twoSum(nums, target);
  print(result);
}
/*List<int> twoSum(List<int> nums, int target) {

  List<int> result=[];
  for(int i=0; i< nums.length-1; i++){
    for( int j=i+1; j<nums.length; j++){
      if(nums[i]+nums[j] == target){
        result.add(i+1);
        result.add(j+1);
        break;
      }
    }
  }

  return result;
}*/
List<int> twoSum(List<int> numbers, int target) {
    int low = 0, high = numbers.length - 1;
    while (numbers [low] + numbers[high] != target) {
      if (numbers[low] + numbers[high] < target) {
        low++;
      } else {
        high--;
      }
    }
    return [low + 1, high + 1];
  }
