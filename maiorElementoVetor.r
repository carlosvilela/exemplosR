#+-----------------------------------------------------------------+
#|                                             maiorElementoVetor.r |
#|                           Copyright 2020, Carlos Bezerra Vilela. |
#|                        https://github.com/carlosvilela/exemplosR |
#+------------------------------------------------------------------+

# definindo a estrutura dos dados
setClass(
  "vetorN",
  slots = list(
    tamanhoN      = "numeric",
    vetor         = "numeric",
    valorMaximo   = "numeric"
  )
)

# Criando uma constante que definirá o range dos possíveis valores do vetor
rangeVetor = 1:10

# obtendo o tamanho do vetor
tamanhoVetor =  as.integer(readline(prompt="Insira o tamanho do vetor: "))

# Gerando o vetor
gerarVetor<- sample(rangeVetor, tamanhoVetor, replace=TRUE, prob=NULL)

# obtendo o numero máximo que foi registrado no vetor
numeroMaximo = as.integer(max(gerarVetor))

# registrando e estruturando os dados
vetor <- new("vetorN",
             tamanhoN = tamanhoVetor,
             vetor = gerarVetor,
             valorMaximo = numeroMaximo)

# exibindo resultado
print(str(vetor))

print(vetor@tamanhoN)
print(vetor@vetor)
print(vetor@valorMaximo)
