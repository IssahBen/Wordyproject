class WordProblem
    def initialize(text)
        @text=text
    end

    def answer
        operations=["plus","multiplied", "minus","divided"]
        
        operation=@text.scan(/plus|multiplied|minus|divided/)
        numbers=@text.scan(/-\d+|\d+/)
        numbers=numbers.map(&:to_i)
        if operation.size ==0 || numbers.size==0
            raise ArgumentError do  end
        end
        if operation.size == 1
            eval=0
            case operation[0]
            when operation[0]="plus"
                eval=numbers[0]+numbers[1]
            when operation[0]="minus"
                eval=numbers[0]-numbers[1]
            when operation[0]="divided"
                eval=numbers[0] / numbers[1]
            when operation[0]="multiplied"
                eval=numbers[0] * numbers[1]
            end
        
            eval
        elsif operation.size==2
          eval=0
          eval2=0
            case operation[0]
            when operation[0]="plus"
                eval=numbers[0]+numbers[1]
            when operation[0]="minus"
                eval=numbers[0]-numbers[1]
            when operation[0]="divided"
                eval=numbers[0] / numbers[1]
            when operation[0]="multiplied"
                eval=numbers[0]*numbers[1]
            end
            case operation[1]
            when operation[1]="plus"
                eval2=eval+numbers[2]
            when operation[1]="minus"
                eval2=eval-numbers[2]
            when operation[1]="divided"
                eval2=eval / numbers[2]
            when operation[1]="multiplied"
                eval2=eval *numbers[2]
            end
           eval2
        elsif (operation.size || numbers.size) ==0
            raise ArgumentError do end
            
        end
      
    end
end
            

