public class GzipUtil {
	/**
	 * @param str
	 * @return 压缩
	 */
	public static String compress(String str) {
		if (str == null || str.length() == 0) {
			return str;
		}
		ByteArrayOutputStream out = null;
		GZIPOutputStream gzip = null;
		String compress = "";
		try {
			out = new ByteArrayOutputStream();
			gzip = new GZIPOutputStream(out);
			gzip.write(str.getBytes());
			gzip.close();
			compress = out.toString("ISO-8859-1");
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return compress;
	}
 
	/**
	 * @param str
	 * @return 解压缩
	 */
	public static String uncompress(String str) {
		if (str == null || str.length() == 0) {
			return str;
		}
		ByteArrayOutputStream out = null;
		ByteArrayInputStream in = null;
		GZIPInputStream gzip = null;
		String uncompress = "";
		try {
			out = new ByteArrayOutputStream();
			in = new ByteArrayInputStream(str.getBytes("ISO-8859-1"));
			gzip = new GZIPInputStream(in);
			byte[] buffer = new byte[1024];
			int offset = -1;
			while ((offset = gzip.read(buffer)) != -1) {
				out.write(buffer, 0, offset);
			}
			uncompress = out.toString();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (null != gzip) {
				try {
					gzip.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != in) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return uncompress;
	}
 
	public static void main(String[] args) throws IOException {
		StringBuilder sb = new StringBuilder();
		sb.append("H4sIAAAAAAAEAOWWv24TQRDGX4XyLNnyzOz/8uLkEgcHicQmcTqKdFQgum2RgAKeAYkSCiSoeJ6QPAa7ju2bOSV7pqABXXE6/bR3mm+++eYml5ZsiAToQaON4BEiooI4f/n6KiqaRYjHqlLBwvj6zZfr959u334bE8DYwDhfk8FwoioKjnM0nJ/XFQYP45ufH3/9+LDi7fnlYLjs4XuJe+A8IMMnCVuBPcdHCRuBnWV44SrUKDA/XasKlcCWn55RhSQxOx2PTvfixXQZHw3nKokMsXn+4tVVHKmFQt0ne58s88Sd4AG6dQvsOT5Mdasg6ub4LNVNAlvTqRslhlLdq7ImK7ONThaETrfFoyNIT9psijep+MZVJujkqc/fb76+yx9QbfHNYJg9aYQn0QtPUkXKC06c7yeOkiPnTxMHycEwPsW75nDOz+/i6TxTrHmh4+lC8w7qYvMe16XuDGd1FQQ1nD6pKyeoLnTWbBx9eOaM502lZGZ0atvUJmKvo1eDTkIU6jjaCs287lRdGPRZ1swIUXxH8YJmFwmDE6Lxbz9Lkop3ay8l9UpQul9SiqqVdHKpA5KQ1ETMSbGWFHaQtCccF3Ux/bJmD8fbyoYgsMGOKIJq+5CT1NYoC28DjO5uPbU3dr2XthlBIiOmtN5LW872Us6QxI3kivOa1jPecvH+Pu37Erg8xLOyIQ+KQ5yk93KIeXqflkY8z5EVVJlS29ZuPd43aU+yjuWnlPN/5NZ/NgD8LgEwx5wA5La/CWlTkkgAnXYjhs4U6J5Nqf/yptQ9m5L+y02Zh2zXMSK/GaPfpIrdc5ALAAA=");
		
		String str = sb.toString();
		System.out.println("原长度：" + str.length());
 
		System.out.println("压缩后长度：" + GzipUtil.compress(str).length());
		String compress = GzipUtil.compress(str);
		System.out.println("压缩后内容：" + compress);
		System.out.println("解压后内容：" + GzipUtil.uncompress(compress));
	}
}