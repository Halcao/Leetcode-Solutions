class Solution(object):
    def lengthOfLongestSubstring(self, s):
        n = len(s)
        m = min(n, 1)
        str = ""
        for i in range(0, n):
            str += s[i]
            arr = str.split(s[i])
            if len(arr) > 2:
                str = arr[1]+s[i]
            m = max(len(str), m)
        return m
