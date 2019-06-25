# Fondi

Fondi.sol è uno smart contract che ha lo scopo di presentare alcune caratteristiche del linguaggio Solidity nel contesto di una esercitazione universitaria. L'implementazione attuale è parziale e non rispecchia completamente i requisiti definiti di seguito, ma consente di raggiungere gli obiettivi didattici.

### Definizione del contratto in Italiano

Un gruppo di amici vuole depositare dei fondi in un luogo sicuro e avere la certezza che non possano essere riscossi da nessuno finché almeno 3 degli amici non abbiano dato l'autorizzazione a farlo.
Quando almeno 3 degli amici hanno firmato il contratto, i fondi potranno essere riscossi da uno qualunque degli amici.

Come si può risolvere questo problema con metodi tradizionali?

### Risolvere il problema con uno smart contract

1. Aprire [Remix IDE](https://remix.ethereum.org/);
2. Creare un nuovo file Fondi.sol e copiare lo script presente in questo repository;
3. Compilare lo script;
4. Effettuare il deploy dello script;
5. Depositare dei fondi sullo smart contract invocando la funziona di fallback;
6. Provare a riscuotere (riscuotiFondi()) i fondi sullo smart contract;
7. Firmare (scriviFirma()) il contratto con almeno 3 indirizzi distinti e inserendo il proprio nome;
8. Prelevare (riscuotiFondi()) con succsso i fondi sullo smart contract utilizzando uno degli indirizzi che hanno firmato;

Ora si provi a utilizzare la rete di test pubblica Ropsten!

9. Installare Metamask e seguire la procedura guidata;
10. Connettersi alla rete Ropsten;
11. Prelevare dei fondi dal faucet;
12. Scegliere come environment Injected Web3;
13. Ripetere il processo a partire da 4;

Si noti che in questo caso le firme e i nomi saranno scritte in modo **permanente** sulla rete di test pubblica Ropsten.
Si invitano gli studenti a utilizzare [Etherscan](https://ropsten.etherscan.io/) per interagire con la stessa istanza dello smart contract, così come si farebbe in una situazione reale.





