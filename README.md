# Singular Value Decomposition e Principal Component Analysis

## Una breve rassegna sulle tecniche di riduzione dimensionale

### 📖 Descrizione

Questo progetto è una rassegna teorico-pratica su Singular Value Decomposition (SVD) e Principal Component Analysis (PCA), due delle tecniche più utilizzate per la riduzione della dimensionalità nei dataset ad alta dimensione.

Il lavoro è stato presentato come progetto d'esame durante il corso di Analisi Numerica presso l’Università degli Studi di Napoli Federico II ed è corredato da esempi implementativi in Matlab.

### 📂 Contenuti principali

🔹 Riduzione della dimensionalità e la “maledizione della dimensionalità”

🔹 Singular Value Decomposition (SVD): definizione, proprietà e interpretazione geometrica

🔹 Principal Component Analysis (PCA): matrice di covarianza, diagonalizzazione e connessione con la SVD

🔹 Esempi applicativi:

#### Dati gaussiani affetti da rumore

Dataset reale: Ovarian Cancer (spettrometria di massa)

🧑‍💻 Requisiti

Per eseguire gli script di esempio è necessario avere installato Matlab (o in alternativa Octave con le librerie compatibili).

📜 Esempi inclusi

* `pca_random.m` → applicazione della PCA a una nuvola di dati gaussiani rumorosi

* `ovariancancer_pca.m` → analisi PCA tramite SVD del dataset ovariancancer fornito da Matlab

## 📈 Risultati attesi

Visualizzazione della decrescita rapida dei valori singolari → le prime componenti principali catturano la maggior parte della varianza

Rappresentazione in 3D dei dati del dataset ovariancancer per distinguere campioni Cancer e Normal

Conferma che è possibile ridurre lo spazio dimensionale senza perdita significativa di informazione

## 📌 Struttura della repo
```
├── README.md
├── slides/Presentazione_Di_Fusco_Giorgio.pdf
├── scripts/
│   ├── pca_random.m
│   └── ovariancancer_pca.m
```
