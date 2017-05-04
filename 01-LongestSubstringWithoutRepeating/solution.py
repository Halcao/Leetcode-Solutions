def isRepeating(s):
    for c in s:
        if len(str(s).split(c)) > 2:
            return 1
    return 0

class Solution(object):
    def lengthOfLongestSubstring(self, s):
        n = len(s)
        m = min(n, 1)
        str = ""
        for i in range(0, n):
            if not isRepeating(str+s[i]):
                str += s[i]
            else:
               str = (str+s[i]).split(s[i])[1]+s[i]
            m = max(len(str), m)
        return m
