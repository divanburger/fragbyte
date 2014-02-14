package whitesquare.glslcross.glslcompiler;

import org.antlr.v4.runtime.Token;

class LogWriter {
	public int errors = 0;
	
	public void error(Token token, String msg) {
		errors++;
		System.out.println("Line " + token.getLine() + ":" + token.getCharPositionInLine() + " | " + msg);
	}
}
