package pl.secret

import java.util.Date;

class MainEvent {

	static hasMany = [events: Event, tasks: Task]
    static constraints = {
		name blank:false
		authorName blank:false
		performer nullable: true
		description maxSize: 50000, nullable: true
		details maxSize: 50000, nullable: true
		dateRejected nullable: true
		reasonRejected nullable: true, maxSize: 10000
    }
	
	String name
	String authorName
	String description
	String details
	Author performer
	Date dateCreated
	Date dateMainEventStart
	Date dateMainEventEnd
	Date dateRejected
	String reasonRejected
	StateType state
	
	String toString(){
		return name
	}
}
