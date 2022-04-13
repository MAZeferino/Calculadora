class Calculadora
    def adicao (n1, n2)
        @res =	(n1 + n2) 
        puts "#{n1} + #{n2} = #{@res}"
    end

    def subtracao(n1, n2)
        @res =	(n1 - n2) 
        puts "#{n1} - #{n2} = #{@res}"		
    end
    

    def divisao(n1, n2)
        if n2 != 0
            @res =	(n1 / n2)
            puts "#{n1} / #{n2} = #{@res.round(2)}"
        else
            puts "Divisao Invalida!"
        end
    end

    def multiplicacao(n1, n2)
        @res =	(n1 * n2) 
        puts "#{n1} * #{n2} = #{@res}"
    end

    def porcentagem(n1, n2)
        @res =	(n1 * n2) / 100
        puts "(#{n1} * #{n2}) / 100 = #{@res}"
    end

    def null
        puts "Operacao Invalida!"
    end
end

repetir = 1
while repetir == 1 do

    puts "Calculadora"
    puts "-----------"

    puts "Digite o primeiro numero?"
    n1 = gets.chomp().to_f

    puts "Escolha a operacao!"
    puts "1 Adicao"
    puts "2 Subtracao"
    puts "3 Divisao"
    puts "4 Multiplicacao"
    puts "5 Porcentagem"
    puts "\n"
    puts "Digite o numero da Operacao escolhida?"
    operacao = gets.chomp().to_i

    puts "Digite o segundo numero?"
    n2 = gets.chomp().to_f

    calculo = Calculadora.new

    case operacao
        when 1
            calculo.adicao(n1, n2)
        when 2
            calculo.subtracao(n1, n2)
        when 3
            calculo.divisao(n1, n2)
        when 4
            calculo.multiplicacao(n1, n2)
        when 5
            calculo.porcentagem(n1, n2)
        else
            calculo.null
    end

    repetir = 0
    puts "\n"
    puts "-----------"
    puts "Deseja realizar uma nova conta?"
    puts "1 - sim"
    puts "2 - nao"
    repetir = gets.to_i
end