CREATE DATABASE zodiaco;

USE zodiaco;

CREATE TABLE horoscopos(
    id_horoscopo int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(15) NOT NULL,
    mensaje text NOT NULL,
    frase text NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

 
INSERT INTO horoscopos (nombre, mensaje, frase) VALUES
('aries',
'Esta semana para Aries se torna bastante complicada, hay un problema que debe ser resuelto cuanto antes, sino la profe de matemáticas lo aplazará. Modifique su conducta agresiva hacia los demás, si no la puede modificardel todo alterne esa agresividad con amor, o sea, si alguien le cruza el auto, insúltelo, pínchele la rueda si quiere o rómpale el parabrisas con el matafuego, pero luego, pídale disculpas, déle un beso en la mejilla y dígale: “ ta` todo bien hermano”, si este responde con hostilidad, no diga nada, dese vuelta tranquilamente y en el momento que crea  oportuno desármele el matafuego en la cabeza, para que aprenda a perdonar. ',
'Frase de la semana: Arreglar los problemas económicos es fácil, lo único que se necesita es dinero.'),

('tauro',
'A comienzos de semana, su relación amorosa se torna un tanto intensa, ¿Por qué? Por la posición que ocupa la luna; esta semana va a estar muy cerca de Tauro y esto hace que la sangre entre en ebullición, yo le recomiendo que no se haga análisis porque puede llegar a quemar al bioquímico. Los días jueves y viernes sentirá como si un loro le hablara al oído, no se confunda, ese loro es, nada más y nada menos que su linda y tan venerada suegra, vendrá de visita y se quedará con usted un par de días, en lo posible, trate de no matarla. ',
'Frase de la semana: Morir es como dormir, pero sin levantarse a hacer pis. '),


('geminis',
'De lunes a miércoles, su cabeza se llenará de nueva información, pero el jueves no se acordará de nada, entonces, se dará cuenta de que esta perdiendo la memoria, pero para el viernes ya no se hará problema porque olvidará que estaba perdiendo la memoria ¿se entendió? Yo les aconsejo a los geminianos que no presten dinero, porque no se acordarán ni cuanto ni a quien le prestaron. Otra cosa, si esta semana quiere aprovechar para estar con varias mujeres, le va a ir muy bien, porque se encuentra de ligue, únicamente tenga cuidado si está en pareja porque la va a ligar. ',
'Frase de la semana: asi es esto de las echiladas, aveces puro pollo aveces puro chile.'),

('cancer',
'Es posible que el cielo esté despejado y soleado, pero en su interior reinan las nubes y la confusión. Es hora de terminar con está oscuridad, cómase una linterna prendida y todo su interior quedará iluminado. El sábado será un día especial para salir a caminar un ratico, pasee por el río, juegue con una piedrita, haga castillitos de arena, por un momento saqué ese niño que hay en su interior, sobre todo si está embarazada. Además, esta semana es ideal para comenzar con los ejercicios físicos, baje esos kilitos demás, esos 57 kilitos que tiene demás, que el verano no lo sorprenda. ',
'Frase de la semana: Lo importante no es ganar. Lo que importa es competir, sin perder ni empatar '),

('leo',
'En estos días observe su conducta hacía aquellas personas que quiere y verá que no las trata como debería, sino para el carajo. Su mal carácter le impide mostrarse tal cual es, lo confunden con un león hambriento cuando en realidad usted es un gatito mimoso. Esta semana es propicia para realizar esas tareas del hogar que tendría que haber hecho hace tiempo, póngale de una vez por todas el techo a su habitación, su mujer ya esta cansada de contar las estrellas para poder dormirse. Aparte, que sabe si alguien no espía su intimidad, hay muchos radares dando vueltas, no se sorprenda si fotos suyas con su mujer aparecen en Internet. ',
'Frase para la semana: El que nace pobre y feo, tiene grandes posibilidades de que al crecer se le desarrollen ambas condiciones. '),


('virgo',
'Durante los primeros días de la semana demuéstrele a esa persona especial cuánto la aprecia, después humíllela como siempre. Puede ser que las exigencias laborales afecten su estado de ánimo y entre en un pico de estrés, no se altere, recuerde que estrés por dos, seis. El día jueves entrará en estado de pánico al ser víctima de un robo a mano armada, tiene tres opciones: la primera: reducir al delincuente, quitarle el arma y entregarlo a la policía, la segunda: quedarse inmóvil con cara de nada y dejar que el ladrón actúe, y la tercer opción: gritar socorro mientras corre despavorido por el medio de la calle. Me parece que esta última es la que va elegir. ',
'Frase de la semana: ¡ya nos exhibiste!'),



('libra',
'Su esposa traerá a la casa el dinero que hacia falta para pagar la hipoteca, no le pregunte de donde lo saco, la respuesta puede llegar a no gustarle, ojos que no ven corazón que no siente. Su hijo descubre que tiene talento con la música, específicamente con la percusión, aliente este talento, cómprele una batería y hágalo feliz, aunque vaya en contra de la felicidad de los vecinos, su desarrollo musical es más importante que la queja de tres viejas locas. Viernes o Sábado caerá la policía a su casa preguntado si sabe algo de unos ruidos molestos, hágase el sota, si no tienen orden de allanamiento no pueden entrar a revisar si hay o no batería. ',
'Frase para la semana: Felices los que nada esperan porque nunca serán defraudados. '),



('escorpion',
'Esta semana algunos días estará bien y otros no tanto, aproveche los días que este bien para salir y divertirse, y los días que este mal no se deprima, salga y diviértase, o sea que si usted quiere puede estar de fiesta toda la semana. Tómese unas mini vacaciones, vaya a un mini golf y póngase una minifalda. El jueves comienza a sentir que necesita una señal para saber si está con la persona correcta, y entonces ve un cartel en la ruta que dice: “Si, estás con la persona correcta” y se queda tranquilo. Pero luego piensa: “esto es cosa e` mandinga”. Y si, puede ser, quien sabe. ',
'Frase para la semana: Si quieres una mano que te ayude, la encontraras al final de tu brazo. '),


('sagitario',
'Su imaginación lo entretiene, más de lo que lo hace el mundo real, duendes y hadas rodean su vida y lo acompañan todo el día, hasta un hipopótamo volador se sienta a conversar con usted entre mate y mate, hágase tratar, está más loco que una cabra. Esta semana sentirá repulsión por cualquier tipo de carne, de esta manera, despertará al mundo vegetariano, a una nueva forma de vivir, el brócoli y los rabanitos serán parte de está nueva conciencia, hasta que su primo Jorge cae con media res y el mundo vegetariano desaparece de su vida, se comen terrible asadazo. ',
'Frase para la semana: Toda partícula que vuela, siempre encuentra un ojo abierto. '),

('capricornio',
'Si necesita consejo en el terreno romántico, pídaselo a un amigo que sea exitoso en el reino de lo amoroso. Por lo general, las personas más dispuestas a dar consejos sobre el amor son las menos exitosas, te aconsejan como formar un buen matrimonio cuando ellos ya se divorciaron cinco veces y fueron veinte veces denunciados por su pareja, en todo caso, haga todo lo contrario de lo que le digan. Si usted es mujer y esta buscando tener un niño, alégrese, esta semana tiene muchas posibilidades de quedar embarazada, sobre todo si tiene relaciones. Desista de la idea de concebir un hijo por la gracia del espíritu santo, usted no es María y no hay José que se lo crea. ',
'Frase para la semana: Lo importante no es saber, sino tener el teléfono del que sabe. '),


('acuario',
'Escucha con más atención el cantar de los pajaritos, su oído se agudiza y siente que quieren decirle algo, tenga cuidado que son chismosos, la otra vez mi esposa descubrió mi debilidad por los caramelos gomita, cuando le pregunte quien se lo contó, me dijo: “Me lo contó un pajarito”, vio, son chismosos, desconfíe de ellos. Una situación engorrosa es la que tendrá que pasar el día sábado en el restaurante cuando se de cuenta de que el dinero que lleva encima no le alcanza para pagar, yo le sugiero que haga como que va al baño y se escape por la puerta trasera, luego hágale señas de luces a su mujer para que salte por la ventana y suba al auto en marcha presto a huir a máxima velocidad. Y trate que toda esta acción pase desapercibida.',
'Frase para la semana: Estudiar es desconfiar de la inteligencia del compañero de al lado.'),


('picis',
'Las cosas son un tanto confusas entre el lunes y el miércoles. Sería aconsejable que evite chocar con sujetos extraños, mejor, choque con parientes así queda todo en familia. Una grata noticia recibirá esta semana, uno de sus hijos será abanderado en la escuela, trate por esto no hacer diferencias con su otro hijo, el ignorante burro bueno para nada. El viernes puede ser que discuta con su pareja, aunque después de 10 minutos ya no se acordarán porque discutían pero seguirán haciéndolo por gusto, recuerde que una buena discusión se termina a las piñas.',
'Frase de la semana: camaron que se duerme jamas su rama endereza.');





SELECT * FROM horoscopos;


CREATE USER 'botpro'@'localhost' IDENTIFIED BY 'botpro.2019';
GRANT ALL PRIVILEGES ON demo_bot.* TO 'lenguajes_bot'@'localhost';
FLUSH PRIVILEGES;
