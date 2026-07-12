public class UsersWrapper {

        public Integer id;
        public string name; 
        public string username;
        public string phone;
        public string email;
        public string website;
    
    
    	public static UsersWrapper parse(String json){
		return (UsersWrapper) System.JSON.deserialize(json, UsersWrapper.class);
	}

}