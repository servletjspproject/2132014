package tables;
// Generated Mar 15, 2014 10:42:57 PM by Hibernate Tools 3.2.1.GA



/**
 * UserInterest generated by hbm2java
 */
public class UserInterest  implements java.io.Serializable {


     private Integer iduserInterest;
     private Users users;
     private String interestName;

    public UserInterest() {
    }

    public UserInterest(Users users, String interestName) {
       this.users = users;
       this.interestName = interestName;
    }
   
    public Integer getIduserInterest() {
        return this.iduserInterest;
    }
    
    public void setIduserInterest(Integer iduserInterest) {
        this.iduserInterest = iduserInterest;
    }
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }
    public String getInterestName() {
        return this.interestName;
    }
    
    public void setInterestName(String interestName) {
        this.interestName = interestName;
    }




}


