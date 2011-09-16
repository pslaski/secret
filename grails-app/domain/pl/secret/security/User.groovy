package pl.secret.security
import java.lang.reflect.Array;

class User {

	//transient springSecurityService
	def springSecurityService
	
	String username
	String password
	String name
	String surname
	boolean enabled = true
	boolean accountExpired = false
	boolean accountLocked = false
	boolean passwordExpired = false

	static constraints = {
		username blank: false, unique: true
		password blank: false
		name blank: false
		surname blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
	
	def isAdmin() {
		return getAuthorities().find {it.authority == "ROLE_ADMIN"} != null
	}
	
	def isAuthor() {
		if (getAuthorities().find {it.authority == "ROLE_ADMIN"} != null) {
			return false
		}
		return getAuthorities().find {it.authority == "ROLE_USER"} != null
	}
	
	String toString() {
		return username
	}
	
	boolean equals(Object that) {
		if (!(that instanceof User)) {
			return false
		}
		if (this.username == that.username) {
			return true
		}
		return false
	  }
	
	int hashCode() {
		int result = HashCodeUtil.SEED;
		result = HashCodeUtil.hash( result, username );
		 return result
	}
	
/*// jedno z tych gowien robilo ze nie mozna bylo sie zalogowac jako admin.
	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	} */
}

// ------------------------------------------------

final class HashCodeUtil {

  /**
  * An initial value for a <code>hashCode</code>, to which is added contributions
  * from fields. Using a non-zero value decreases collisons of <code>hashCode</code>
  * values.
  */
  public static final int SEED = 23;

  /**
  * booleans.
  */
  public static int hash( int aSeed, boolean aBoolean ) {
	return firstTerm( aSeed ) + ( aBoolean ? 1 : 0 );
  }

  /**
  * chars.
  */
  public static int hash( int aSeed, char aChar ) {
	return firstTerm( aSeed ) + (int)aChar;
  }

  /**
  * ints.
  */
  public static int hash( int aSeed , int aInt ) {
	/*
	* Implementation Note
	* Note that byte and short are handled by this method, through
	* implicit conversion.
	*/
	return firstTerm( aSeed ) + aInt;
  }

  /**
  * longs.
  */
  public static int hash( int aSeed , long aLong ) {
	return firstTerm(aSeed)  + (int)( aLong ^ (aLong >>> 32) );
  }

  /**
  * floats.
  */
  public static int hash( int aSeed , float aFloat ) {
	return hash( aSeed, Float.floatToIntBits(aFloat) );
  }

  /**
  * doubles.
  */
  public static int hash( int aSeed , double aDouble ) {
	return hash( aSeed, Double.doubleToLongBits(aDouble) );
  }

  /**
  * <code>aObject</code> is a possibly-null object field, and possibly an array.
  *
  * If <code>aObject</code> is an array, then each element may be a primitive
  * or a possibly-null object.
  */
  public static int hash( int aSeed , Object aObject ) {
	int result = aSeed;
	if ( aObject == null) {
	  result = hash(result, 0);
	}
	else if ( ! isArray(aObject) ) {
	  result = hash(result, aObject.hashCode());
	}
	else {
	  int length = Array.getLength(aObject);
	  for ( int idx = 0; idx < length; ++idx ) {
		Object item = Array.get(aObject, idx);
		//recursive call!
		result = hash(result, item);
	  }
	}
	return result;
  }


  /// PRIVATE ///
  private static final int fODD_PRIME_NUMBER = 37;

  private static int firstTerm( int aSeed ){
	return fODD_PRIME_NUMBER * aSeed;
  }

  private static boolean isArray(Object aObject){
	return aObject.getClass().isArray();
  }
}
