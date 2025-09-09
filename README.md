Iosif Constantin-Andrei 312CC

Task 1 - Numerical music

Analiza spectograme:

Plain loop: 
    Un semnal natural cu zgomot de fundal. Are un spectru larg, este un semnal 
    complex.
    ![Plain loop](images/Plain_loop.png)
Plain sound (generat de oscillator): 
    Un semnal ideal, construit cu sinusoide. Se observa concentrarea in jurul
    frecventei fundamnetale (aproximativ 2000 Hz) si intervalele de timp 
    folosite separate de benzile cu albastru inchis.
    ![Plain Sound](images/Plain_sound.png)
High pass sound (prelucrat cu high_pass):
    Observam ca sub frecventa de taiere (aproximativ 1000 Hz) se elimina sunetul,
    ramanand doar frecventele inalte.
    ![High pass sound](images/High_pass_sound.png)
Reverb sound (prelucrat cu apply_reverb):
    Se observa un semnal ecou care umple spatiul. Dupa fiecare spike, apare o 
    umbra care decade treptat in timp, frecventele joase persistand mai mult.
    Intervalele de timp goale din Plain sound acum sunt umplute cu un fundal
    difuz, reprezentand reflexiile reverb-ului.
    ![Reverb sound](images/Reverb_sound.png)

Rezultate similare observam si pentru tech.wav in urma prelucrarilor cu ajutorul
functiilor high_pass si apply_reverb:
    ![Tech](images/Tech.png)
    ![High pass tech](images/High_pass_tech.png)
    ![Reverb tech](images/Reverb_tech.png)
    ![High pass + reverb tech](images/High_pass_reverb_tech1.png)
    ![Reverb + high pass tech](images/Reverb_high_pass_tech2.png)

Observatie: High pass + reverb 
    Combina eliminarea basului cu efectul de ecou: frecventele joase dispar,
    iar reverberatia umple banda inalta cu decay gradual

Comparatii:
    Sunet natural vs oscilator (Plain Loop vs Plain Sound):
    Semnalul natural are un spectru larg, dens si zgomot de fundal, iar semnalul
    generat de oscillator este pur, cu energie concentrata doar in jurul
    frecventei fundamentale (~2000 Hz).
    
    Sunet original + prelucrat cu high pass: 
    Cel original contine atat frecvente joase cat si inalte, iar dupa aplicarea 
    filtrului high-pass componentele sub pragul de taiere (~1000 Hz) dispar,
    ramanand doar frecventele inalte.

    Sunet original + prelucrat cu reverb:
    Cel original prezinta spike-uri discrete fara coada sonora, in timp ce
    Reverb Sound adauga dupa fiecare spike o umbra care scade gradual si umple
    golurile cu un fundal sonor persistent, mai pronuntat in frecventele joase.
