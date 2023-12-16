class WordProblem
    def initialize(text)
        @text=text
    end

    def answer
        operations=["plus","multiplied", "minus","divided"]
        
        operas=@text.scan(/plus|multiplied|minus|divided/)
        numbers=@text.scan(/-\d+|\d+/)
        numbers=numbers.map(&:to_i)
        if operas.size ==0 || numbers.size==0
            raise ArgumentError do  end
        end
        if operas.size == 1
            eval=0
            case operas[0]
            when operas[0]="plus"
                eval=numbers[0]+numbers[1]
            when operas[0]="minus"
                eval=numbers[0]-numbers[1]
            when operas[0]="divided"
                eval=numbers[0] / numbers[1]
            when operas[0]="multiplied"
                eval=numbers[0] * numbers[1]
            end
        
            eval
        elsif operas.size==2
          eval=0
          eval2=0
            case operas[0]
            when operas[0]="plus"
                eval=numbers[0]+numbers[1]
            when operas[0]="minus"
                eval=numbers[0]-numbers[1]
            when operas[0]="divided"
                eval=numbers[0] / numbers[1]
            when operas[0]="multiplied"
                eval=numbers[0]*numbers[1]
            end
            case operas[1]
            when operas[1]="plus"
                eval2=eval+numbers[2]
            when operas[1]="minus"
                eval2=eval-numbers[2]
            when operas[1]="divided"
                eval2=eval / numbers[2]
            when operas[1]="multiplied"
                eval2=eval *numbers[2]
            end
           eval2
        elsif (operas.size || numbers.size) ==0
            raise ArgumentError do end
            
        end
      
    end
end
            

