#+-----------------------------------------------------------------+
#|                             AV1_modelos_linguagem_programacao.r |
#|                          Copyright 2020, Carlos Bezerra Vilela. |
#|                       https://github.com/carlosvilela/exemplosR |
#+-----------------------------------------------------------------+

# definindo a estrutura dos dados
setClass(
  "vetorN",
  slots = list(
    tamanhoN          = "numeric",
    vetor             = "numeric",
    valorMaximo       = "numeric",
    valorDesvioPadrao = "numeric",
    somatorio         = "numeric"
  )
)

# Criando uma constante que definirá o range dos possíveis valores do vetor
rangeVetor = 1:100

# obtendo o tamanho do vetor
tamanhoVetor =  10

# Gerando o vetor
gerarVetor<- sample(rangeVetor, tamanhoVetor, replace=TRUE, prob=NULL)

# obtendo o numero máximo que foi registrado no vetor
numeroMaximo = as.integer(max(gerarVetor))

# Calculando o desvio padrão
desvioPadrao = sd(gerarVetor)

# Calculando o somatório
somaVetor = sum(gerarVetor)

# registrando e estruturando os dados
vetor <- new("vetorN",
             tamanhoN = tamanhoVetor,
             vetor = gerarVetor,
             valorMaximo = numeroMaximo,
             valorDesvioPadrao = desvioPadrao,
             somatorio = somaVetor
)

# exibindo resultado
print(str(vetor))

print(vetor@tamanhoN)
print(vetor@vetor)
print(vetor@valorMaximo)
print(vetor@valorDesvioPadrao)
print(vetor@somatorio)
