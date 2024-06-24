void main() {
  List<int> nums = [2, 2, 1, 1, 1, 2, 2,3,3,3,3,3];
  print(nums);
  majorityElement(nums);
}

//Boyer-Moore Voting Algorithm
int majorityElement(List<int> nums) {
  int count = 0;
  int majorityElement = nums[0];

  for (int i = 0; i < nums.length; i++) {
    if (count == 0) {
      majorityElement = nums[i];
      count++;
    } else if (nums[i] == majorityElement) {
      count++;
    } else {
      count--;
    }
  }
  print(majorityElement);
  return majorityElement;
}
