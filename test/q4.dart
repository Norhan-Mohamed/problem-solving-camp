class Solution {
  List<int> sortColors(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          int x = nums[i];
          nums[i] = nums[j];
          nums[j] = x;
        }
      }
    }
    return nums;
  }
}

void main(List<String> arguments) {
  List<int> nums = [2, 0, 2, 1, 1, 0];
  List<int> answer = Solution().sortColors(nums);
  print('${answer}');
}
