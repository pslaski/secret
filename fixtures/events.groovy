import pl.secret.Event
import pl.secret.StateType;


fixture{
	event(Event,
		name: 'Mecz Fijałka i Prudla z Ricardo/Marcio',
		description: 'bedize git mecz, nasi wygraja',
		details: 'blA BLA',
		authorName: 'admin',
		dateCreated: new Date(),
		dateEventStart: new Date()+3,
		dateEventEnd: new Date()+3,
		state: StateType.INPROGRESS)
	
	event2(Event,
		name: 'Jakis cud niewid',
		description: 'jw',
		details: 'jw',
		authorName: 'secretny',
		dateCreated: new Date(),
		dateEventStart: new Date()+1,
		dateEventEnd: new Date()+8,
		state: StateType.UNDONE)
	
	event3(Event,
		name: 'Spotkanie przyjaciol dzieci',
		description: 'beda chlac',
		details: 'chlanie',
		authorName: 'admin',
		dateCreated: new Date(),
		dateEventStart: new Date()+3,
		dateEventEnd: new Date()+6,
		state: StateType.INPROGRESS)
	
	
	
}