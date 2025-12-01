import pandas as pd

# Leitura da planilha
df = pd.read_excel("sua_planilha.xlsx")

# Visualiza as primeiras linhas
print(df.head())

# Derrete (melt) as colunas de datas em linhas
df_corrigido = df.melt(
    id_vars=["Tipo", "Componente"],  # mantém essas colunas fixas
    var_name="Data",                 # nome da nova coluna com as datas
    value_name="Valor"               # nome da coluna com os valores
)

# Converte a coluna de Data para datetime (caso não esteja)
df_corrigido["Data"] = pd.to_datetime(df_corrigido["Data"], errors="coerce")

# Ordena os dados (opcional)
df_corrigido = df_corrigido.sort_values(["Tipo", "Componente", "Data"])

# Visualiza o resultado
print(df_corrigido.head(12))

# Exporta o resultado corrigido
df_corrigido.to_excel("tabela_corrigida.xlsx", index=False)