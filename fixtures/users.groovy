import pl.secret.Admin
import pl.secret.Author
import pl.secret.security.UserRole
import pl.secret.security.Role
import grails.plugins.springsecurity.SpringSecurityService

include 'mainEvents'
include 'events'
include 'tasks'

fixture {
	
	admin(Admin,
		username: 'admin',
		password: springSecurityService.encodePassword('admin'),
		name: 'Andrzej',
		surname: 'Korwin',
		enabled: true)
	
	roleAdmin(UserRole,
		user: admin,
		role: Role.findByAuthority('ROLE_ADMIN'))
	
	author(Author,
		username: 'revan',
		password: springSecurityService.encodePassword('arkag'),
		name: 'Dorian',
		surname: 'Sawa',
		enabled: true)
	
	roleAuthor(UserRole,
		user: author,
		role: Role.findByAuthority('ROLE_USER'))
	
	author2(Author,
		username: 'zubr',
		password: springSecurityService.encodePassword('manutd'),
		name: 'Paweł',
		surname: 'Śląski',
		enabled: true)
	
	roleAuthor2(UserRole,
		user: author2,
		role: Role.findByAuthority('ROLE_USER'))
	
	author3(Author,
		username: 'cizem',
		password: springSecurityService.encodePassword('barca'),
		name: 'Maciej',
		surname: 'Nowocień',
		enabled: true)
	
	roleAuthor3(UserRole,
		user: author3,
		role: Role.findByAuthority('ROLE_USER'))
}

post {
	author.mainEvents = [mainEvent2]
	author.events = [event3]
	author.tasks = [task3, task6]
	
	author2.mainEvents = [mainEvent]
	author2.tasks = [task4]
	
	author3.mainEvents = [mainEvent3]
	author3.events = [event]
	author3.tasks = [task, task4, task5]
	
	mainEvent.events = [event]
	mainEvent.tasks = [task6]
	mainEvent.performer = author2
	
	mainEvent2.tasks = [task]
	mainEvent2.performer = author
	
	mainEvent3.events = [event3]
	mainEvent3.performer = author3
	
	event.tasks = [task2, task3]
	event.performer = author3
	event2.tasks = [task5]
	event3.performer = author
	
	task.performers = [author3]
	task3.performers = [author]
	task4.performers = [author2, author3]
	task5.performers = [author3]
	task6.performers = [author]
	
	
}