package in.co.sunrays.resources;

import java.util.ResourceBundle;

/**
 * Reads configuration information from .properties file
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */

public class MessageHandler {
	private static ResourceBundle rb = ResourceBundle
			.getBundle("in.co.sunrays.resources.system");

	public static String getValue(String key) {
		return rb.getString(key);
	}

	public static void main(String[] args) {

		System.out.println("Database Info");
		System.out.println("URL : " + getValue("database.url"));
		System.out.println("Driver : " + getValue("database.driver"));
		System.out.println("User ID  : " + getValue("database.user"));
		System.out.println("Password  : " + getValue("database.password"));

	}

}
