import 'dart:ffi';

main() {

  List<int> nums = [1,2,3,4];
  print(productExceptSelf(nums));

}
List<int> productExceptSelf(List<int> nums) {

  List<int> results = [];
  int n=nums.length;
  for(int i=0;i<n;i++){
    List<int> s =nums;
    s.removeWhere((element) => element==nums[i]);
    var result = s.reduce((a, b) => a * b);
    results.add(result);
  }
  return results;
}