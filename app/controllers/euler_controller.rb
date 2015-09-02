class EulerController < ApplicationController
    
    def answer
        
        n = 2
        r = 1
        loop do
            for r in 1..n
                comb = factorial(n)/(factorial(n-r)*factorial(r))
                break if comb > 10
            end
            break if comb > 10000
            n += 1
        end
            
        @sum = n
    end

    
    def factorial(n)
        if n == 1
            1
        else
            n*factorial(n-1)
        end
    end
end