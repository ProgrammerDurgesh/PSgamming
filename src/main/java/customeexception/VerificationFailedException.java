package customeexception;

public class VerificationFailedException extends Exception {

    public VerificationFailedException() {
        super("OTP verification failed.");
    }

    public VerificationFailedException(String message) {
        super(message);
    }

    public VerificationFailedException(String message, Throwable cause) {
        super(message, cause);
    }
}
