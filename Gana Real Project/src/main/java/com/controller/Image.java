package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Image {
	
	public String test2(String geturl) {
			Document doc;
			String url = geturl;
			Map<String, List<String>> result = new HashMap<String,List<String>>();
			String[] REQUIRED_META = new String[]{"og:title", "og:type", "og:image", "og:url", "og:description" };
			
			try {
				doc = Jsoup
						.connect(url)
						.userAgent("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36")  
				        .referrer("http://www.google.com")  
						.get();
				Elements ogElements = doc.select("meta[property^=og], meta[name^=og]");
				for (Element e : ogElements) {
					String target= e.hasAttr("property") ? "property" : "name";
					
					if(!result.containsKey(e.attr(target))){
						result.put(e.attr(target), new ArrayList<String>());
					}
					result.get(e.attr(target)).add(e.attr("content"));
				}
				
				for(String s : REQUIRED_META){
					if (!(result.containsKey(s) && result.get(s).size() > 0)){
						if(s.equals(REQUIRED_META[0])){
							result.put(REQUIRED_META[0]
									, Arrays.asList(new String[]{doc.select("title").eq(0).text()}));
						} else if (s.equals(REQUIRED_META[1])){
							result.put(REQUIRED_META[1]
									, Arrays.asList(new String[]{"website"}));
						} else if (s.equals(REQUIRED_META[2])){
							result.put(REQUIRED_META[2]
									, Arrays.asList(new String[]{doc.select("img").eq(0).attr("abs:src")}));
						} else if (s.equals(REQUIRED_META[3])){
							result.put(REQUIRED_META[3]
									, Arrays.asList(new String[]{doc.baseUri()}));
						}
						else if (s.equals(REQUIRED_META[4])){
							result.put(REQUIRED_META[4]
									, Arrays.asList(new String[]{doc.select("meta[property=description], meta[name=description]").eq(0).attr("content")}));
						}
					}
	
				}
				
		} catch (Exception e){
			e.printStackTrace();
		}
			return result.get("og:image").get(0);
		}
}