/**
 * 公共方法
 */
package com.meng.nacos_consumer.utils;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.meng.nacos_consumer.entity.News;

public class Function {

	public static String CheckReplace(String s) {
		try {
			if ((s == null) || (s.equals("")))
				return "";

			StringBuffer stringbuffer = new StringBuffer();
			for (int i = 0; i < s.length(); i++) {
				char c = s.charAt(i);
				switch (c) {
				case '"':
					stringbuffer.append("&quot;");
					break;
				case '\'':
					stringbuffer.append("&#039;");
					break;
				case '|':
					stringbuffer.append("");
					break;
				case '&':
					stringbuffer.append("&amp;");
					break;
				case '<':
					stringbuffer.append("&lt;");
					break;
				case '>':
					stringbuffer.append("&gt;");
					break;
				default:
					stringbuffer.append(c);
				}
			}

			return stringbuffer.toString().trim();
		} catch (Exception e) {
		}
		return "";
	}

	public static int StrToInt(String s) {
		try {
			return Integer.parseInt(CheckReplace(s));
		} catch (Exception e) {
		}
		return 0;
	}
	public static String PageFront(String sPage, Page<News> page) {
		String s = null;
		int i = 0;
		if (page.getTotal() > page.getSize()) {
			s = "<table  width=\"90%\"  border=\"0\" align=\"left\" cellpadding=\"2\" cellspacing=\"0\"><tr>";
			s = s
					+ "<td style=\"text-align:left\" width=\"80%\" height=\"30\" class=\"chinese\"><span class=\"chinese\">";
			s = s + "当前第" + page.getCurrent() + "页/共" + page.getPages()
					+ "页,&nbsp;&nbsp;&nbsp;&nbsp;共" + page.getTotal()
					+ "条记录,&nbsp;&nbsp;&nbsp;&nbsp;" + page.getSize()
					+ "条/页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

			int page_show = (int)page.getPages();
			if (page_show > 10)
				page_show = 10;
			for (i = 1; i <= page_show; i++) {
				if (i == page.getCurrent())
					s = s + " " + i + " ";
				else {
					s = s + "&nbsp; <a style=\"color:#3F862E\" href=\""
							+ sPage + "intPage=" + i + "\">" + i + "</a> ";
				}
			}
			s = s + "</span></td>";

			return s + "</tr></table>";
		}
		return "";
	}
}