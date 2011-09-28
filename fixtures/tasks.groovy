import pl.secret.StateType;
import pl.secret.TaskType;
import pl.secret.Task

fixture{
	
	task(Task,
		name: 'Wywiad z Tomkiem Adamkiem',
		description: 'spotkanie w szeratą',
		details: '20 pytan',
		authorName: 'admin',
		dateCreated: new Date(),
		deadline: new Date()+7,
		dateDone: new Date()+3,
		type: TaskType.INTERVIEW,
		state: StateType.DONE)
	
	task2(Task,
		name: 'Relacja z fijala i prudla',
		description: 'bardzo wazny polski mecz',
		details: '4 konary',
		authorName: 'secretny',
		dateCreated: new Date(),
		deadline: new Date()+3,
		type: TaskType.REPORT,
		state: StateType.UNDONE)
	
	task3(Task,
		name: 'Video z meczu fijala i prudla',
		description: 'video',
		details: '10 min',
		authorName: 'admin',
		dateCreated: new Date(),
		deadline: new Date()+4,
		type: TaskType.VIDEO,
		state: StateType.INPROGRESS)
	
	task4(Task,
		name: 'Podsumowanie sezonu 2011',
		description: 'wszystko co ciekawe w sezonie 2011 na plazy',
		details: 'napisac od groma',
		authorName: 'secretny',
		dateCreated: new Date(),
		deadline: new Date()+14,
		type: TaskType.SUMMARY,
		state: StateType.INPROGRESS)
	
	task5(Task,
		name: 'Jakies cuda niewidy',
		description: 'jw',
		details: 'jw',
		authorName: 'admin',
		dateCreated: new Date(),
		dateRejected: new Date()+1,
		deadline: new Date()+1,
		type: TaskType.ARTICLE,
		state: StateType.REJECTED)
	
	task6(Task,
		name: 'Zapowiedz Stare jablonki',
		description: 'zapowiedz turnieju w st jablonkach',
		details: '8 konarow',
		authorName: 'admin',
		dateCreated: new Date(),
		deadline: new Date()+1,
		dateDone: new Date()+1,
		type: TaskType.FORERUNNER,
		state: StateType.DONE)
}