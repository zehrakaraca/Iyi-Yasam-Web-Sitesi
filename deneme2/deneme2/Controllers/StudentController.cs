using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using deneme2.Models;

namespace deneme2.Controllers
{
    public class StudentController : ApiController
    {
        IList<Students> Students = new List<Students>()
        {
            new Students()
                {
                     UserName = "Admin", UserPassword = "1234",
                },
                new Students()
                {
                     UserName = "user", UserPassword = "1234", 
                },
                new Students()
                {
                     UserName = "Deneme", UserPassword = "1234",
                },
        };
        public IList<Students> GetAllStudents()
        {
            //Return list of all employees    
            return Students;
        }
        //public Students GetStudentDetails(int id)
        //{
        //    //Return a single employee detail 
        //    var Student = Students.FirstOrDefault(e => e.StudentId == id);
        //    if (Student == null)
        //    {
        //        throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
        //    }
        //    return Student;
        //}
    }
}