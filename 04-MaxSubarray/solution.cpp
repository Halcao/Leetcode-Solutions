class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int n = nums.size();
        int maxSum = nums[0];
        int lastMax = nums[0];
        for (int i = 1; i < n; ++i) {
            lastMax = max(lastMax+nums[i], nums[i]);
            maxSum = max(lastMax, maxSum);
        }
        return maxSum;
    }
};
