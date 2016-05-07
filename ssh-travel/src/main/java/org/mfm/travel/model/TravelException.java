package org.mfm.travel.model;

@SuppressWarnings("serial")
public class TravelException extends RuntimeException {

	public TravelException() {
		super();
	}

	public TravelException(String message, Throwable cause) {
		super(message, cause);
	}

	public TravelException(String message) {
		super(message);
	}

	public TravelException(Throwable cause) {
		super(cause);
	}

}
