# Online-Challenge-Activity
Archivio del progetto di Basi di Dati A.A. 2020/2021 - Corso di laurea triennale in Informatica - UniGe.
La specifica richiedeva la progettazione e l'implementazione di una piccola base di dati a supporto di una (ipotetica) piattaforma di giochi online utilizzabili come strumenti di e-learning

Al suo interno trovate la specifica e, come da richiesta, il progetto diviso rispettivamente in tre parti:

- Una prima parte relativa alla fase di progettazione, dove si possono trovare i requisiti ristrutturati, il progetto concettuale compreso di schema ER, dizionario dati ed entità, specifica delle gerarchie di generalizzazione e i vincoli non esprimibili nel diagramma, per poi passare al progetto logico con lo schema ER ristrutturato, con le relative modifiche ai domini degli attributi con eventualmente quelli introdotti, le modifiche al relativo elenco dei vincoli, lo schema logico e la verifica di qualità finale con eventuali ottimizzazioni. Infine si ha l'analisi del carico di lavoro e l'elenco degli indici che si è deciso di creare per far fronte ad esso 

- una seconda parte contenente lo schema logico nella sua visualizzazione ottenuta tramite Datagrip e un file SQL contenente la creazione delle tabelle, le query del carico di lavoro così come ulteriori query e viste, le procedure e i trigger richiesti dalla specifica, e alcuni esempi di INSERT fatti per riempire la base di dati e fare successivamente analisi di prestazioni

- una terza parte contenente l'analisi dei piani di esecuzione delle query del carico di lavoro, con e senza gli indici creati nella prima parte, e la definizione delle politiche di controllo dell'accesso, con corrispondente file SQL di implementazione

Il DBMS utilizzato è PostgreSQL e non se ne assicura il funzionamento totale con altri DBMS (specialmente su parti come trigger, indici, ecc).
