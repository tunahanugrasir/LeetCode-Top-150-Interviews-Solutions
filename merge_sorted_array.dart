void main(List<String> args) {
  List<int> nums1 = [4, 5, 6, 0, 0, 0];
  List<int> nums2 = [1, 2, 3];

  int m = 3;
  int n = 3;

  merge(nums1, nums2, m, n);
  print(nums1);
}


void merge(List<int> nums1, List<int> nums2, int m, int n) {
  
  int lastIndexNums1 = m - 1; //last value index of the nums1
  int lastIndexInNums2 = n - 1; //last value index of the nums2
  int mergedIndex = m + n - 1; //last value index sum of the nums1 and nums2

  while (lastIndexNums1 >= 0 && lastIndexInNums2 >= 0) {
    if (nums1[lastIndexNums1] > nums2[lastIndexInNums2]) {
      nums1[mergedIndex] = nums1[lastIndexNums1];
      lastIndexNums1--;
    } else {
      nums1[mergedIndex] = nums2[lastIndexInNums2];
      lastIndexInNums2--;
    }
    mergedIndex--;
  }

  //If the last index in nums2 is still not finished, we loop again
  while (lastIndexInNums2 >= 0) {
    nums1[mergedIndex] = nums2[lastIndexInNums2];
    lastIndexInNums2--;
    mergedIndex--;
  }

}
