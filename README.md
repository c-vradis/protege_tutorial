# Δημιουργία Ανοικτών Διασυνδεδεμένων Δεδομένων με τη χρήση της γλώσσας OWL και το λογισμικό Protégé

## Σχετικά με το tutorial 
Το tutorial αυτό αποτελεί μια σύντομη εισαγωγή στη χρήση του λογισμικού Protégé και απευθύνεται (κατά κύριο λόγο) στους μεταπτυχιακούς φοιτητές του Τμήματος Γεωγραφίας στο πλαίσιο του μαθήματος "Ερευνητικά Θέματα στην Γεωπληροφορική". Ως παράδειγμα χρησιμοποιούνται δεδομένα για το Χαροκόπειο Πανεπιστήμιο, τα Τμήματα, τις Σχολές και τις εγκαταστάσεις του. Στόχος της πρακτικής άσκησης είναι η δημιουργία μιας οντολογίας για την δημοσίευση (μέρους) των δεδομένων αυτών ως **Ανοικτών Διασυνδεδεμένων Δεδομένων** στον **Σημασιολογικό Ιστό**. Εκτός του [παρόντος εισαγωγικού κειμένου](README.md), για τους σκοπούς της εκμάθησης των βασικών λειτουργιών του Protégé θα αξιοποιηθούν:

- το περιγραφικό κείμενο και τα γεωχωρικά δεδομένα που περιέχονται στο αρχείο [About_Harokopio.md](Tutorial/About_Harokopio.md)
- οι οδηγίες που περιέχονται στο αρχείο [Tutorial.md](Tutorial/Tutorial.md)
- το [αρχείο της οντολογίας](Tutorial/HUA_ontology.owl) σε γλώσσα OWL, στο οποίο έχει προστεθεί ένα μέρος της οντολογίας

Ακολουθεί μια σύντομη εισαγωγή στις βασικές έννοιες του Σημασιολογικού Ιστού, των Ανοικτών Διασυνδεδεμένων Δεδομένων, των οντολογιών και των λεξιλογίων καθώς και των ρόλων τους στο πλαίσιο του Σημασιολογικού Ιστού. Η εισαγωγή αυτή προέρχεται από μετάφραση κειμένων από διάφορες πηγές με ανοικτές άδειες χρήσης, για τις οποίες παρέχεται σύνδεσμος στο τέλος κάθε παραγράφου.

# Τι είναι ο Σημασιολογικός Ιστός (Semantic Web)

Ίσως ο καλύτερος, αλλά ανεπίσημος, ορισμός του Σημασιολογικού Ιστού βρίσκεται στο άρθρο *"The Semantic Web"* (Berners-Lee et al.) του Scientific American που εκδόθηκε τον Μάιο του 2001, σύμφωνα με το οποίο: *"Ο Σημασιολογικός Ιστός είναι μια επέκταση του σημερινού Ιστού στον οποίο οι πληροφορίες αποκτούν σαφώς καθορισμένο νόημα, επιτρέποντας καλύτερα στους υπολογιστές και τους ανθρώπους να συνεργάζονται".* <sup>([Πηγή](https://www.w3.org/RDF/Metalog/docs/sw-easy))</sup>.

Ο Σημασιολογικός Ιστός παρέχει ένα κοινό πλαίσιο που επιτρέπει την κοινή χρήση και επαναχρησιμοποίηση των δεδομένων πέρα από τα όρια εφαρμογών, επιχειρήσεων και κοινοτήτων. Πρόκειται για μια συλλογική προσπάθεια υπό την ηγεσία του W3C με τη συμμετοχή μεγάλου αριθμού ερευνητών και άλλων εταίρων. Βασίζεται στο **Resource Description Framework**, ελεύθερα αποδιδόμενο ως "Πλαίσιο Περιγραφής Πόρων" και ευρέως γνωστό ως ακρωνύμιο: **RDF** <sup>([Πηγή](https://www.w3.org/2001/sw/))</sup>. Ο Σημασιολογικός Ιστός θεωρείται ότι αποτελεί το 3ο στάδιο του Παγκόσμιου Ιστού: 

![Η εξέλιξη του Παγκόσμιου Ιστού](images/webdiagram.png) 
*Η εξέλιξη του Παγκόσμιου Ιστού* <sup>([Πηγή](https://euclid-project.eu/modules/chapter1.html))</sup>

## Web 1.0 (Στατικός Παγκόσμιος Ιστός) 

Το 1993 κυκλοφόρησε το Mosaic, ένας από τους πρώτους περιηγητές του WWW, ο οποίος μπορούσε να εμφανίζει γραφικά καθώς και κείμενο. Από τότε ο Παγκόσμιος Ιστός αναπτύχθηκε ραγδαία και οι περισσότεροι χρήστες λειτουργούσαν μάλλον ως *καταναλωτές* περιεχομένου και όχι ως *δημιουργοί*. Κατά τη διάρκεια αυτής της πρώιμης φάσης της ανάπτυξης του Ιστού, που μερικές φορές αποκαλείται **Ιστός 1.0**, οι ιστοσελίδες ήταν ως επί το πλείστον στατικά έγγραφα, χωρίς να υπάρχει δυνατότητα συνεισφοράς περιεχομένου από τους χρήστες ή προσαρμογής του περιεχομένου στις ειδικές απαιτήσεις του χρήστη <sup>([Πηγή](https://euclid-project.eu/modules/chapter1.html))</sup>.

## Web 2.0 (Δυναμικός Παγκόσμιος Ιστός ή ο Ιστός των Κοινωνικών Δικτύων)

Γύρω στο έτος 2000 ξεκίνησε η δεύτερη φάση ανάπτυξης του ιστού, η οποία προέκυψε από την αυξανόμενη χρήση τεχνολογιών οι οποίες επέτρεπαν στους χρήστες ενός προγράμματος περιήγησης να *αλληλεπιδρούν* με τις ιστοσελίδες και να *διαμορφώνουν* το περιεχόμενό τους. Η φάση του Ιστού  ονομάστηκε **Web 2.0** και κατέστησε δυνατό ένα ευρύ φάσμα **κοινωνικών δικτυακών τόπων**, αρκετοί από τους οποίους είναι πλέον οικείοι σε όλους/ες, μεταξύ των οποίων τα δωμάτια συνομιλίας (chat rooms), τα ιστολόγια, τα wikis, οι κριτικές προϊόντων στις ηλεκτρονικές αγορές, ο πληθοπορισμός και αρκετά άλλα. 

## Web 3.0 (Σημασιολογικός Ιστός)

Κατά τη διάρκεια της δεκαετίας του 1990, ο Tim Berners-Lee και οι συνεργάτες του ανέπτυξαν ιδέες και συνέταξαν προτάσεις για ένα περαιτέρω στάδιο ανάπτυξης του Παγκόσμιου Ιστού, γνωστό πλέον ως ***Σημασιολογικό Ιστό***. Αυτή η μακρόπνοη ιδέα υλοποιείται εν μέρει στο σημερινό στάδιο ανάπτυξης του Ιστού που μερικές φορές αποκαλείται ***Web 3.0***. Στο άρθρο τους του 2001, ο Berners-Lee και οι συν-συγγραφείς του επεσήμαναν ότι το (τότε) υπάρχον περιεχόμενο του Ιστού ήταν μεν αξιοποιήσιμο από τους ανθρώπους, αλλά δεν μπορούσε να αξιοποιηθεί πλήρως από εφαρμογές υπολογιστών. Αν και υπήρχαν ήδη πολλές διαθέσιμες εφαρμογές για εργασίες όπως η σχεδίαση με υπολογιστή (CAD), ή ο προγραμματισμός, ή η ανάλυση, αλλά λειτουργούσαν μόνο σε αρχεία δεδομένων σε κάποια τυποποιημένη λογική μορφή και όχι σε πληροφορίες που παρουσιάζονταν σε κείμενο φυσικής γλώσσας. Ένα άτομο μπορούσε να οργανώσει ένα δρομολόγιο από ιστοσελίδες που παρήχαν δρομολόγια πτήσεων, τοποθεσίες ξενοδοχείων κ.λπ., αλλά δεν ήταν ακόμη δυνατό (τότε όπως και τώρα) για προγράμματα να εξάγουν τέτοιες πληροφορίες αξιόπιστα από ιστοσελίδες  αδόμητου κειμένου. Ο αρχικός στόχος του Σημασιολογικού Ιστού είναι να παρέχει **πρότυπα** μέσω των οποίων οι άνθρωποι θα μπορούν να δημοσιεύουν έγγραφα που αποτελούνται από ***δεδομένα***, ή ίσως μια ανάμιξη δεδομένων και κειμένου, επιτρέποντας έτσι στα προγράμματα να συνδυάζουν διαφορετικά και πολλά σύνολα δεδομένων, όπως ακριβώς ένα άτομο μπορεί να συνδυάσει πληροφορίες από πολλά έγγραφα προκειμένου να λύσει ένα πρόβλημα ή να εκτελέσει μια εργασία <sup>([Πηγή](https://euclid-project.eu/modules/chapter1.html))</sup>.

Ο Σημασιολογικός Ιστός είναι πλέον ένα συνεργατικό κίνημα με επικεφαλής τον διεθνή οργανισμό προτύπων **World Wide Web Consortium**([W3C](https://www.w3.org/standards/semanticweb/)), ο οποίος ενθαρρύννει την ενσωμάτωση σημασιολογικού περιεχομένου στις ιστοσελίδες με στόχο την μετατροπή της σημερινής μορφής του Παγκόσμιου Ιστού, στον οποίο κυριαρχούν αδόμητα ή/και ημιδομημένα έγγραφα, σε έναν Ιστό Δεδομένων. Η στοίβα του Σημασιολογικού Ιστού βασίζεται στο Πλαίσιο Περιγραφής Πόρων (RDF) του W3C.

![Η μετάβαση από τον Ιστό των Εγγράφων στον Ιστό των δεδομένων](images/weblinks.png) 

*Η μετάβαση από τον Ιστό των Εγγράφων στον Ιστό των δεδομένων* <sup>([Πηγή](https://euclid-project.eu/modules/chapter1.html))</sup>

## Η στοίβα του Σημασιολογικού Ιστού
![Η στοίβα του Σημασιολογικού Ιστού](images/layerCake.png) 

*Η στοίβα του Σημασιολογικού Ιστού* <sup>([Πηγή](https://www.w3.org/2007/03/layerCake.png))</sup>

Η στοίβα του Σημασιολογικού Ιστού (Semantic Web Stack, Semantic Web Cake, Semantic Web Layer Cake) αποτελεί μια διαγραμματική και δομική απεικόνιση της αρχιτεκτονικής του Σημασιολογικού Ιστού. Πιο συγκεκριμένα, απεικονίζει την ιεραρχία των τεχνολογιών, όπου κάθε επίπεδο στηρίζεται, εκμεταλλεύεται και χρησιμοποιεί τις δυνατότητες των επιπέδων που βρίσκονται από κάτω. Με έμμεσο τρόπο, δηλώνει ότι ο Σημασιολογικός Ιστός αποτελεί ουσιαστικά επέκταση (και όχι αντικατάσταση) του κλασικού Παγκόσμιου Ιστού. Η απεικόνιση αυτή δημιουργήθηκε αρχικά από τον ίδιο τον [Sir Tim Berners-Lee](http://www.w3.org/2000/Talks/1206-xml2k-tbl/slide10-0.html) και έκτοτε έχει τροποποιηθεί ελαφρώς. Οι τεχνολογίες στο κάτω μέρος της στοίβας μέχρι και την γλώσσα OWL είναι σήμερα τυποποιημένες και ευρέως αποδεκτές στη δημιουργία εφαρμογών Σημασιολογικού Ιστού. Όμως, δεν είναι ακόμη πλήρως σαφής ο τρόπος υλοποίησης της κορυφής της στοίβας <sup>([Πηγή](https://en.wikipedia.org/wiki/Semantic_Web_Stack))</sup>.

### Το Internationalized Resource Identifier (IRI)
Αποτελεί μια γενίκευση του URI (το οποίο με τη σειρά του αποτελεί μια γενίκευση του URL), και παρέχει το μέσο για την απόδοση μοναδικών αναγνωριστικών σε παγκόσμιο επίπεδο στους πόρους του σημασιολογικού ιστού. 

### Unicode
Χρησιμεύει στην αναπαράσταση κειμένου σε πολλές γλώσσες. Ο Σημασιολογικός Ιστός στοχεύει στη γεφύρωση δεδομένων σε διαφορετικές ανθρώπινες γλώσσες, οπότε θα πρέπει να είναι σε θέση να τις αναπαριστά.

### XML
Η XML είναι μια γλώσσα επισήμανσης (markup language) που επιτρέπει τη δημιουργία εγγράφων που αποτελούνται από δομημένα/ημιδομημένα δεδομένα. Οι χώροι ονομάτων XML (namespaces) παρέχουν έναν τρόπο χρήσης επισημειώσεων από περισσότερες πηγές. Ο Σημασιολογικός Ιστός αφορά τη σύνδεση δεδομένων μεταξύ τους, και έτσι απαιτείται η χρήση και η αναφορά διαφόρων πηγών σε ένα έγγραφο.

### RDF / RDFS
Το Resource Description Framework (RDF) είναι ένα πλαίσιο για τη δημιουργία δηλώσεων με τη μορφή των λεγόμενων τριπλέτων ή τριάδων (triples). Επιτρέπει την αναπαράσταση πληροφοριών σχετικά με τους πόρους με τη μορφή γράφου - ο σημασιολογικός ιστός αποκαλείται μερικές φορές Giant Global Graph. Το RDF Schema (γνωστό και ως RDFS) παρέχει το βασικό λεξιλόγιο για το RDF. Χρησιμοποιώντας το RDFS είναι για παράδειγμα δυνατή η δημιουργία ιεραρχιών κλάσεων αλλά και ιδιοτήτων (σχέσεων).

### OWL
Η γλώσσα οντολογίας ιστού Web Ontology Language (OWL) επεκτείνει το RDFS προσθέτοντας πιο προηγμένες δομές για την περιγραφή της σημασιολογίας των δηλώσεων RDF. Επιτρέπει τη δήλωση πρόσθετων περιορισμών, όπως π.χ. καρτελικότητα, περιορισμοί τιμών ή χαρακτηριστικά ιδιοτήτων όπως η μεταβατικότητα. Βασίζεται στη λογική της περιγραφής και έτσι προσδίδει τη δυνατότητα συλλογισμού (reasoning) στον Σημασιολογικό Ιστό.

### SPARQL
Η SPARQL είναι μια γλώσσα ερωτημάτων RDF και μπορεί να χρησιμοποιηθεί για την υποβολή ερωτημάτων σε οποιαδήποτε δεδομένα που βασίζονται σε RDF (συμπεριλαμβανομένων των δηλώσεων που περιλαμβάνουν RDFS και OWL). Η γλώσσα ερωτημάτων είναι απαραίτητη για την ανάκτηση πληροφοριών για εφαρμογές σημασιολογικού ιστού και σε ορισμένες περιπτώσεις μπορεί να χρησιμοποιηθεί και για την εισαγωγή ή τροποποίηση δεδομένων υπό τη μορφή triples.

# Τι είναι τα Ανοικτά Διασυνδεδεμένα Δεδομένα (Linked Open Data)
Ο Σημασιολογικός Ιστός δεν αφορά μόνο την τοποθέτηση κάποιων δεδομένων στον Παγκόσμιο Ιστό: αφορά επιπλέον και τη δημιουργία **συνδέσμων** μεταξύ των δεδομένων, έτσι ώστε ένας άνθρωπος ή μια μηχανή να μπορεί να εξερευνήσει τον ιστό των δεδομένων που δημιουργείται με τον τρόπο αυτό. Ο όρος **Ανοικτά Διασυνδεδεμένα Δεδομένα (Linked Open Data)** χρησιμοποιήθηκε από τον ίδιο τον εφευρέτη του Παγκόσμιου Ιστού [Tim Berners-Lee](https://www.w3.org/DesignIssues/LinkedData.html). Όπως ο παραδοσιακός Παγκόσμιος Ιστός που βασίζεται στο υπερκείμενο (hypertext), ο ιστός των δεδομένων κατασκευάζεται με έγγραφα στον ιστό, τα οποία περιέχουν δεδομένα. Ωστόσο, σε αντίθεση με τον Παγκόσμιο Ιστό όπου οι σύνδεσμοι αντιστοιχούν σε άλλα έγγραφα τα οποία και αυτά είναι βασισμένα σε υπερκειμένο και γραμμένα σε γλώσσα HTML, τα διασυνδεδομένα δεδομένα είναι ουσιαστικά σύνδεσμοι μεταξύ  ***πραγμάτων που περιγράφονται μέσα από την γλώσσα RDF ή OWL***.  Για να προσδιοριστεί με μοναδικό τρόπο κάθε είδος αντικείμενο ή έννοια χρησιμοποιούνται τα [URI (Universal Resource Identifier)](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) και τα τελευταία χρόνια τα [IRI (Internationalized Resource Identifier)](https://en.wikipedia.org/wiki/Internationalized_Resource_Identifier). Οι αρχικές και βασικές συστάσεις του Berners-Lee σχετικά με τα LOD είναι:

- Χρησιμοποιήστε URIs ως ονόματα για τα πράγματα
- Χρησιμοποιήστε URIs με το πρωτόκολλο HTTP ώστε οι άνθρωποι να μπορούν να αναζητήσουν αυτά τα ονόματα (δηλαδή ουσιαστικά μετατρέψτε τα URI σε URL).
- Όταν κάποιος αναζητά ένα URI, να παρέχετε χρήσιμες πληροφορίες, χρησιμοποιώντας διαδεδομένα πρότυπα (RDF ή μέσω SPARQL).
- Συμπεριλάβετε συνδέσμους προς άλλα URIs, ώστε μηχανές και άνθρωποι να μπορούν να ανακαλύψουν περισσότερα πράγματα.
Το έτος 2010 ανέπτυξε ένα σύστημα αξιολόγησης των LOD, ώστε να ενθαρύνει τη περαιτέρω δημοσίευση των δεδομένων ως ανοικτών και διασυνδεδεμένων. Το σύστημα αυτό αξιολογεί τα δεδομένα με 1 έως 5 αστέρια ανάλογα με το αν η δομή και ο τρόπος δημοσίευσης πληρούν τις παρακάτω προϋποθέσεις:

|       |                                                                                                                                                                           |
|------:|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|     ★ | Τα δεδομένα είναι διαθέσιμα στον Παγκόσμιο Ιστό (σε οποιαδήποτε μορφή/μορφότυπο), *αλλά με ανοικτή άδεια χρήσης*, ώστε να μπορούν να χαρακτηρισθούν ως Ανοικτά Δεδομένα.  |
|    ★★ | Επιπλέον της ανοικτής άδειας χρήσης, τα δεδομένα είναι διαθέσιμα ως *δομημένα και μηχαναγνώσιμα* (π.χ. σε μορφότυπο Excel αντί ως μια σαρωμένη εικόνα ενός πίνακα δεδομένων)|
|   ★★★ | Όπως τα παραπάνω και επιπλέον ο μορφότυπος *δεν πρέπει να είναι εμπορικός* (non-proprietary), π.χ. CSV αντί για Excel.                                                      |
|  ★★★★ | Όπως τα παραπάνω και επιπλέον χρήση *ανοικτών προτύπων από τον οργανισμό W3C* (RDF και SPARQL) για την ταυτοποίηση των πραγμάτων, έτσι ώστε οι άνθρωποι να μπορούν να αναφερθούν σε αυτά |
| ★★★★★ | Όπως τα παραπάνω και επιπλέον *διασυνδέστε τα δεδομένα σας* με τα δεδομένα άλλων ανθρώπων ώστε να παρέχετε ένα πλαίσιο αναφοράς               |    

# Τι είναι η οντολογία
Στην Φιλοσοφία, με τον όρο ***Οντολογία*** αναφερόμαστε στο λόγο περί του *όντος* ή στην επιστήμη του *όντος*, τη φιλοσοφική αναζήτηση που εξετάζει τις αρχές της ύπαρξης και συγκρότησης του *Όντος*, μελετά τη φύση και την ουσία των Όντων (Ον= αυτό που πραγματικά υπάρχει, καθετί που έχει υπόσταση) <sup>([Πηγή](https://el.wikipedia.org/wiki/Οντολογία))</sup>.

Στην επιστήμη των υπολογιστών και της πληροφορικής, μια οντολογία είναι ένας τυπικός και σαφής ορισμός μιας κοινής και συμφωνημένης εννοιολόγησης που αφορά σε ένα πεδίο ενδιαφέροντος. Όταν αυτός ο ορισμός γνώσης αναπαρασταθεί με τυπικό και φορμαλιστικό τρόπο ως ένα σύνολο εννοιών, σχέσεων και ιδιοτήτων μπορεί να χρησιμοποιηθεί για συλλογιστική (εξαγωγή συμπερασμάτων/νέας γνώσης) και για την δομημένη περιγραφή γνώσης ενός πεδίου ενδιαφέροντος. <sup>(Πηγή: [1](https://en.wikipedia.org/wiki/Ontology_(computer_science)), [2](https://el.wikipedia.org/wiki/Οντολογία_(πληροφορική)))</sup>.

Οι *υπολογιστικές οντολογίες*, όπως έχει επικρατήσει ο όρος τα τελευταία χρόνια, χρησιμοποιούνται ουσιαστικά για την καταγραφή της γνώσης σχετικά με κάποιον τομέα ενδιαφέροντος. Μια οντολογία περιγράφει τις *έννοιες* (concepts) του τομέα καθώς και τις *σχέσεις* (relations) που ισχύουν μεταξύ αυτών των εννοιών. Διαφορετικές γλώσσες οντολογιών παρέχουν διαφορετικές δυνατότητες. Μια από τις πλέον διαδεδομένες και τυποποιημένες γλώσσες οντολογιών είναι η **OWL (Web Ontology Language)** που συντηρείται από την **Κοινοπραξία του Παγκόσμιου Ιστού (W3C)**. Η γλώσσα OWL καθιστά δυνατή την περιγραφή εννοιών ενώ παρέχει επίσης νέες δυνατότητες: διαθέτει ένα πλουσιότερο σύνολο τελεστών (π.χ. τομή, ένωση και άρνηση) και σύνθετες έννοιες μπορούν να δομηθούν από απλούστερες έννοιες. Με τη χρήση ενός **συλλογιστή** (reasoner), ο οποίος µπορεί να ελέγξει αν όλες οι δηλώσεις και οι ορισµοί στην οντολογία είναι συνεπείς, µπορεί επιπλέον να αναγνωρίσει ποιες έννοιες ταιριάζουν κάτω από ποιους ορισµούς <sup>([Πηγή](http://mowl-power.cs.man.ac.uk/protegeowltutorial/resources/ProtegeOWLTutorialP4_v1_3.pdf))</sup>.

# Τι είναι τα λεξιλόγια, η σχέση τους με τις οντολογίες και σε τι χρησιμεύουν 
Στον Σημασιολογικό Ιστό, τα **λεξιλόγια** (vocabularies) ορίζουν τις έννοιες και τις σχέσεις (που αναφέρονται επίσης ως "όροι") που χρησιμοποιούνται για την περιγραφή και την αναπαράσταση ενός τομέα ενδιαφέροντος. Τα λεξιλόγια χρησιμοποιούνται για να ταξινομήσουν τους όρους που μπορούν να χρησιμοποιηθούν από μια συγκεκριμένη εφαρμογή, να χαρακτηρίσουν τις πιθανές μεταξύ τους σχέσεις και να ορίσουν τους πιθανούς περιορισμούς στη χρήση αυτών των όρων. Στην πράξη, τα λεξιλόγια μπορεί να είναι πολύ πολύπλοκα (µε αρκετές χιλιάδες όρους) ή πολύ απλά (περιγράφοντας μία ή δύο μόνο έννοιες) <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

Δεν υπάρχει πλήρης και σαφής διαχωρισμός μεταξύ αυτού που αναφέρεται ως "λεξιλόγιo" και "οντολογία". Η τάση είναι να χρησιμοποιείται η λέξη "οντολογία" για πιο σύνθετες και ενδεχομένως αρκετά τυπικές συλλογές όρων, ενώ η λέξη "λεξιλόγιο" χρησιμοποιείται όταν δεν χρησιμοποιείται απαραίτητα ένας τέτοιος αυστηρός φορμαλισμός ή μόνο με μια πολύ ελεύθερη σημασία. Τα λεξιλόγια αποτελούν βασικά δομικά στοιχεία για τις τεχνικές εξαγωγής συμπερασμών στον Σημασιολογικό Ιστό <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

Ο ρόλος των λεξιλογίων στον Σημασιολογικό Ιστό είναι να βοηθούν στην ολοκλήρωση δεδομένων όταν, για παράδειγμα, μπορεί να υπάρχουν ασάφειες σχετικά με τους όρους που χρησιμοποιούνται στα διαφορετικά σύνολα δεδομένων ή όταν κάποια επιπλέον γνώση μπορεί να οδηγήσει στην ανακάλυψη νέων σχέσεων. Σκεφτείτε, για παράδειγμα, την εφαρμογή των οντολογιών στον τομέα της υγειονομικής περίθαλψης. Οι επαγγελματίες π.χ. της ιατρικής τις χρησιμοποιούν για να αναπαραστήσουν τη γνώση σχετικά με τα συμπτώματα, τις ασθένειες και τις θεραπείες. Οι φαρμακευτικές εταιρείες τις χρησιμοποιούν για να αναπαραστήσουν πληροφορίες σχετικά με φάρμακα, τις δοσολογίες και τις αλλεργίες. Ο συνδυασμός αυτής της γνώσης από ιατρικές και φαρμακευτικές κοινότητες με δεδομένα ασθενών επιτρέπει ένα ολόκληρο φάσμα ευφυών εφαρμογών, όπως εργαλεία υποστήριξης αποφάσεων που αναζητούν πιθανές θεραπείες, συστήματα που παρακολουθούν την αποτελεσματικότητα των φαρμάκων και τις πιθανές παρενέργειες και εργαλεία που υποστηρίζουν την επιδημιολογική έρευνα <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

Ένας άλλος τύπος παραδείγματος είναι η χρήση λεξιλογίων για την οργάνωση της γνώσης. Βιβλιοθήκες, μουσεία, κυβερνητικές πύλες, επιχειρήσεις, εφαρμογές κοινωνικής δικτύωσης και άλλες κοινότητες που διαχειρίζονται μεγάλες συλλογές βιβλίων, ιστορικών αντικειμένων, ειδήσεων, επαγγελματικών λεξικών, καταχωρήσεων σε ιστολόγια και άλλων στοιχείων μπορούν πλέον να χρησιμοποιούν λεξιλόγια, χρησιμοποιώντας τυποποιημένους φορμαλισμούς, για να αξιοποιήσουν τη δύναμη των διασυνδεδεμένων δεδομένων <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

Από την εφαρμογή εξαρτάται το πόσο σύνθετα λεξιλόγια θα χρησιμοποιήσει. Σε ορισμένες εφαρμογές μπορεί να αποφασιστεί να μην χρησιμοποιηθούν ούτε καν κάποια μικρού μεγέθους λεξιλόγια και να βασιστούν πάνω στη λογική του προγράμματος της εφαρμογής. Σε ορισμένες εφαρμογές μπορεί να αποφασιστεί να χρησιμοποιηθούν πολύ απλά λεξιλόγια, όπως αυτό που περιγράφεται στην ενότητα των παραδειγμάτων παρακάτω, και να επιτρέψουν σε ένα γενικής χρήσης περιβάλλον Σημασιολογικού Ιστού να χρησιμοποιήσει αυτές τις επιπλέον πληροφορίες για να κάνει την αναγνώριση των όρων. Σε ορισμένες εφαρμογές χρειάζεται μια συμφωνία σε κοινές ορολογίες, χωρίς καμία αυστηρότητα που να επιβάλλεται από ένα λογικό σύστημα. Τέλος, ορισμένες εφαρμογές μπορεί να χρειάζονται πιο σύνθετες οντολογίες με πολύπλοκες διαδικασίες συλλογιστικής. Όλα εξαρτώνται από τις απαιτήσεις και τους στόχους των εφαρμογών <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

Για την ικανοποίηση αυτών των διαφορετικών αναγκών, ο οργανισμός W3C προσφέρει μια μεγάλη παλέτα τεχνικών για την περιγραφή και τον ορισμό διαφορετικών μορφών λεξιλογίων σε τυποποιημένη μορφή. Σε αυτές περιλαμβάνονται το **RDF**, το **RDF Schema**, το **Απλό Σύστημα Οργάνωσης Γνώσης (SKOS)**, η **Γλώσσα Οντολογιών Ιστού (OWL)** και η **Μορφή Ανταλλαγής Κανόνων (RIF)**. Η επιλογή μεταξύ αυτών των διαφορετικών τεχνολογιών εξαρτάται από την πολυπλοκότητα και την αυστηρότητα που απαιτεί μια συγκεκριμένη εφαρμογή <sup>([Πηγή](https://www.w3.org/standards/semanticweb/ontology))</sup>.

# Συστατικά μέρη μιας υπολογιστικής οντολογίας σε γλώσσα OWL<sup>([Πηγή](https://people.cs.vt.edu/~kafura/ComputationalThinking/Class-Notes/Tutorial-Highlighted-Day1.pdf))</sup>

## Individuals (Περιπτώσεις/Πραγματώσεις)
Πρόκειται για συγκεκριμένες περιπτώσεις, πραγματώσεις των κλάσεων, αντικείμενα, ή παραδείγματα. Τα individuals αναπαριστούν αντικείμενα στον τομέα που μας ενδιαφέρει. Στη γλώσσα OWL δύο διαφορετικά ονόματα θα μπορούσαν στην πραγματικότητα να αναφέρονται στην ίδια περίπτωση/πραγμάτωση. Για παράδειγμα, τα ονόματα `"Βασίλισσα Ελισάβετ"`, `"Η Βασίλισσα"` και `"Elizabeth Windsor"` μπορεί να αναφέρονται στο ίδιο άτομο. Στην γλώσσα OWL πρέπει να δηλώνεται ρητά ότι 2 ή περισσότερες περιπτώσεις/πραγματώσεις είναι τα ίδια ή διαφορετικά μεταξύ τους, αλλιώς μπορεί να είναι ασαφές αν είναι ίδια ή διαφορετικά. 

## Classes (Κλάσεις)
Αλλιώς γνωστές ως Σύνολα, Συλλογές, Έννοιες, Κλάσεις, Τύποι Αντικειμένων ή Είδη πραγμάτων. Οι κλάσεις στην γλώσσα OWL ερμηνεύονται ως σύνολα που περιέχουν περιπτώσεις/πραγματώσεις (individuals). Περιγράφονται με τη χρήση τυπικών (μαθηματικών) περιγραφών που δηλώνουν με ακρίβεια τις απαιτήσεις για τη συμμετοχή στην κλάση. Για παράδειγμα, η κλάση `Cat` θα περιέχει όλα τις περιπτώσεις που είναι γάτες στο πεδίο ενδιαφέροντός μας. Οι κλάσεις μπορούν να οργανωθούν σε μια ιεραρχία υπερκλάσεων-υποκλάσεων, η οποία είναι επίσης γνωστή ως **ταξινομία** (taxonomy), που αποτελεί βασικό συστατικό μιας υπολογιστικής οντολογίας. Οι υποκλάσεις εξειδικεύουν ("υπάγονται") στις υπερκλάσεις τους. Για παράδειγμα, θεωρήστε τις κλάσεις `Animal` και `Cat`: η κλάση `Cat` μπορεί να είναι υποκλάση της κλάσης `Animal` (άρα αυτό σημαίνει και το αντίστροφο ότι δηλαδή η κλάση `Animal` είναι η υπερκλάση της κλάσης `Cat`). Αυτό δηλώνει ότι: *"Όλες οι γάτες είναι ζώα"*, *"Όλα τα μέλη της κλάσης `Cat` είναι μέλη της κλάσης `Animal`"*, *"Το να είσαι Γάτα συνεπάγεται ότι είσαι Ζώο"* και ότι *"Η Γάτα υπάγεται στην κλάση Ζώο"*. Ένα από τα βασικά χαρακτηριστικά της γλώσσας OWL (συγκεκριμένα της έκδοσης OWL-DL) είναι ότι αυτές οι σχέσεις υπερκλάσης-υποκλάσης (σχέσεις υπαγωγής) μπορούν να υπολογιστούν αυτόματα από έναν **συλλογιστή** (reasoner). Στην γλώσσα OWL οι κλάσεις δομούνται από περιγραφές και ορισμούς που καθορίζουν τις συνθήκες που πρέπει να ικανοποιούνται από μια περίπτωση/πραγμάτωση για να είναι μέλος της κλάσης. 

## Σχέσεις ή Ιδιότητες (Relations / Properties)
Είναι οι τρόποι με τους οποίους οι κλάσεις και οι πραγματώσεις (individuals) μπορούν να σχετίζονται μεταξύ τους. Οι ιδιότητες είναι δυαδικές σχέσεις μεταξύ πραγματώσεων, δηλαδή οι ιδιότητες συνδέουν δύο πραγματώσεις μεταξύ τους4. Για παράδειγμα, η ιδιότητα `hasSibling` μπορεί να συνδέει το άτομο `Matthew` με το άτομο `Gemma`, η ιδιότητα `hasChild` μπορεί να συνδέει το άτομο `Peter` με το άτομο `Matthew`. Μια ιδιότητα μπορεί να έχει την αντίστροφή της: για παράδειγμα, το αντίστροφο της ιδιότητας `hasOwner` είναι η `isOwnedBy`. Οι ιδιότητες μπορούν να περιορίζονται στο να έχουν μία μόνο τιμή - δηλαδή να είναι λειτουργικές. Μπορούν επίσης να είναι είτε μεταβατικές είτε συμμετρικές.

## Περιορισμοί
Τυπικά διατυπωμένες περιγραφές του τι πρέπει να είναι αληθές προκειμένου κάποιος ισχυρισμός να γίνει αποδεκτός.

## Κανόνες (Rules)
Δηλώσεις με τη μορφή πρότασης if-then που περιγράφουν τα λογικά συμπεράσματα που μπορούν να εξαχθούν από έναν ισχυρισμό συγκεκριμένης μορφής.

## Αξιώματα (Axioms)
Ισχυρισμοί (συμπεριλαμβανομένων και των κανόνων) σε λογική μορφή που μαζί αποτελούν τη συνολική θεωρία που περιγράφει η οντολογία στο πεδίο εφαρμογής της. Αυτός ο ορισμός διαφέρει από αυτόν των "αξιωμάτων" στη γραμματική και την τυπική λογική. Σε αυτούς τους κλάδους, τα αξιώματα περιλαμβάνουν μόνο δηλώσεις που υποστηρίζονται ως εκ των προτέρων γνώση. Όπως χρησιμοποιείται εδώ, τα "αξιώματα" περιλαμβάνουν επίσης τη θεωρία που προκύπτει από αξιωματικές δηλώσεις.

# Χρήσιμοι σύνδεσμοι, πηγές και βιβλιογραφία

- [W3C](https://www.w3.org/standards/semanticweb/)

- [The Semantic Web: A new form of Web content that is meaningful to computers will unleash a revolution of new possibilities, by TIM BERNERS-LEE, JAMES HENDLER and ORA LASSILA](https://www-sop.inria.fr/acacia/cours/essi2006/Scientific%20American_%20Feature%20Article_%20The%20Semantic%20Web_%20May%202001.pdf)

- [The EUCLID project (Educational Curriculum for the usage of Linked Data)](https://euclid-project.eu)

- Κάβουρας, Μ., Δάρρα, Α., Κόκλα, Μ., Κονταξάκη, Σ., Πανόπουλος, Γ., & Τομαή, Ε. (2016). Επιστήμη Γεωγραφικής Πληροφορίας - Ολοκληρωμένη Προσέγγιση και Ειδικά Θέματα [Προπτυχιακό εγχειρίδιο]. Κάλλιπος, Ανοικτές Ακαδημαϊκές Εκδόσεις. [https://hdl.handle.net/11419/6381]( https://hdl.handle.net/11419/6381)

- Στεφανιδάκης, Μ., Ανδρόνικος, Θ., & Παπαδάκης, Ι. (2015). Ανοικτά συνδεδεμένα δεδομένα και εφαρμογές [Προπτυχιακό εγχειρίδιο]. Κάλλιπος, Ανοικτές Ακαδημαϊκές Εκδόσεις. [https://hdl.handle.net/11419/1338(https://hdl.handle.net/11419/1338)

- Στάμου, Γ. (2015). Αναπαράσταση οντολογικής γνώσης και συλλογιστική [Προπτυχιακό εγχειρίδιο]. Κάλλιπος, Ανοικτές Ακαδημαϊκές Εκδόσεις. [https://hdl.handle.net/11419/4225](https://hdl.handle.net/11419/4225)

- Λογισμικό Protégé: [Desktop](https://protege.stanford.edu/products.php#desktop-protege), [WebProtégé](http://webprotege.stanford.edu/)

- Τεκμηρίωση χρήσης λογισμικού [Protégé](http://protegeproject.github.io/protege/getting-started/)

- [Ontology Development 101: A Guide to Creating Your First Ontology](https://protege.stanford.edu/publications/ontology_development/ontology101.pdf)

- [OWL 2 Web Ontology Language](https://www.w3.org/TR/owl2-overview/)

- [GeoSPARQL – A Geographic Query Language for RDF Data](https://www.ogc.org/standard/geosparql/)

- Well Known Text (WKT): [Wikipedia](https://en.wikipedia.org/wiki/Well-known_text_representation_of_geometry), [OGC - Simple Feature Access standard](https://www.ogc.org/standard/sfa/)

- [Linked Open Vocabularies (LOV)](https://lov.linkeddata.es)

- [SPARQLing Unicorn QGIS Plugin](https://plugins.qgis.org/plugins/sparqlunicorn/): A plugin that adds a GeoJSON layer from SPARQL enpoint queries

# Άδεια χρήσης

[![Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](images/by-nc.eu.png)](https://creativecommons.org/licenses/by-nc/4.0/)

# Σχόλια και παρατηρήσεις

Κάθε σχόλιο, παρατήρηση ή διόρθωση είναι όλα καλοδεχούμενα. Χρησιμοποιείστε την ενότητα ["Issues"](https://github.com/c-vradis/protege_tutorial/issues) για να υποβάλετε τις παρατηρήσεις σας. 

# Συντελεστές

Χριστόφορος Βραδής, υποψήφιος διδάκτορας Τμήματος Γεωγραφίας Χαροκοπείου Πανεπιστημίου.