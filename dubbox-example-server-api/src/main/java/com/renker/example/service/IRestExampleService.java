package com.renker.example.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;


@Path("example/rest")
public interface IRestExampleService {
	/*@GET
	@Path("hellow/{something}")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({"application/json; charset=UTF-8"})
	public String hellow(@PathParam("something")String something);*/
	
	
	@GET
	@Path("hellow")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({"application/json; charset=UTF-8"})
	public String hellow(@QueryParam("something")String something);
}
