#!/usr/bin/python env

class Solution(object):
    def twoSum(self, l1, l2):
        """
        :type nums: list[int]
        :type target: int
        :rtype list[int]
        """
        num1 = ""
        num2 = ""
        for num in reversed(l1):
            num1 += str(num)

        for num in reversed(l2):
            num2 += str(num)

        result = int(num1) + int(num2)

        result_list = []
        for num in str(result)[::-1]:
            result_list.append(int(num))

        return result_list



if __name__ == '__main__':
    print(Solution().twoSum([2,4,3], [5,6,4]))
