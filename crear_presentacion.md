## Presentación clásica
+ `pandoc -t slidy --self-contained presentacion.md -o presentacion.html`  

## Presentación moderna

+ Para poder visualizar el tema y el tipo de slide de la presentación hace falta tener instalado lo siguiente:  
  + wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
  + tar -xzvf master.tar.gz
  + mv reveal.js-master reveal.js
> NOTA: en el repo ya se tiene el fichero para poder extraerlo directamente y poder usarlo.  

+ Creada presentación.xml con `pandoc -t revealjs -s -o presentacion_moderna.html presentacion.md -V theme=sky -V transition=zoom`
