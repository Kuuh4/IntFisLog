>>>Comentários Internos

**Anotações [para fazer??]**

- [ ] Integrar arduino com firmata.
  - [ ] Botão para `void random()` 
  - [ ] Sensores (2x potenciômetros, etc) para `void bolas_seguirem()` 
  - [ ] botão p/toggle qual modo está ativo
    - [ ] leds que acendem perto do botão ou dos sensores

<br>

- [ ] Uma opção de efeito seria cada bola ter como target a bola anterior/seguinte. Escrever como um `void bolas_seguirem_self()` alternativo

<br>
<br>
<br>

---
<br>
<br>


## Changelog ~~[feito posteriormente ao fim da V4, tá defasado]~~

<br>


>**Versão 1**
* Feita a base, com uma bola seguindo mouse com arrancada variável

>**Versão 2**
* Tentativa de estruturação da bola enquanto objeto [class Bola]

>**Versão 3**
* Bolas são objetos com respectivas funções [depois de estudar sobre POO(programação orientada ao objeto)]

>**Versão 4**
* Array replica as bolas com gradação nos níveis de aceleração
  * Ordem de desenho das bolas foi invertida com sucesso, para as mais próximas do mouse serem desenhadas por cima (último)
* Renomeados arquivos para melhor compreensão, e comentadas as funções.

<br>
<br>

---

<br>

## Terminologia Matemática
<br>

### $Arrancada = A(t) = {{\Delta a}\over{\Delta t}} = {({\Delta v})^2\over({\Delta t})^2} = {({\Delta x})^3\over({\Delta t})^3}$

<br>

Termo|Símbolo|Formula|Conteúdo
:---:|:---:|:---:|:---:
**Tempo**|$t$ ou $\Delta t$|$t_{final}-t_{inicial}$|$tempo_{final}-tempo_{inicial}$
**Deslocamento**|$\vec x$|$x_{final}-x_{inicial}$|$pos._{inicial}-pos._{final}$
**Velocidade**|$v$|${\vec x}\over{\Delta t}$|$Deslocamento \over Tempo$
**Aceleração**|$\overline{a}$|$\vec v \over t$ ou $v-v_0\over t$|$velocidade_{final}-velocidade_{inicial} \over \Delta tempo$
**Arrancada**|$A$|${{\Delta a}\over{\Delta t}}$|${{accel_{final}-accel_{inicial}}\over{\Delta tempo}}$

<br/>
<br/>
<br/>

