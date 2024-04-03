# Esami Laboratorio e Amministrazione di Sistema 

## Esami 2024 

### Esame 1 (sample)

- Come si chiama l'operazione che permette ad un server DNS di rispondere alla richiesta di un client relativa ad un FQDN non presente nella sua zona di competenza?
  - Search
  - Discover
  - find_ip(FQDN)
  - `Ricorsione`  

**_Spiegazione_** : L'operazione che permette a un server DNS di rispondere alla richiesta di un client riguardante un FQDN (Fully Qualified Domain Name) che non è presente nella sua zona di competenza è chiamata "ricorsione". In questa operazione, il server DNS interroga altri server DNS in modo sequenziale o parallelo fino a trovare la risposta richiesta o raggiungere un punto in cui non ci sono ulteriori server DNS da consultare. Questo processo consente ai server DNS di rispondere alle richieste dei client anche per i domini non direttamente gestiti dal server stesso.

- Una sala server :
  - Non necessita di alcun impianto (condizionamento, elettrico, ecc…)
  - `Deve avere un adeguato impianto di condizionamento, anti-incendio ed elettrico`
  - Non è necessario abbia un’adeguata cablatura di rete per connettere server e apparecchiature di rete
  - Può essere accessibile a chiunque (studenti, insegnanti, impiegati…)  

**_Spiegazione_** : Una sala server è un ambiente critico che ospita apparecchiature informatiche vitali per il funzionamento di un'organizzazione. È importante che questa sala sia dotata di un impianto di condizionamento dell'aria per mantenere una temperatura e un'umidità appropriate, in modo da evitare il surriscaldamento delle apparecchiature elettromeccaniche sensibili. Un impianto anti-incendio è essenziale per proteggere le attrezzature da potenziali rischi di incendio, mentre un sistema elettrico affidabile, comprensivo di backup e di alimentazione di emergenza, è fondamentale per garantire il funzionamento continuo dei server.

- In quale delle seguenti opzioni sono tutti MTA (Mail Transfer Agent)?
  - Qmail e Libero
  - Gmail, Yahoo e Exim
  - Sendmail, Outlook
  - `Exim, Postfix, Qmail`

**_Spiegazione_** : Exim, Postfix e Qmail sono tutti software che rientrano nella categoria di Mail Transfer Agent (MTA), utilizzati per la gestione e il trasferimento di messaggi di posta elettronica. Questi programmi sono progettati per ricevere, instradare e consegnare email tra diversi server di posta elettronica su Internet. Sono ampiamente utilizzati in vari contesti, sia per i server di posta aziendali che per quelli personali, e offrono una serie di funzionalità e opzioni di configurazione avanzate.

- LAN sta per :
  - Little Area Network, reti piccole.
  - Length Area Network, reti che si estendono solo in lunghezza
  - `Local Area Network, reti di dimensoni locali, edifici, piccole aree`
  - Lemon Area Network, reti per il trasporto di agrumi  

**_Spiegazione_** : Una LAN (Local Area Network) è una rete informatica che copre un'area limitata, come un edificio, un campus universitario o un'azienda. Consente ai dispositivi di comunicare tra loro e condividere risorse, come file, stampanti e connessioni Internet.

- Un backup differenziale :
  - E’ equivalente ad un RAID 0
  - `E’ simile ad un backup incrementale con la differenza che salva tutti i file modificati dall’ultimo backup completo`
  - Effettua, periodicamente la copia completa di tutti i dati da salvare
  - E’ simile ad un backup completo con la differenza che salva solo i file modificati da un backup scelto come riferimento

**_Spiegazione_** : Un backup differenziale è simile ad un backup incrementale nel senso che entrambi salvano solo i file modificati rispetto all'ultimo backup completo. Tuttavia, a differenza di un backup incrementale che salva solo i file modificati dall'ultimo backup (completo o incrementale), un backup differenziale salva tutti i file modificati dall'ultimo backup completo. Quindi, ogni volta che viene eseguito un nuovo backup differenziale, vengono inclusi tutti i file modificati dal momento del backup completo precedente.

- Lo stack TCP/IP (Transmission Control Protocol/Internet Protocol) :
   - In una rete TCP/IP ogni host è identificato da più indirizzi IP all’interno della stessa rete.
   - E’ diviso in: fisico, collegamento dati, rete, trasporto, sessione, presentazione ed applicazione.
   - Al giorno d’oggi non viene più utilizzato, in quanto poco efficiente.
   - `E’ costruito su un modello a livelli.`

**_Spiegazione_** : Lo stack TCP/IP è organizzato secondo un modello a livelli, noto anche come modello OSI a 4 livelli o modello TCP/IP a 5 livelli. Questo modello definisce una serie di strati o livelli che gestiscono le diverse funzioni di comunicazione in una rete. I principali livelli del modello TCP/IP includono: livello di rete, livello di trasporto, livello di applicazione e altri. Questa organizzazione a livelli facilita lo sviluppo, il debug e la gestione delle reti, rendendo il TCP/IP uno dei protocolli di rete più diffusi e efficienti. 

- Che cosa è una DMZ?
  - `DeMilitarized Zone: è una rete(zona) in cui sono collocati i server, in modo che siano protetti da attacchi esterni ed interni.`
  - DeMilitarized Zone: una zona di internet a cui l'intelligence militare di qualsiasi paese non ha accesso
  - DeMilitarized Zone: una parte del dark deep web
  - DeMilitarized Zone: una politica di firewalling in cui tutto ciò che non è vietato è permesso
  - Dungeon Master Zone: rete privata per giochi di ruolo.

**_Spiegazione_** : Una DMZ, o DeMilitarized Zone, è una rete separata all'interno di un'organizzazione che è esposta al traffico esterno, spesso utilizzata per ospitare server accessibili da Internet, come server Web, FTP o di posta elettronica. Questa zona viene utilizzata per proteggere i server da attacchi esterni e interni, isolandoli dalla rete interna dell'organizzazione. La configurazione dei firewall e delle regole di sicurezza è tale che solo il traffico necessario sia consentito nella DMZ, mentre il resto del traffico è bloccato o limitato.

- Che cosa è un LAMP?
  - Un server per la gestione dell'illuminazione di grandi infrastrutture.
  - Un server web per ospitare siti scritti in ASP .NET
  - `LAMP sta per Linux Apache Mysql (o MariaDB) Php (o Perl,Python) è un web server per sviluppare e contenere applicazioni web dinamiche.`
  - Una estensione di Apache per la gestione di pagine dinamiche

**_Spiegazione_** : Il LAMP stack è un insieme di quattro diverse tecnologie software utilizzate dagli sviluppatori per costruire siti web e applicazioni web. L'acronimo LAMP si riferisce al sistema operativo Linux, al server web Apache, al sistema di gestione dei database MySQL (o MariaDB) e ai linguaggi di programmazione PHP (o Perl, Python). Tutte e quattro queste tecnologie sono open source, il che significa che sono mantenute dalla comunità e disponibili gratuitamente per chiunque le utilizzi. Gli sviluppatori utilizzano i LAMP stack per creare, ospitare e mantenere contenuti web.

- Quali tipi di shell sono disponibili su Windows?
  - `Prompt dei comandi e Powershell`
  - csh e Powershell
  - Prompt dei comandi e ksh
  - bash e tcsh

**_Spiegazione_** : Su Windows, i due principali tipi di shell sono il Prompt dei comandi e PowerShell. Entrambi forniscono un'interfaccia da riga di comando per interagire con il sistema operativo e eseguire comandi. Mentre il Prompt dei comandi utilizza principalmente comandi batch e script batch, PowerShell è un'interfaccia più avanzata che supporta scripting basato su .NET Framework e offre una vasta gamma di funzionalità aggiuntive rispetto al Prompt dei comandi tradizionale.

- Il filesystem è:
  - E’ un protocollo per la comunicazione web
  - La parte del sistema operativo che si occupa delle gestione di file e directory; FAT è l’unico standard per tutti i sistemi operativi
  - Un protocollo di rete a pacchetto di livello di trasporto, appartenente alla suite di protocolli Internet, che si occupa di controllo della trasmissione ovvero rendere affidabile la comunicazione dati in rete tra mittente e destinatario.
  - `La parte del sistema operativo che si occupa della gestione dei file, formattando opportunamente le unità di memoria di massa, registrando e leggendo i file`

**_Spiegazione_** : Il filesystem è la parte del sistema operativo che gestisce la memorizzazione e l'organizzazione dei file su dispositivi di memorizzazione di massa, come dischi rigidi, unità flash e SSD. Questo include l'allocazione dello spazio su disco, la struttura dei directory e la gestione dei nomi dei file. La formattazione delle unità di memoria di massa fa parte di questo processo, poiché stabilisce come i dati vengono organizzati fisicamente sul dispositivo.

- Il RAID 3:
  - Viene molto utilizzato quando vi sono molti piccoli file.
  - Ha alte prestazioni in accesso a grossi file, grazie alle sue letture/scritture simultanee.
  - Necessita di almeno due dischi.
  - `Memorizza le stringhe di parità, una mappa che permette la ricostruzione dei dati in caso di guasto.`

**_Spiegazione_** : Il RAID 3 è una configurazione RAID (Redundant Array of Independent Disks) che si caratterizza per memorizzare le stringhe di parità su un disco dedicato. Questo disco di parità consente la ricostruzione dei dati in caso di guasto di uno dei dischi nel set RAID. Ogni volta che vengono scritte o lette le informazioni sui dischi dati, le informazioni di parità vengono scritte sul disco di parità. Questa configurazione è particolarmente utile per fornire ridondanza dei dati e tolleranza ai guasti.

- I tipi di virtualizzazione sono:
  - Desktop e rete (Desktop and network)
  - Server e rete (Server and network)
  - Desktop e server (Desktop and server)
  - `Server, desktop, rete e dello storage (Server, desktop, network and storage)`

**_Spiegazione_** :  
_Server_: virtualizzazione dei server per consolidare più macchine virtuali su un singolo server fisico.  
_Desktop_: virtualizzazione dei desktop per eseguire più sistemi operativi e applicazioni su un singolo computer.  
_Rete_: virtualizzazione delle reti per creare reti virtuali che consentono di isolare il traffico, ottimizzare le prestazioni e semplificare la gestione.  
_Storage_: virtualizzazione dello storage per gestire e consolidare lo spazio di archiviazione da più dispositivi di storage in un unico pool di risorse.

- Per gestire le operazioni periodiche di un server Linux, cosa uso?
  - NTP
  - `Cron`
  - Ext4
  - La tavola periodica.

**_Spiegazione_** : Per gestire le operazioni periodiche di un server Linux, si utilizza il programma chiamato "cron". Cron è un demone di sistema che permette agli utenti di pianificare l'esecuzione di comandi o script ad intervalli regolari specificati dall'utente. Può essere utilizzato per eseguire varie operazioni automatiche come backup, pulizia dei file temporanei, aggiornamento di dati, e altro ancora, in base agli orari e alle frequenze desiderate.

- Cosa è il Remote Procedure Call (RPC)?
  - `Attivazione da parte di un programma di una procedura o subroutine eseguita su un computer diverso da quello sul quale il programma viene eseguito.`
  - Una chiamata remota ad un servizio locale
  - Una chiamata locale ad un servizio WAN
  - Una chiamata a subroutine di BASH

**_Spiegazione_** :Il Remote Procedure Call è un protocollo di comunicazione che consente a un programma su un computer di chiamare subroutine o procedure su un altro computer in una rete, come se fossero locali. In altre parole, permette a un programma di richiedere l'esecuzione di un'operazione su un altro sistema, come se quella operazione fosse eseguita direttamente sul proprio sistema locale.

- Il protocollo che permette ai client di sincronizzarsi con dei server, chiamati Time Server, si chiama:
  - NP
  - TSP 
  - `NTP` (Network Time Protocol)
  - NTS

**_Spiegazione_** : NTP sta per Network Time Protocol ed è il protocollo utilizzato per la sincronizzazione degli orologi di sistema sui computer in una rete.

## Esami 2020

### Esame 1 (20/01/2020)



