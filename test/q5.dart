class Solution {
  bool isAnagram(String s, String t) {
    List<String> s1 = s.split('')..sort();
    List<String> t1 = t.split('')..sort();

    bool result = true;
    if (s1.length != t1.length) {
      result = false;
    } else {
      for (int i = 0; i < s1.length; i++) {
        if (s1[i] != t1[i]) {
          result = false;
          break;
        }
      }
    }
    return result;
  }
}

void main(List<String> arguments) {
  String s = "anagram", t = "nagaram";
  bool answer = Solution().isAnagram(s, t);
  print('${answer}');
}
