package pl.secret

class Event {

    static constraints = {
		name blank: false
		description maxSize: 50000, nullable: true
		details maxSize: 50000, nullable: true
		authorName blank: false
		performer nullable: true
		dateRejected nullable: true
		reasonRejected nullable: true, maxSize: 10000
    }
	static hasMany = [tasks: Task]
	
	static belongsTo = MainEvent
	static mapping = {
	}
	
	String name
	String description
	String details
	String authorName
	Author performer
	Date dateCreated
	Date dateEventStart
	Date dateEventEnd
	Date dateRejected
	String reasonRejected
	StateType state
	
	String toString(){
		return name
	}
}
