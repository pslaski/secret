package pl.secret

import pl.secret.security.User

class Author extends User{

	static hasMany = [mainEvents: MainEvent, events: Event, tasks: Task]
	
	String toString(){
		return username+": "+name+" "+surname
	}
}
