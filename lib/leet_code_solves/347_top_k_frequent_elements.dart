main(){

  List<int> nums=[4,1,-1,2,-1,2,3];
  int k=2;
  print(topKFrequent(nums, k));
  // topKFrequent(nums, k);
}

List<int> topKFrequent(List<int> nums, int k) {

  Map<int,int> numsMap={};
  List<int> result=[];
  nums.sort();
  for(int i=0;i<nums.length;i++){
    if(!numsMap.containsKey(nums[i])){
      numsMap[nums[i]]=1;
    }else{
      numsMap.update(nums[i], (value) => ++value);
    }
  }
  result=numsMap.keys.toList()..sort((a, b) => numsMap[b]! - numsMap[a]!);

  return result.sublist(0,k);

}
