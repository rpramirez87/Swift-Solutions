/**
 * @author yangyanzhan
 * @email yangyanzhan@gmail.com
 * @github_project https://github.com/yangyanzhan/Swift-Solutions
 * @online_judge leetcode
 * @problem_name two-sum
 * @problem_url https://leetcode.com/problems/two-sum
 */

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let count = nums.count
    for i in 0..<count {
      let a = nums[i]
      for j in (i + 1)..<count {
        let b = nums[j]
        if a + b == target {
          return [i, j]
        }
      }
    }
    return []
  }
}
