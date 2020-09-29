# Implement your object-oriented solution here!
class LargestPalindromeProduct
    def answer
        high = 999
        ans = 0
        target_high = 0
        target_low = 0
        while high > 99
            low = high
            while low > 99
                num = high * low
                if num < ans
                    break
                elsif num === num.to_s.reverse.to_i
                    ans = num
                    target_high = high
                    target_low = low
                    break
                end
                low -= 1
            end
            if high * high < target_high * target_low
                break
            end
            high -= 1
        end
        ans
    end
end