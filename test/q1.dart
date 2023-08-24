class Solution {
  List<String> reverseString(List<String> s) {
    int first = 0;
    int last = s.length - 1;
    while (first < last) {
      final temp = s[first];
      s[first] = s[last];
      s[last] = temp;
      last--;
      first++;
    }
    return s;
  }
}

void main(List<String> arguments) {
  List<String> s = ["h", "e", "l", "l", "o"];
  List<String> answer = Solution().reverseString(s);
  print('${answer}');
}
