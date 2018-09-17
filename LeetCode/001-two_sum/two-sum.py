#!/usr/bin/python env

class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: list[int]
        :type target: int
        :rtype list[int]
        """
        lookup = {}
        for i, num in enumerate(nums):
            if target - num in lookup:
                return [lookup[target - num], i]
            lookup[num] = i

if __name__ == '__main__':
    print(Solution().twoSum((2,17,11,15,7), 9))
