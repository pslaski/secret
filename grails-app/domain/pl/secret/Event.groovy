package pl.secret

class Event {

    static constraints = {
		name blank: false
		description maxSize: 50000
		details maxSize: 50000
		authorName blank: false
    }
	static hasMany = [owner: Author, events: Event]
	
	static belongsTo = [Author]
	static mapping = {
	}
	
	String name
	String description
	String details
	String authorName
	Date dateCreated
	Date dateEventStart
	Date dateEventEnd
	
	
	
	
	String toString(){
		return name
	}
}
