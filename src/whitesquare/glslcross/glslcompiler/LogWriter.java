package whitesquare.glslcross.glslcompiler;

import org.antlr.v4.runtime.Token;

public class LogWriter {
	public void error(Token token, String msg) {
		System.out.println("Line " + token.getLine() + ":" + token.getCharPositionInLine() + " | " + msg);
	}
}
