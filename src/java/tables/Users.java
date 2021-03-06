package tables;
// Generated Mar 21, 2014 8:43:22 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer idusers;
     private String fname;
     private String lname;
     private String password;
     private String email;
     private String gender;
     private String userType;
     private String isActive;
     private String birthday;
     private String job;
     private String address;
     private String userscol;
     private int credit;
     private String mobile;
     private String image;
     private Set userInterests = new HashSet(0);

    public Users() {
    }

	
    public Users(String fname, String lname, String password, String email, String userType, String isActive, String address, int credit, String mobile) {
        this.fname = fname;
        this.lname = lname;
        this.password = password;
        this.email = email;
        this.userType = userType;
        this.isActive = isActive;
        this.address = address;
        this.credit = credit;
        this.mobile = mobile;
    }
    public Users(String fname, String lname, String password, String email, String gender, String userType, String isActive, String birthday, String job, String address, String userscol, int credit, String mobile, String image, Set userInterests) {
       this.fname = fname;
       this.lname = lname;
       this.password = password;
       this.email = email;
       this.gender = gender;
       this.userType = userType;
       this.isActive = isActive;
       this.birthday = birthday;
       this.job = job;
       this.address = address;
       this.userscol = userscol;
       this.credit = credit;
       this.mobile = mobile;
       this.image = image;
       this.userInterests = userInterests;
    }
   
    public Integer getIdusers() {
        return this.idusers;
    }
    
    public void setIdusers(Integer idusers) {
        this.idusers = idusers;
    }
    public String getFname() {
        return this.fname;
    }
    
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getLname() {
        return this.lname;
    }
    
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getUserType() {
        return this.userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    public String getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }
    public String getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    public String getJob() {
        return this.job;
    }
    
    public void setJob(String job) {
        this.job = job;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getUserscol() {
        return this.userscol;
    }
    
    public void setUserscol(String userscol) {
        this.userscol = userscol;
    }
    public int getCredit() {
        return this.credit;
    }
    
    public void setCredit(int credit) {
        this.credit = credit;
    }
    public String getMobile() {
        return this.mobile;
    }
    
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    public Set getUserInterests() {
        return this.userInterests;
    }
    
    public void setUserInterests(Set userInterests) {
        this.userInterests = userInterests;
    }




}


