+ Para poder visualizar el tema y el tipo de slide de la presentación hace falta tener instalado lo siguiente:  
  + wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
  + tar -xzvf master.tar.gz
  + mv reveal.js-master reveal.js
> NOTA: está ya copiado el directorio reveal.js en el repositorio directamente para poder cogerlo y copiarlo en local y poner el archivo al mismo nivel que el directorio para poder visualizarlo.

+ Creada presentación.xml con `pandoc -t revealjs -s -o presentacion.html presentacion.md -V theme=sky -V transition=zoom`
