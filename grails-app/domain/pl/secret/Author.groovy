package pl.secret

import pl.secret.security.User

class Author extends User{

	
	static hasMany = [mainEvents: MainEvent, events: Event, tasks: Task]
    static constraints = {
		name blank:false
		surname blank: false
    }
	
	String toString(){
		return username+": "+name+" "+surname
	}
}
