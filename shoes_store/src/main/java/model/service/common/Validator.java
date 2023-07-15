package model.service.common;

import model.repository.IRepository;
import model.repository.impl.RepositoryImpl;

public class Validator {

    private static IRepository repository = new RepositoryImpl();

    public static String validateUsername(String username) {
        String message = null;
        String regex = "^(?=[a-zA-Z._]{6,12}$)(?!.*[_.]{2})[^_.].*[^_.]$";
        if (!username.matches(regex)) {
            message = "Invalid username (6 - 12 alphabetic characters)";
        }
        else if (repository.findUsername(username) != null) {
            message = "Username already exists!";
        }
        return message;
    }
}
