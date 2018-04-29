package cn.hzd.util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringWriter;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StringUtil {
	public static String getMaxValue(List<String> list) {
		String maxValue = "";

		if (list != null && list.size() > 0) {
			maxValue = list.get(0);

			for (int index = 1; index < list.size(); index++) {
				if (maxValue.compareTo(list.get(index)) < 0) {
					maxValue = list.get(index);
				}
			}
		}

		return maxValue;
	}

	public static String getMinValue(List<String> list) {
		String minValue = "";

		if (list != null && list.size() > 0) {
			minValue = list.get(0);

			for (int index = 1; index < list.size(); index++) {
				if (minValue.compareTo(list.get(index)) > 0) {
					minValue = list.get(index);
				}
			}
		}

		return minValue;
	}

	public static boolean isEmpty(String... values) {
		boolean result = true;

		for (String value : values) {
			if (value != null && !"".equals(value)) {
				result = false;
				break;
			}
		}

		return result;
	}

	public static boolean isIntersection(String[] valueArray1,
			String[] valueArray2) {
		boolean isIntersection = false;

		if ((valueArray1 != null && valueArray1.length > 0)
				&& (valueArray2 != null && valueArray2.length > 0)) {
			for (String value1 : valueArray1) {
				for (String value2 : valueArray2) {
					if (value1.equals(value2)) {
						isIntersection = true;
						break;
					}
				}
				if (isIntersection) {
					break;
				}
			}
		}

		return isIntersection;
	}

	public static boolean isNotEmpty(String... values) {
		boolean result = true;

		for (String value : values) {
			if (value == null || "".equals(value)) {
				result = false;
				break;
			}
		}

		return result;
	}

	public static String[] toArray(List<String> list) {
		String[] array = null;

		if (list != null && list.size() > 0) {
			array = new String[list.size()];
			for (int index = 0; index < list.size(); index++) {
				array[index] = list.get(index);
			}
		}

		return array;
	}

	public static String[] toArray(String strs) {
		List<String> strList = new ArrayList<String>();

		if (StringUtil.isNotEmpty(strs)) {
			String[] strArray = strs.split(",");
			if (strArray != null && strArray.length > 0) {
				for (String str : strArray) {
					if (StringUtil.isNotEmpty(str)) {
						strList.add(str);
					}
				}
			}
		}

		return strList.toArray(new String[0]);
	}

	public static List<String> toList(String strs) {
		List<String> strList = null;

		if (StringUtil.isNotEmpty(strs)) {
			String[] strArray = strs.split(",");
			if (strArray != null) {
				strList = new ArrayList<String>();
				for (String str : strArray) {
					strList.add(str);
				}
			}
		}

		return strList;
	}

	public static List<String> toList(String[] strArray) {
		List<String> strList = null;

		if (strArray != null && strArray.length > 0) {
			strList = new ArrayList<String>();
			for (String str : strArray) {
				strList.add(str);
			}
		}

		return strList;
	}

	/**
	 * 将首字母转为小写
	 */
	public static String toLowerCaseFirstLetter(String str) {
		if (StringUtil.isNotEmpty(str)) {
			char[] charArray = new char[1];

			charArray[0] = str.charAt(0);
			String temp = new String(charArray);
			if (charArray[0] >= 'A' && charArray[0] <= 'Z') {
				return str.replaceFirst(temp, temp.toLowerCase());
			}
		}

		return str;
	}

	public static String[] toSortArray(List<String> list) {
		String[] array = null;

		if (list != null && list.size() > 0) {
			array = new String[list.size()];
			for (int index = 0; index < list.size(); index++) {
				array[index] = list.get(index);
			}

			Arrays.sort(array);
		}

		return array;
	}

	public static String toString(Clob clob) {
		String value = "";

		try {
			if (clob != null) {
				BufferedReader in = new BufferedReader(
						clob.getCharacterStream());
				StringWriter out = new StringWriter();
				int c;
				while ((c = in.read()) != -1) {
					out.write(c);
				}

				value = out.toString();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return value;
	}

	public static String toString(Object value) {
		String result = "";

		if (value != null) {
			result = String.valueOf(value);
			if ("null".equals(result)) {
				result = "";
			}
		}

		return result;
	}

	public static String toString(String value) {
		String result = "";

		if (value != null) {
			result = value.trim();
		}

		return result;
	}
}