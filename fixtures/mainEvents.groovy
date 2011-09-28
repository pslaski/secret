import pl.secret.MainEvent
import pl.secret.StateType

fixture{
	
	
	mainEvent(MainEvent,
		name: 'SWATCH FIVB WORLD TOUR Stare Jabłonki 2011',
		description: 'najlepsiejszy turniej',
		details: 'blA BLA',
		authorName: 'admin',
		dateCreated: new Date(),
		dateMainEventStart: new Date(),
		dateMainEventEnd: new Date()+7,
		state: StateType.INPROGRESS)
	
	mainEvent2(MainEvent,
		name: 'Adamek vs. Kliczko',
		description: 'bedzie walka',
		details: 'blA BLA',
		authorName: 'admin',
		dateCreated: new Date(),
		dateMainEventStart: new Date()+7,
		dateMainEventEnd: new Date()+7,
		state: StateType.DONE)
	
	mainEvent3(MainEvent,
		name: 'Festiwal przyjaciol dzieci',
		description: 'najlepsiejszy festiwal bedzie sie lala krew',
		details: 'blA BLA',
		authorName: 'admin',
		dateCreated: new Date(),
		dateMainEventStart: new Date(),
		dateMainEventEnd: new Date()+7,
		state: StateType.INPROGRESS)
}
