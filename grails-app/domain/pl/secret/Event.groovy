package pl.secret

class Event {

    static constraints = {
		name blank: false
		description maxSize: 50000
		details maxSize: 50000
		authorName blank: false
		performer nullable: true
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
	boolean state
	
	
	
	String toString(){
		return name
	}
}
