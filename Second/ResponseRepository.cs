using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Second
{
    public class ResponseRepository
    {
        public static ResponseRepository repository = new ResponseRepository();
        public List<GuestResponse> responses = new List<GuestResponse>();

        public static ResponseRepository GetRepository()
        {
            return repository;
        }

        public IEnumerable<GuestResponse> GetAllResponses()
        {
            return responses;
        }

        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}