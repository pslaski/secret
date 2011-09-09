package pl.secret

import pl.secret.security.User

class Author extends User{

	static hasMany = [createdEvents: Event, doingEvents: Event]
    static constraints = {
		name blank:false
		surname blank: false
    }
	
	String name
	String surname
	
	String toString(){
		return name+" "+surname
	}
}
