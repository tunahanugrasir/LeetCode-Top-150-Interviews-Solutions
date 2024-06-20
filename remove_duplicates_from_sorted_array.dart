void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int k = removeDuplicates(nums);
  print(k);
  print(nums);
}

int removeDuplicates(List<int> nums) {
  lengthCalculateOfArray(nums);

  int length = lengthCalculateOfArray(nums);
  int k = 1;
  for (int i = 1; i < length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}

int lengthCalculateOfArray(List<int> nums) {
  int length = 0;
  for (var _ in nums) {
    length++;
  }

  return length;
}
