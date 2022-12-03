void main(List<String> args) {}

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> newList = new List.from(nums1)..addAll(nums2);
    late double result;
    newList.sort();
    if (newList.length % 2 == 1) {
      double index = newList.length / 2;
      result = newList[index.toInt()].toDouble();
    }
    if (newList.length % 2 == 0) {
      double index = newList.length / 2;
      result =
          (newList[(index + 0.5).toInt()] + newList[(index - 0.5).toInt()]) / 2;
    }
    return result;
  }
}
