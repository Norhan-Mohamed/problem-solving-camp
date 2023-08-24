class Solution {
  int lengthOfLastWord(String s) {
    List<String> words = s.split(" ").where((word) => word.isNotEmpty).toList();

    String lastWord = words.last;

    return lastWord.length;
  }
}

void main() {
  String s = "Hello World";

  int answer = Solution().lengthOfLastWord(s);
  print('${answer}');
}
