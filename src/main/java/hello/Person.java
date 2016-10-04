package hello;

import javax.persistence.*;

@Entity
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String firstName;
	private String lastName;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id_profile", referencedColumnName="id")
	private Profile profile;

	public Profile getProfile(){
		return this.profile;
	} 

	public void setProfile(Profile profile){
		this.profile = profile;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}