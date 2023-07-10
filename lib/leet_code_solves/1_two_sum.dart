main() {
  List<int> nums = [3,2,4];
  int target = 7;
  List<int> result = twoSum(nums, target);
  print(result);
}
List<int> twoSum(List<int> nums, int target) {

  List<int> result=[];
  for(int i=0; i< nums.length-1; i++){
    for( int j=i+1; j<nums.length; j++){
      if(nums[i]+nums[j] == target){
        result.add(i);
        result.add(j);
        break;
      }
    }
  }

  return result;
}