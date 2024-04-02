// Agent luz in project room.mas2j


acesa(luz).

+acesa(luz) : true <-
	.print("Luz acesa!");
	-acesa(luz);
	+~acesa(luz);
	.print("Luz apagada!").
