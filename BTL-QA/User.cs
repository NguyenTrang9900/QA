using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_QA
{
    public class User
    {
        public string name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string repassword { get; set; }
        public string cmnd { get; set; }


        public User() { }

        public User(string name, string email,string cmnd, string password, string repassword)
        {
            this.name = name;
            this.email = email;
            this.cmnd = cmnd;
            this.password = password;
            this.repassword = repassword;
            
        }
    }
}