package controller;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.json.JSONArray;
import org.json.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class GetCurrency extends HttpServlet {
	private final OkHttpClient httpClient = new OkHttpClient.Builder().connectTimeout(10, TimeUnit.SECONDS)
			.writeTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    String currency = request.getParameter("currency");
	    String amount = request.getParameter("amount");
	    String gamePrice = getGamePrice(currency, amount);

	    // Set content type and write the response directly
	    response.setContentType("text/plain");
	    response.getWriter().write(gamePrice);
	}

	public String getGamePrice(String currrency, String amount) throws IOException {
		Request.Builder builder = new Request.Builder();
		String username = "paysecuretechnolgoiesltd60274863";
		String password = "olipalff9urhhr4nadritf259d";
		builder.url(
				"https://xecdapi.xe.com/v1/convert_from.json/?to=" + currrency + "&from=" + "USD" + "&amount=" + amount)
				.addHeader("Authorization",
						"Basic cGF5c2VjdXJldGVjaG5vbGdvaWVzbHRkNjAyNzQ4NjM6b2xpcGFsZmY5dXJoaHI0bmFkcml0ZjI1OWQ=")
				.addHeader("Accept", "application/json")
				// .addHeader("User-Agent", "PaySecure")
				.addHeader("Cache-Control", "no-cache");

		Request request = builder.build();
		Response response = httpClient.newCall(request).execute();
		String responseBody = response.body().string();

		JSONObject jsonObject = new JSONObject(responseBody);
		JSONArray toArray = jsonObject.getJSONArray("to");
		JSONObject toObject = toArray.getJSONObject(0);
		double midValue = toObject.getDouble("mid");
		String midAsString = Double.toString(midValue);
		return midAsString;
	}

}
