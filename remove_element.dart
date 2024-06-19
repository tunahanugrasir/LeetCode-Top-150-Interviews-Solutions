void main() {
  List<int> nums = [0, 1, 2, 2, 3, 0, 4, 2];
  int val = 2;
  int k = removeElement(nums, val);
  print('Output: $k, nums = $nums');
}

//calculate length without defined function
int calculateLength(List<int> nums) {
  int length = 0;
  for (var _ in nums) {
    //we use like this  because _ is unnecessary
    length++;
  }

  return length;
}

int removeElement(List<int> nums, int val) {
  int k = 0;
  int length = calculateLength(nums);

  for (int i = 0; i < length; i++) {
    if (nums[i] != val) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}
