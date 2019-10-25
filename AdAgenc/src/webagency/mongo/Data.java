package webagency.mongo;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.*;


import com.mongodb.client.*;
import com.mongodb.client.model.Filters;

import webagency.mongo.*;
import web.Agency.ConnectionManager;;

/**
 * Servlet implementation class Data
 */
@WebServlet("/data")
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MongoClient mc = ConnectionManager.getMongo();
	MongoDatabase db = ConnectionManager.getDb("Agency");
	MongoCollection <Document> Ads = db.getCollection("Ads");

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Data() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient mc = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("Agency");
		MongoCollection<Document> ads = db.getCollection("Ads");
		String srch = request.getParameter("srch");
		MongoCursor<Document> cursor;
		if (srch == null) {
			srch = "";
		}
		if ( srch.length() != 0) {
			cursor = ads.find(Filters.eq("title", srch)).limit(30).iterator();
		} else {

			cursor = ads.find().iterator();
		}
		List<Datac> dataList = new LinkedList<>();

		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Datac data = new Datac(d.getInteger("Book ID"), d.getString("title"), 
					srch, d.getInteger("price"), d.getString("descr"));
			dataList.add(data);
		}
		// ConnectionManager.close();

		request.setAttribute("list", dataList);
		request.getRequestDispatcher("view.jsp").forward(request, response);
	}

	/**
	 * @param Ads 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response, MongoCollection<Document> Ads)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int c = 0;
		int c1 = 0;
		int id, idi = 0;
		MongoCursor<Document> cursor = Ads.find().iterator();
		while (cursor.hasNext()) {
			Document doc = cursor.next();
			idi = doc.getInteger("Ad ID");
			c++;
		}
		if (c != 0) {
			id = idi;
		} else {
			id = 100;
		}
		String tit = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String desc = request.getParameter("desc");
		Document document = new Document("Book ID", id + 1).append("title", tit)
				.append("price", price).append("descr", desc);
		Ads.insertOne(document);
		c1++;
		request.setAttribute("counter", c1);
		request.getRequestDispatcher("add.jsp").forward(request, response);
		ConnectionManager.close();
	}

}