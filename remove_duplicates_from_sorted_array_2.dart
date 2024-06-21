void main() {
  List<int> nums = [1, 1, 1, 2, 2, 3];
  int k = removeDuplicates(nums);
  print(nums);
  print(k);
}

int removeDuplicates(List<int> nums) {
  int length = lengthCalculate(nums);

  if (length <= 2) return length;

  int k = 2; //we accepted that the first two element are true

  for (int i = 2; i < length; i++) {
    if (nums[i] != nums[k - 2]) {
      nums[k] = nums[i];
      k++;
    }
  }

  return k;
}

int lengthCalculate(List<int> nums) {
  int length = 0;

  for (var _ in nums) {
    length++;
  }

  return length;
}
