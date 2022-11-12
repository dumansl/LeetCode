void main(List<String> args) {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        int sum = nums[i] + nums[j];
        if (sum == target) {
          print("[${nums[i]},${nums[i + 1]}]");
          result = [i, j];
        }
      }
    }
    return result;
  }

  List<int> sonuc = twoSum([3, 2, 4], 6);

  print(sonuc);
}
