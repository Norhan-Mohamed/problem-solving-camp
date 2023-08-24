class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    final ransomNoteLength = ransomNote.length;
    for (var i = 0; i < ransomNoteLength; i++) {
      final lengthBefore = magazine.length;
      magazine = magazine.replaceFirst(ransomNote[i], '');

      if (lengthBefore == magazine.length) {
        return false;
      }
    }
    return true;
  }
}
/*
class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<String> ransomNoteList = ransomNote.split("");
    List<String> magazineList = magazine.split("");
    bool res = true;

    for(int i = 0; i < ransomNoteList.length; i++){
        String valueToRemove = ransomNoteList[i];
        if(magazineList.contains(valueToRemove)){
            magazineList.remove(valueToRemove);
        } else {
            res = false;
            break;
        }
    }

    return res;
  }
}
* */

void main() {
  String ransomNote = "aa", magazine = "aab";

  bool answer = Solution().canConstruct(ransomNote, magazine);
  print('${answer}');
}
