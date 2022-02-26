package utils;

import java.util.Map;

import static java.util.Arrays.stream;
import static java.util.Collections.emptyMap;
import static java.util.stream.Collectors.toMap;

/**
 * @author - wally55077@gmail.com
 */
public class HttpParameterUtils {
    private HttpParameterUtils() {

    }

    public static Map<String, String> decodeQueryStrings(String queryString) {
        if (queryString == null) {
            return emptyMap();
        }
        return stream(queryString.split("&"))
                .map(keyValue -> keyValue.split("="))
                .collect(toMap(keyValue -> keyValue[0], keyValue -> keyValue[1]));
    }
}
