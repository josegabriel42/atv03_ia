familia(felidae).
familia(canidae).
familia(elephantidae).
familia(giraffidae).
familia(equidae).
familia(rhinocerotidae).
familia(delphinidae).
familia(baleaenopteriade).
familia(spheniscidae).
familia(crocodylia).
familia(serpentes).
familia(pomacentridae).
familia(lepidoptera).
familia(spongidae).
familia(felidae, gato).
familia(felidae, leao).
familia(felidae, tigre).
familia(canidae, cao).
familia(elephantidae, elefante).
familia(giraffidae, girafa).
familia(equidae, cavalo).
familia(rhinocerotidae, rinoceronte).
familia(delphinidae, golfinho).
familia(balaenopteriade, baleia).
familia(spheniscidae, pinguim).
familia(crocodylia, crocodilo).
familia(crocodylia, jacare).
familia(serpentes, cobra).
familia(pomacentridae, peixe_palhaco).
familia(lepidoptera, borboletas).
familia(spongidae, esponjas).


ordem(carnivora).
ordem(artiodactyla).
ordem(perissodactyla).
ordem(cetacea).
ordem(sphenisciformes).
ordem(crocodylia).
ordem(squamata).
ordem(perciformes).
ordem(lepidoptera).
ordem(carnivora, felidae).
ordem(carnivora, canidae).
ordem(artiodactyla, elephantidae).
ordem(artiodactyla, giraffidae).
ordem(artiodactyla, equidae).
ordem(perissodactyla, rhinocerotidae).
ordem(cetacea, delphinidae).
ordem(cetacea, balaenopteriade).
ordem(sphenisciformes, spheniscidae).
ordem(crocodylia, crocodylidae).
ordem(squamata, serpentes).
ordem(perciformes, pomacentridae).
ordem(lepidoptera, lepidoptera).
ordem(carnivora, X) :- familia(felidae, X).
ordem(carnivora, X) :- familia(canidae, X).
ordem(artiodactyla, X) :- familia(elephantidae, X).
ordem(artiodactyla, X) :- familia(giraffidae, X).
ordem(artiodactyla, X) :- familia(equidae, X).
ordem(perissodactyla, X) :- familia(rhinocerotidae, X).
ordem(cetacea, X) :- familia(delphinidae, X).
ordem(cetacea, X) :- familia(balaenopteriade, X).
ordem(sphenisciformes, X) :- familia(spheniscidae, X).
ordem(crocodylia, X) :- familia(crocodylidae, X).
ordem(squamata, X) :- familia(serpentes, X).
ordem(perciformes, X) :- familia(pomacentridae, X).
ordem(lepidoptera, X) :- familia(lepidoptera, X).

classe(mammalia).
classe(aves).
classe(reptilia).
classe(actinopterygii).
classe(insecta).
classe(demospongiae).
classe(mammalia, carnivora).
classe(mammalia, artiodactyla).
classe(mammalia, perissodactyla).
classe(mammalia, cetacea).
classe(aves, sphenisciformes).
classe(reptilia, crocodylia).
classe(actinopterygii, perciformes).
classe(insecta, lepidoptera).
classe(mammalia, X) :- ordem(carnivora, X).
classe(mammalia, X) :- ordem(artiodactyla, X).
classe(mammalia, X) :- ordem(perissodactyla, X).
classe(mammalia, X) :- ordem(cetacea, X).
classe(aves, X) :- ordem(spheniscidae, X).
classe(reptilia, X) :- ordem(crocodylia, X).
classe(actinopterygii, X) :- ordem(perciformes, X).
classe(insecta, X) :- ordem(lepidoptera, X).
classe(demospongiae, X) :- familia(spongidae, X).

filo(chordata).
filo(arthropoda).
filo(porifera).
filo(chordata, mammalia).
filo(chordata, aves).
filo(chordata, reptilia).
filo(chordata, actinopterygii).
filo(arthropoda, insecta).
filo(porifera, demospongiae).
filo(chordata, X) :- classe(mammalia, X).
filo(chordata, X) :- classe(aves, X).
filo(chordata, X) :- classe(reptilia, X).
filo(chordata, X) :- classe(actinopterygii, X).
filo(arthropoda, X) :- classe(insecta, X).
filo(porifera, X) :- classe(demospongiae, X).

reino(animalia).
reino(animalia, chordata).
reino(animalia, arthropoda).
reino(animalia, porifera).
reino(animalia, X) :- filo(chordata, X).
reino(animalia, X) :- filo(arthropoda, X).
reino(animalia, X) :- filo(porifera, X).

mesma_ordem(X, Y) :- ordem(Z, X), ordem(Z, Y).
mesma_familia(X, Y) :- familia(Z, X), familia(Z, Y).
mesma_classe(X, Y) :- classe(Z, X), classe(Z, Y).
mesmo_filo(X, Y) :- filo(Z, X), filo(Z, Y).
mesmo_reino(X, Y) :- reino(Z, X), reino(Z, Y).
















