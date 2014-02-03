// Generated from grammar/GLSL.g4 by ANTLR 4.0
package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.bytecode.Bytecode;

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class GLSLParser extends Parser {
	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__40=1, T__39=2, T__38=3, T__37=4, T__36=5, T__35=6, T__34=7, T__33=8, 
		T__32=9, T__31=10, T__30=11, T__29=12, T__28=13, T__27=14, T__26=15, T__25=16, 
		T__24=17, T__23=18, T__22=19, T__21=20, T__20=21, T__19=22, T__18=23, 
		T__17=24, T__16=25, T__15=26, T__14=27, T__13=28, T__12=29, T__11=30, 
		T__10=31, T__9=32, T__8=33, T__7=34, T__6=35, T__5=36, T__4=37, T__3=38, 
		T__2=39, T__1=40, T__0=41, SWIZZLE=42, INTEGER=43, FLOAT=44, ID=45, STRING=46, 
		WS=47, COMMENT=48, LINECOMMENT=49;
	public static final String[] tokenNames = {
		"<INVALID>", "'-='", "'vec3'", "'sin'", "','", "'min'", "'*'", "'-'", 
		"'('", "'<'", "'int'", "'sqrt'", "'void'", "'{'", "'abs'", "'dot'", "'+='", 
		"'}'", "'float'", "'++'", "'mix'", "'max'", "'length'", "'*='", "'vec2'", 
		"')'", "'step'", "'vec4'", "'+'", "'for'", "'normalize'", "'='", "'return'", 
		"';'", "'cos'", "'atan'", "'const'", "'uniform'", "'mod'", "'/='", "'/'", 
		"'smoothstep'", "SWIZZLE", "INTEGER", "FLOAT", "ID", "STRING", "WS", "COMMENT", 
		"LINECOMMENT"
	};
	public static final int
		RULE_glsl = 0, RULE_function = 1, RULE_parameter = 2, RULE_block = 3, 
		RULE_statement = 4, RULE_uniformDeclaration = 5, RULE_varDeclaration = 6, 
		RULE_returnStatement = 7, RULE_forStatement = 8, RULE_assignment = 9, 
		RULE_expression = 10, RULE_term = 11, RULE_factor = 12, RULE_atom = 13, 
		RULE_construction = 14, RULE_builtInCall = 15, RULE_functionCall = 16, 
		RULE_literal = 17, RULE_type = 18;
	public static final String[] ruleNames = {
		"glsl", "function", "parameter", "block", "statement", "uniformDeclaration", 
		"varDeclaration", "returnStatement", "forStatement", "assignment", "expression", 
		"term", "factor", "atom", "construction", "builtInCall", "functionCall", 
		"literal", "type"
	};

	@Override
	public String getGrammarFileName() { return "GLSL.g4"; }

	@Override
	public String[] getTokenNames() { return tokenNames; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public ATN getATN() { return _ATN; }


	private BytecodeWriter writer;
	private Functions functions = new Functions();
	private Variables variables = new Variables();
	private Types types = new Types();
	private LogWriter log = new LogWriter();
	private TypeHelper typeHelper = new TypeHelper();
	private Type tInt;
	private Type tFloat;
	private Type tVec2;
	private Type tVec3;
	private Type tVec4;
	private Type tVoid;

	public void setBytecodeWriter(BytecodeWriter writer) {
		this.writer = writer;
		typeHelper.setWriters(writer, log);
	}

	public GLSLParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class GlslContext extends ParserRuleContext {
		public VarDeclarationContext varDeclaration(int i) {
			return getRuleContext(VarDeclarationContext.class,i);
		}
		public TerminalNode EOF() { return getToken(GLSLParser.EOF, 0); }
		public FunctionContext function(int i) {
			return getRuleContext(FunctionContext.class,i);
		}
		public List<UniformDeclarationContext> uniformDeclaration() {
			return getRuleContexts(UniformDeclarationContext.class);
		}
		public List<VarDeclarationContext> varDeclaration() {
			return getRuleContexts(VarDeclarationContext.class);
		}
		public List<FunctionContext> function() {
			return getRuleContexts(FunctionContext.class);
		}
		public UniformDeclarationContext uniformDeclaration(int i) {
			return getRuleContext(UniformDeclarationContext.class,i);
		}
		public GlslContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_glsl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterGlsl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitGlsl(this);
		}
	}

	public final GlslContext glsl() throws RecognitionException {
		GlslContext _localctx = new GlslContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_glsl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{

					tInt = types.add("int", 1, true);
					tFloat = types.add("float", 1, false);
					tVec2 = types.add("vec2", 2, false);
					tVec3 = types.add("vec3", 3, false);
					tVec4 = types.add("vec4", 4, false);
					tVoid = types.add("void", 0, true);
				
					Variable fragColor = variables.add("gl_FragColor", tVec4, false);
					Variable fragCoord = variables.add("gl_FragCoord", tVec2, true);
							
					writer.output("gl_FragColor", fragColor);
					writer.input("gl_FragCoord", fragCoord);
				
			setState(42);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==37) {
				{
				{
				setState(39); uniformDeclaration();
				}
				}
				setState(44);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}

					variables.add("__tempf", tVec4, false);
				
			setState(50);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 18) | (1L << 24) | (1L << 27) | (1L << 36))) != 0)) {
				{
				setState(48);
				switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
				case 1:
					{
					setState(46); function();
					}
					break;

				case 2:
					{
					setState(47); varDeclaration();
					}
					break;
				}
				}
				setState(52);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(53); match(EOF);

					writer.getProgram().setMaxSlots(variables.size());
				
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionContext extends ParserRuleContext {
		public TypeContext type;
		public Token ID;
		public ParameterContext parameter;
		public ParameterContext parameter() {
			return getRuleContext(ParameterContext.class,0);
		}
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FunctionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_function; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitFunction(this);
		}
	}

	public final FunctionContext function() throws RecognitionException {
		FunctionContext _localctx = new FunctionContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_function);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(56); ((FunctionContext)_localctx).type = type();
			setState(57); ((FunctionContext)_localctx).ID = match(ID);

					ArrayList<Variable> parms = new ArrayList<Variable>();
				
			setState(59); match(8);
			setState(75);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				{
				setState(63);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 18) | (1L << 24) | (1L << 27))) != 0)) {
					{
					setState(60); ((FunctionContext)_localctx).parameter = parameter();
					parms.add(((FunctionContext)_localctx).parameter.var);
					}
				}

				setState(71);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==4) {
					{
					{
					setState(65); match(4);
					setState(66); ((FunctionContext)_localctx).parameter = parameter();
					parms.add(((FunctionContext)_localctx).parameter.var);
					}
					}
					setState(73);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;

			case 2:
				{
				setState(74); match(12);
				}
				break;
			}
			setState(77); match(25);
					
					int stackIn = 0;
					for (Variable var : parms) stackIn += var.type.size;
					writer.write(Bytecode.FUNC, (((FunctionContext)_localctx).ID!=null?((FunctionContext)_localctx).ID.getText():null), stackIn, ((FunctionContext)_localctx).type.t.size);
					
					for (Variable var : parms) writer.store(var);
				
					functions.add((((FunctionContext)_localctx).ID!=null?((FunctionContext)_localctx).ID.getText():null), ((FunctionContext)_localctx).type.t);
				
			setState(79); block();
			writer.write(Bytecode.RETURN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParameterContext extends ParserRuleContext {
		public Variable var;
		public TypeContext type;
		public Token ID;
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterParameter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitParameter(this);
		}
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(82); ((ParameterContext)_localctx).type = type();
			setState(83); ((ParameterContext)_localctx).ID = match(ID);
			((ParameterContext)_localctx).var =  variables.add((((ParameterContext)_localctx).ID!=null?((ParameterContext)_localctx).ID.getText():null), ((ParameterContext)_localctx).type.t, false);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitBlock(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86); match(13);
			setState(90);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 18) | (1L << 24) | (1L << 27) | (1L << 29) | (1L << 32) | (1L << 36) | (1L << ID))) != 0)) {
				{
				{
				setState(87); statement();
				}
				}
				setState(92);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(93); match(17);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public AssignmentContext assignment() {
			return getRuleContext(AssignmentContext.class,0);
		}
		public ForStatementContext forStatement() {
			return getRuleContext(ForStatementContext.class,0);
		}
		public ReturnStatementContext returnStatement() {
			return getRuleContext(ReturnStatementContext.class,0);
		}
		public VarDeclarationContext varDeclaration() {
			return getRuleContext(VarDeclarationContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitStatement(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_statement);
		try {
			setState(99);
			switch (_input.LA(1)) {
			case 2:
			case 10:
			case 12:
			case 18:
			case 24:
			case 27:
			case 36:
				enterOuterAlt(_localctx, 1);
				{
				setState(95); varDeclaration();
				}
				break;
			case 29:
				enterOuterAlt(_localctx, 2);
				{
				setState(96); forStatement();
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 3);
				{
				setState(97); assignment();
				}
				break;
			case 32:
				enterOuterAlt(_localctx, 4);
				{
				setState(98); returnStatement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UniformDeclarationContext extends ParserRuleContext {
		public Variable var;
		public TypeContext type;
		public Token ID;
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public UniformDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_uniformDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterUniformDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitUniformDeclaration(this);
		}
	}

	public final UniformDeclarationContext uniformDeclaration() throws RecognitionException {
		UniformDeclarationContext _localctx = new UniformDeclarationContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_uniformDeclaration);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(101); match(37);
			setState(102); ((UniformDeclarationContext)_localctx).type = type();
			setState(103); ((UniformDeclarationContext)_localctx).ID = match(ID);

					((UniformDeclarationContext)_localctx).var =  variables.add((((UniformDeclarationContext)_localctx).ID!=null?((UniformDeclarationContext)_localctx).ID.getText():null), ((UniformDeclarationContext)_localctx).type.t, true);
					writer.input((((UniformDeclarationContext)_localctx).ID!=null?((UniformDeclarationContext)_localctx).ID.getText():null), _localctx.var);
				
			setState(105); match(33);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDeclarationContext extends ParserRuleContext {
		public Variable var;
		public TypeContext type;
		public Token ID;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public VarDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterVarDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitVarDeclaration(this);
		}
	}

	public final VarDeclarationContext varDeclaration() throws RecognitionException {
		VarDeclarationContext _localctx = new VarDeclarationContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			boolean constant = false;
			setState(110);
			_la = _input.LA(1);
			if (_la==36) {
				{
				setState(108); match(36);
				constant = true;
				}
			}

			setState(112); ((VarDeclarationContext)_localctx).type = type();
			setState(113); ((VarDeclarationContext)_localctx).ID = match(ID);

					((VarDeclarationContext)_localctx).var =  variables.add((((VarDeclarationContext)_localctx).ID!=null?((VarDeclarationContext)_localctx).ID.getText():null), ((VarDeclarationContext)_localctx).type.t, constant);
				
			{
			setState(115); match(31);
			setState(116); expression(0);
			writer.store(_localctx.var);
			}
			setState(119); match(33);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitReturnStatement(this);
		}
	}

	public final ReturnStatementContext returnStatement() throws RecognitionException {
		ReturnStatementContext _localctx = new ReturnStatementContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_returnStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(121); match(32);
			setState(122); expression(0);
			setState(123); match(33);
			writer.write(Bytecode.RETURN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStatementContext extends ParserRuleContext {
		public Token iter1;
		public Token lower;
		public Token iter2;
		public Token upper;
		public Token iter3;
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public List<TerminalNode> INTEGER() { return getTokens(GLSLParser.INTEGER); }
		public TerminalNode ID(int i) {
			return getToken(GLSLParser.ID, i);
		}
		public List<TerminalNode> ID() { return getTokens(GLSLParser.ID); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode INTEGER(int i) {
			return getToken(GLSLParser.INTEGER, i);
		}
		public ForStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitForStatement(this);
		}
	}

	public final ForStatementContext forStatement() throws RecognitionException {
		ForStatementContext _localctx = new ForStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_forStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126); match(29);
			setState(127); match(8);
			setState(128); match(10);
			setState(129); ((ForStatementContext)_localctx).iter1 = match(ID);
			setState(130); match(31);
			setState(131); ((ForStatementContext)_localctx).lower = match(INTEGER);
			setState(132); match(33);
			setState(133); ((ForStatementContext)_localctx).iter2 = match(ID);
			setState(134); match(9);
			setState(135); ((ForStatementContext)_localctx).upper = match(INTEGER);
			setState(136); match(33);
			setState(137); ((ForStatementContext)_localctx).iter3 = match(ID);
			setState(138); match(19);
			setState(139); match(25);

					Variable iterator = variables.add((((ForStatementContext)_localctx).iter1!=null?((ForStatementContext)_localctx).iter1.getText():null), tInt, false);
					
					Variable test1 = variables.get((((ForStatementContext)_localctx).iter2!=null?((ForStatementContext)_localctx).iter2.getText():null));
					if (test1 == null) log.error(((ForStatementContext)_localctx).iter2, "Unknown variable '" + (((ForStatementContext)_localctx).iter2!=null?((ForStatementContext)_localctx).iter2.getText():null) + "'");
					
					Variable test2 = variables.get((((ForStatementContext)_localctx).iter3!=null?((ForStatementContext)_localctx).iter3.getText():null));
					if (test2 == null) log.error(((ForStatementContext)_localctx).iter3, "Unknown variable '" + (((ForStatementContext)_localctx).iter3!=null?((ForStatementContext)_localctx).iter3.getText():null) + "'");
					
					if (test1 != iterator) log.error(((ForStatementContext)_localctx).iter2, "The condition of the for loop must use the same variable as the initialiser");
					if (test2 != iterator) log.error(((ForStatementContext)_localctx).iter3, "The next statement of the for loop must use the same variable as the initialiser");
					
					writer.write(Bytecode.REPEAT, (((ForStatementContext)_localctx).upper!=null?Integer.valueOf(((ForStatementContext)_localctx).upper.getText()):0) - (((ForStatementContext)_localctx).lower!=null?Integer.valueOf(((ForStatementContext)_localctx).lower.getText()):0));
				
			setState(143);
			switch (_input.LA(1)) {
			case 13:
				{
				setState(141); block();
				}
				break;
			case 2:
			case 10:
			case 12:
			case 18:
			case 24:
			case 27:
			case 29:
			case 32:
			case 36:
			case ID:
				{
				setState(142); statement();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}

					writer.write(Bytecode.ENDREPEAT);
				
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AssignmentContext extends ParserRuleContext {
		public Token ID;
		public Token SWIZZLE;
		public Token OP;
		public ExpressionContext expression;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public TerminalNode SWIZZLE() { return getToken(GLSLParser.SWIZZLE, 0); }
		public AssignmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterAssignment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitAssignment(this);
		}
	}

	public final AssignmentContext assignment() throws RecognitionException {
		AssignmentContext _localctx = new AssignmentContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_assignment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(147); ((AssignmentContext)_localctx).ID = match(ID);

					Variable var = variables.get((((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null));
					if (var == null) log.error(((AssignmentContext)_localctx).ID, "Variable '" + (((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null) + "' does not exist");
				
			setState(150);
			_la = _input.LA(1);
			if (_la==SWIZZLE) {
				{
				setState(149); ((AssignmentContext)_localctx).SWIZZLE = match(SWIZZLE);
				}
			}

			setState(152);
			((AssignmentContext)_localctx).OP = _input.LT(1);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 1) | (1L << 16) | (1L << 23) | (1L << 31) | (1L << 39))) != 0)) ) {
				((AssignmentContext)_localctx).OP = (Token)_errHandler.recoverInline(this);
			}
			consume();
			setState(153); ((AssignmentContext)_localctx).expression = expression(0);
			setState(154); match(33);

					Swizzle swizzle = null;
					Value outValue = var;
							
					if (((AssignmentContext)_localctx).SWIZZLE != null) {
						swizzle = new Swizzle(var.type, (((AssignmentContext)_localctx).SWIZZLE!=null?((AssignmentContext)_localctx).SWIZZLE.getText():null).substring(1));
						outValue = swizzle.getValue();
					}
					
					Value exprValue = ((AssignmentContext)_localctx).expression.value;
					if (exprValue.type.size == 1 && outValue.type.size > 1) {
						writer.writeWideOp(Bytecode.DUPS, outValue.type.size - 1);
						exprValue = new Value(new Type(var.type.size, exprValue.type.integer));
					}
				
					if (var != null) {
						if (!exprValue.isCompatible(outValue)) {
							log.error(((AssignmentContext)_localctx).ID, "Trying to assign a '" + exprValue + "' value to the variable '" + (((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null) + "' of type '" + outValue.type + "'");
						}
						
						if (!(((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null).equals("="))
						{			
							writer.load(var);
							if (swizzle != null) swizzle.writeShift(writer, variables.get("__tempf"));
						}
					
						if ((((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null).equals("+="))
							typeHelper.writeBinaryOp(((AssignmentContext)_localctx).ID, Bytecode.ADD, outValue, exprValue);
						else if ((((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null).equals("-="))
							typeHelper.writeBinaryOp(((AssignmentContext)_localctx).ID, Bytecode.SUB, outValue, exprValue);
						else if ((((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null).equals("*="))
							typeHelper.writeBinaryOp(((AssignmentContext)_localctx).ID, Bytecode.MUL, outValue, exprValue);
						else if ((((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null).equals("/="))
							typeHelper.writeBinaryOp(((AssignmentContext)_localctx).ID, Bytecode.DIV, outValue, exprValue);
						
						if (swizzle == null)
							writer.store(var);
						else
							swizzle.writeStore(writer, var);
					}
				
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public int _p;
		public Value value;
		public ExpressionContext FIRST;
		public TermContext term;
		public Token OP;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TermContext term() {
			return getRuleContext(TermContext.class,0);
		}
		public ExpressionContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public ExpressionContext(ParserRuleContext parent, int invokingState, int _p) {
			super(parent, invokingState);
			this._p = _p;
		}
		@Override public int getRuleIndex() { return RULE_expression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitExpression(this);
		}
	}

	public final ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState, _p);
		ExpressionContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, RULE_expression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(158); ((ExpressionContext)_localctx).term = term(0);
			((ExpressionContext)_localctx).value =  ((ExpressionContext)_localctx).term.value;
			}
			_ctx.stop = _input.LT(-1);
			setState(173);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=-1 ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(171);
					switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(161);
						if (!(3 >= _localctx._p)) throw new FailedPredicateException(this, "3 >= $_p");
						setState(162); ((ExpressionContext)_localctx).OP = match(28);
						setState(163); ((ExpressionContext)_localctx).term = term(0);
						((ExpressionContext)_localctx).value =  typeHelper.writeBinaryOp(((ExpressionContext)_localctx).OP, Bytecode.ADD, ((ExpressionContext)_localctx).FIRST.value, ((ExpressionContext)_localctx).term.value);
						}
						break;

					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(166);
						if (!(2 >= _localctx._p)) throw new FailedPredicateException(this, "2 >= $_p");
						setState(167); ((ExpressionContext)_localctx).OP = match(7);
						setState(168); ((ExpressionContext)_localctx).term = term(0);
						((ExpressionContext)_localctx).value =  typeHelper.writeBinaryOp(((ExpressionContext)_localctx).OP, Bytecode.SUB, ((ExpressionContext)_localctx).FIRST.value, ((ExpressionContext)_localctx).term.value);
						}
						break;
					}
					} 
				}
				setState(175);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class TermContext extends ParserRuleContext {
		public int _p;
		public Value value;
		public TermContext FIRST;
		public FactorContext factor;
		public Token OP;
		public TermContext term() {
			return getRuleContext(TermContext.class,0);
		}
		public FactorContext factor() {
			return getRuleContext(FactorContext.class,0);
		}
		public TermContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public TermContext(ParserRuleContext parent, int invokingState, int _p) {
			super(parent, invokingState);
			this._p = _p;
		}
		@Override public int getRuleIndex() { return RULE_term; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterTerm(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitTerm(this);
		}
	}

	public final TermContext term(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TermContext _localctx = new TermContext(_ctx, _parentState, _p);
		TermContext _prevctx = _localctx;
		int _startState = 22;
		enterRecursionRule(_localctx, RULE_term);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(177); ((TermContext)_localctx).factor = factor();
			((TermContext)_localctx).value =  ((TermContext)_localctx).factor.value;
			}
			_ctx.stop = _input.LT(-1);
			setState(192);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			while ( _alt!=2 && _alt!=-1 ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(190);
					switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
					case 1:
						{
						_localctx = new TermContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_term);
						setState(180);
						if (!(3 >= _localctx._p)) throw new FailedPredicateException(this, "3 >= $_p");
						setState(181); ((TermContext)_localctx).OP = match(6);
						setState(182); ((TermContext)_localctx).factor = factor();
						((TermContext)_localctx).value =  typeHelper.writeBinaryOp(((TermContext)_localctx).OP, Bytecode.MUL, ((TermContext)_localctx).FIRST.value, ((TermContext)_localctx).factor.value);
						}
						break;

					case 2:
						{
						_localctx = new TermContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_term);
						setState(185);
						if (!(2 >= _localctx._p)) throw new FailedPredicateException(this, "2 >= $_p");
						setState(186); ((TermContext)_localctx).OP = match(40);
						setState(187); ((TermContext)_localctx).factor = factor();
						((TermContext)_localctx).value =  typeHelper.writeBinaryOp(((TermContext)_localctx).OP, Bytecode.DIV, ((TermContext)_localctx).FIRST.value, ((TermContext)_localctx).factor.value);
						}
						break;
					}
					} 
				}
				setState(194);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class FactorContext extends ParserRuleContext {
		public Value value;
		public AtomContext atom;
		public AtomContext atom() {
			return getRuleContext(AtomContext.class,0);
		}
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterFactor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitFactor(this);
		}
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_factor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(202);
			switch (_input.LA(1)) {
			case 2:
			case 3:
			case 5:
			case 8:
			case 10:
			case 11:
			case 12:
			case 14:
			case 15:
			case 18:
			case 20:
			case 21:
			case 22:
			case 24:
			case 26:
			case 27:
			case 30:
			case 34:
			case 35:
			case 38:
			case 41:
			case INTEGER:
			case FLOAT:
			case ID:
				{
				setState(195); ((FactorContext)_localctx).atom = atom();
				((FactorContext)_localctx).value =  ((FactorContext)_localctx).atom.value;
				}
				break;
			case 7:
				{
				setState(198); match(7);
				setState(199); ((FactorContext)_localctx).atom = atom();
				((FactorContext)_localctx).value =  ((FactorContext)_localctx).atom.value; writer.writeWideOp(Bytecode.NEG, _localctx.value);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AtomContext extends ParserRuleContext {
		public Value value;
		public ExpressionContext expression;
		public ConstructionContext construction;
		public BuiltInCallContext builtInCall;
		public FunctionCallContext functionCall;
		public Token SWIZZLE;
		public LiteralContext literal;
		public Token ID;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public FunctionCallContext functionCall() {
			return getRuleContext(FunctionCallContext.class,0);
		}
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public BuiltInCallContext builtInCall() {
			return getRuleContext(BuiltInCallContext.class,0);
		}
		public ConstructionContext construction() {
			return getRuleContext(ConstructionContext.class,0);
		}
		public TerminalNode SWIZZLE() { return getToken(GLSLParser.SWIZZLE, 0); }
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public AtomContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atom; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterAtom(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitAtom(this);
		}
	}

	public final AtomContext atom() throws RecognitionException {
		AtomContext _localctx = new AtomContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_atom);
		try {
			setState(234);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(218);
				switch (_input.LA(1)) {
				case 8:
					{
					setState(204); match(8);
					setState(205); ((AtomContext)_localctx).expression = expression(0);
					setState(206); match(25);
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).expression.value;
					}
					break;
				case 2:
				case 10:
				case 12:
				case 18:
				case 24:
				case 27:
					{
					setState(209); ((AtomContext)_localctx).construction = construction();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).construction.value;
					}
					break;
				case 3:
				case 5:
				case 11:
				case 14:
				case 15:
				case 20:
				case 21:
				case 22:
				case 26:
				case 30:
				case 34:
				case 35:
				case 38:
				case 41:
					{
					setState(212); ((AtomContext)_localctx).builtInCall = builtInCall();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).builtInCall.value;
					}
					break;
				case ID:
					{
					setState(215); ((AtomContext)_localctx).functionCall = functionCall();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).functionCall.value;
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(222);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(220); ((AtomContext)_localctx).SWIZZLE = match(SWIZZLE);

									Swizzle swizzle = new Swizzle(_localctx.value.type, (((AtomContext)_localctx).SWIZZLE!=null?((AtomContext)_localctx).SWIZZLE.getText():null).substring(1));
									swizzle.writeShift(writer, variables.get("__tempf"));
									((AtomContext)_localctx).value =  swizzle.getValue();
								
					}
					break;
				}
				}
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(224); ((AtomContext)_localctx).literal = literal();
				((AtomContext)_localctx).value =  ((AtomContext)_localctx).literal.value;
				}
				break;

			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(227); ((AtomContext)_localctx).ID = match(ID);

						Variable var = variables.get((((AtomContext)_localctx).ID!=null?((AtomContext)_localctx).ID.getText():null));
						Swizzle swizzle = null;
					
				setState(231);
				switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
				case 1:
					{
					setState(229); ((AtomContext)_localctx).SWIZZLE = match(SWIZZLE);
					if (var != null) swizzle = new Swizzle(var.type, (((AtomContext)_localctx).SWIZZLE!=null?((AtomContext)_localctx).SWIZZLE.getText():null).substring(1));
					}
					break;
				}

						if (var != null) {			
							if (swizzle == null) {
								writer.load(var);
								((AtomContext)_localctx).value =  new Value(var.type);
							} else {
								swizzle.writeLoad(writer, var);
								((AtomContext)_localctx).value =  swizzle.getValue();
							}
						} else {
							((AtomContext)_localctx).value =  new Value(tVoid);
							log.error(((AtomContext)_localctx).ID, "Variable '" + (((AtomContext)_localctx).ID!=null?((AtomContext)_localctx).ID.getText():null) + "' does not exist");
						}
					
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstructionContext extends ParserRuleContext {
		public Value value;
		public TypeContext type;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ConstructionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_construction; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterConstruction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitConstruction(this);
		}
	}

	public final ConstructionContext construction() throws RecognitionException {
		ConstructionContext _localctx = new ConstructionContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_construction);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(236); ((ConstructionContext)_localctx).type = type();
			setState(237); match(8);
			setState(238); expression(0);
			setState(243);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==4) {
				{
				{
				setState(239); match(4);
				setState(240); expression(0);
				}
				}
				setState(245);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(246); match(25);
			((ConstructionContext)_localctx).value =  new Value(((ConstructionContext)_localctx).type.t);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuiltInCallContext extends ParserRuleContext {
		public Value value;
		public ExpressionContext expression;
		public Token FUN;
		public ExpressionContext a;
		public ExpressionContext b;
		public ExpressionContext c;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public BuiltInCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtInCall; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterBuiltInCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitBuiltInCall(this);
		}
	}

	public final BuiltInCallContext builtInCall() throws RecognitionException {
		BuiltInCallContext _localctx = new BuiltInCallContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_builtInCall);
		try {
			setState(353);
			switch (_input.LA(1)) {
			case 3:
				enterOuterAlt(_localctx, 1);
				{
				setState(249); match(3);
				setState(250); match(8);
				setState(251); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(252); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.SIN, _localctx.value);
				}
				break;
			case 34:
				enterOuterAlt(_localctx, 2);
				{
				setState(255); match(34);
				setState(256); match(8);
				setState(257); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(258); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.COS, _localctx.value);
				}
				break;
			case 11:
				enterOuterAlt(_localctx, 3);
				{
				setState(261); match(11);
				setState(262); match(8);
				setState(263); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(264); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.SQRT, _localctx.value);
				}
				break;
			case 14:
				enterOuterAlt(_localctx, 4);
				{
				setState(267); match(14);
				setState(268); match(8);
				setState(269); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(270); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.ABS, _localctx.value);
				}
				break;
			case 38:
				enterOuterAlt(_localctx, 5);
				{
				setState(273); ((BuiltInCallContext)_localctx).FUN = match(38);
				setState(274); match(8);
				setState(275); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(276); match(4);
				setState(277); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(278); match(25);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.MOD, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 6);
				{
				setState(281); ((BuiltInCallContext)_localctx).FUN = match(5);
				setState(282); match(8);
				setState(283); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(284); match(4);
				setState(285); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(286); match(25);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.MIN, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 21:
				enterOuterAlt(_localctx, 7);
				{
				setState(289); ((BuiltInCallContext)_localctx).FUN = match(21);
				setState(290); match(8);
				setState(291); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(292); match(4);
				setState(293); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(294); match(25);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.MAX, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 35:
				enterOuterAlt(_localctx, 8);
				{
				setState(297); ((BuiltInCallContext)_localctx).FUN = match(35);
				setState(298); match(8);
				setState(299); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(300); match(4);
				setState(301); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(302); match(25);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.ATAN, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 20:
				enterOuterAlt(_localctx, 9);
				{
				setState(305); ((BuiltInCallContext)_localctx).FUN = match(20);
				setState(306); match(8);
				setState(307); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(308); match(4);
				setState(309); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(310); match(4);
				setState(311); ((BuiltInCallContext)_localctx).c = expression(0);
				setState(312); match(25);

						((BuiltInCallContext)_localctx).value =  typeHelper.writeTernaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.MIX, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value, ((BuiltInCallContext)_localctx).c.value);
					
				}
				break;
			case 41:
				enterOuterAlt(_localctx, 10);
				{
				setState(315); ((BuiltInCallContext)_localctx).FUN = match(41);
				setState(316); match(8);
				setState(317); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(318); match(4);
				setState(319); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(320); match(4);
				setState(321); ((BuiltInCallContext)_localctx).c = expression(0);
				setState(322); match(25);

						((BuiltInCallContext)_localctx).value =  typeHelper.writeTernaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.SMOOTHSTEP, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value, ((BuiltInCallContext)_localctx).c.value);
					
				}
				break;
			case 26:
				enterOuterAlt(_localctx, 11);
				{
				setState(325); ((BuiltInCallContext)_localctx).FUN = match(26);
				setState(326); match(8);
				setState(327); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(328); match(4);
				setState(329); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(330); match(25);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, Bytecode.STEP, ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 22:
				enterOuterAlt(_localctx, 12);
				{
				setState(333); match(22);
				setState(334); match(8);
				setState(335); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(336); match(25);

						((BuiltInCallContext)_localctx).value =  new Value(tFloat, ((BuiltInCallContext)_localctx).expression.value.constant);
						if (((BuiltInCallContext)_localctx).expression.value.type.size > 1) writer.writeWideOp(Bytecode.LEN, ((BuiltInCallContext)_localctx).expression.value);
					
				}
				break;
			case 30:
				enterOuterAlt(_localctx, 13);
				{
				setState(339); match(30);
				setState(340); match(8);
				setState(341); ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(342); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.NORM, _localctx.value);
				}
				break;
			case 15:
				enterOuterAlt(_localctx, 14);
				{
				setState(345); match(15);
				setState(346); match(8);
				setState(347); ((BuiltInCallContext)_localctx).a = ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(348); match(4);
				setState(349); ((BuiltInCallContext)_localctx).b = ((BuiltInCallContext)_localctx).expression = expression(0);
				setState(350); match(25);
				((BuiltInCallContext)_localctx).value =  ((BuiltInCallContext)_localctx).expression.value; writer.writeWideOp(Bytecode.DP, _localctx.value);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionCallContext extends ParserRuleContext {
		public Value value;
		public Token ID;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode ID() { return getToken(GLSLParser.ID, 0); }
		public FunctionCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionCall; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterFunctionCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitFunctionCall(this);
		}
	}

	public final FunctionCallContext functionCall() throws RecognitionException {
		FunctionCallContext _localctx = new FunctionCallContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_functionCall);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(355); ((FunctionCallContext)_localctx).ID = match(ID);

					Function func = functions.get((((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null));
					if (func == null) {
						log.error(((FunctionCallContext)_localctx).ID, "Function '" + (((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null) + "' does not exist");
					}
				
			setState(357); match(8);
			setState(359);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 3) | (1L << 5) | (1L << 7) | (1L << 8) | (1L << 10) | (1L << 11) | (1L << 12) | (1L << 14) | (1L << 15) | (1L << 18) | (1L << 20) | (1L << 21) | (1L << 22) | (1L << 24) | (1L << 26) | (1L << 27) | (1L << 30) | (1L << 34) | (1L << 35) | (1L << 38) | (1L << 41) | (1L << INTEGER) | (1L << FLOAT) | (1L << ID))) != 0)) {
				{
				setState(358); expression(0);
				}
			}

			setState(365);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==4) {
				{
				{
				setState(361); match(4);
				setState(362); expression(0);
				}
				}
				setState(367);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(368); match(25);

					((FunctionCallContext)_localctx).value =  new Value(func.returnType);
					writer.write(Bytecode.CALL, (((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null));
				
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LiteralContext extends ParserRuleContext {
		public Value value;
		public Token INTEGER;
		public Token FLOAT;
		public TerminalNode INTEGER() { return getToken(GLSLParser.INTEGER, 0); }
		public TerminalNode FLOAT() { return getToken(GLSLParser.FLOAT, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitLiteral(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_literal);
		try {
			setState(375);
			switch (_input.LA(1)) {
			case INTEGER:
				enterOuterAlt(_localctx, 1);
				{
				setState(371); ((LiteralContext)_localctx).INTEGER = match(INTEGER);
				writer.write(Bytecode.LDC, Integer.parseInt((((LiteralContext)_localctx).INTEGER!=null?((LiteralContext)_localctx).INTEGER.getText():null))); ((LiteralContext)_localctx).value =  new Value(tInt, true);
				}
				break;
			case FLOAT:
				enterOuterAlt(_localctx, 2);
				{
				setState(373); ((LiteralContext)_localctx).FLOAT = match(FLOAT);
				writer.write(Bytecode.LDC, Float.parseFloat((((LiteralContext)_localctx).FLOAT!=null?((LiteralContext)_localctx).FLOAT.getText():null))); ((LiteralContext)_localctx).value =  new Value(tFloat, true);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public Type t;
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof GLSLListener ) ((GLSLListener)listener).exitType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_type);
		try {
			setState(389);
			switch (_input.LA(1)) {
			case 18:
				enterOuterAlt(_localctx, 1);
				{
				setState(377); match(18);
				((TypeContext)_localctx).t =  tFloat;
				}
				break;
			case 10:
				enterOuterAlt(_localctx, 2);
				{
				setState(379); match(10);
				((TypeContext)_localctx).t =  tInt;
				}
				break;
			case 24:
				enterOuterAlt(_localctx, 3);
				{
				setState(381); match(24);
				((TypeContext)_localctx).t =  tVec2;
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 4);
				{
				setState(383); match(2);
				((TypeContext)_localctx).t =  tVec3;
				}
				break;
			case 27:
				enterOuterAlt(_localctx, 5);
				{
				setState(385); match(27);
				((TypeContext)_localctx).t =  tVec4;
				}
				break;
			case 12:
				enterOuterAlt(_localctx, 6);
				{
				setState(387); match(12);
				((TypeContext)_localctx).t =  tVoid;
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10: return expression_sempred((ExpressionContext)_localctx, predIndex);

		case 11: return term_sempred((TermContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0: return 3 >= _localctx._p;

		case 1: return 2 >= _localctx._p;
		}
		return true;
	}
	private boolean term_sempred(TermContext _localctx, int predIndex) {
		switch (predIndex) {
		case 2: return 3 >= _localctx._p;

		case 3: return 2 >= _localctx._p;
		}
		return true;
	}

	public static final String _serializedATN =
		"\2\3\63\u018a\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b"+
		"\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t"+
		"\20\4\21\t\21\4\22\t\22\4\23\t\23\4\24\t\24\3\2\3\2\7\2+\n\2\f\2\16\2"+
		".\13\2\3\2\3\2\3\2\7\2\63\n\2\f\2\16\2\66\13\2\3\2\3\2\3\2\3\3\3\3\3\3"+
		"\3\3\3\3\3\3\3\3\5\3B\n\3\3\3\3\3\3\3\3\3\7\3H\n\3\f\3\16\3K\13\3\3\3"+
		"\5\3N\n\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\5\3\5\7\5[\n\5\f\5\16"+
		"\5^\13\5\3\5\3\5\3\6\3\6\3\6\3\6\5\6f\n\6\3\7\3\7\3\7\3\7\3\7\3\7\3\b"+
		"\3\b\3\b\5\bq\n\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t"+
		"\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3"+
		"\n\5\n\u0092\n\n\3\n\3\n\3\13\3\13\3\13\5\13\u0099\n\13\3\13\3\13\3\13"+
		"\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\7\f"+
		"\u00ae\n\f\f\f\16\f\u00b1\13\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\3\r\3\r\3\r\3\r\7\r\u00c1\n\r\f\r\16\r\u00c4\13\r\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\3\16\5\16\u00cd\n\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00dd\n\17\3\17\3\17\5\17\u00e1\n"+
		"\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00ea\n\17\3\17\5\17\u00ed"+
		"\n\17\3\20\3\20\3\20\3\20\3\20\7\20\u00f4\n\20\f\20\16\20\u00f7\13\20"+
		"\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u0164\n\21\3\22\3\22"+
		"\3\22\3\22\5\22\u016a\n\22\3\22\3\22\7\22\u016e\n\22\f\22\16\22\u0171"+
		"\13\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\5\23\u017a\n\23\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\5\24\u0188\n\24\3\24"+
		"\2\25\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&\2\3\7\3\3\22\22\31\31"+
		"!!))\u01a5\2(\3\2\2\2\4:\3\2\2\2\6T\3\2\2\2\bX\3\2\2\2\ne\3\2\2\2\fg\3"+
		"\2\2\2\16m\3\2\2\2\20{\3\2\2\2\22\u0080\3\2\2\2\24\u0095\3\2\2\2\26\u009f"+
		"\3\2\2\2\30\u00b2\3\2\2\2\32\u00cc\3\2\2\2\34\u00ec\3\2\2\2\36\u00ee\3"+
		"\2\2\2 \u0163\3\2\2\2\"\u0165\3\2\2\2$\u0179\3\2\2\2&\u0187\3\2\2\2(,"+
		"\b\2\1\2)+\5\f\7\2*)\3\2\2\2+.\3\2\2\2,*\3\2\2\2,-\3\2\2\2-/\3\2\2\2."+
		",\3\2\2\2/\64\b\2\1\2\60\63\5\4\3\2\61\63\5\16\b\2\62\60\3\2\2\2\62\61"+
		"\3\2\2\2\63\66\3\2\2\2\64\62\3\2\2\2\64\65\3\2\2\2\65\67\3\2\2\2\66\64"+
		"\3\2\2\2\678\7\1\2\289\b\2\1\29\3\3\2\2\2:;\5&\24\2;<\7/\2\2<=\b\3\1\2"+
		"=M\7\n\2\2>?\5\6\4\2?@\b\3\1\2@B\3\2\2\2A>\3\2\2\2AB\3\2\2\2BI\3\2\2\2"+
		"CD\7\6\2\2DE\5\6\4\2EF\b\3\1\2FH\3\2\2\2GC\3\2\2\2HK\3\2\2\2IG\3\2\2\2"+
		"IJ\3\2\2\2JN\3\2\2\2KI\3\2\2\2LN\7\16\2\2MA\3\2\2\2ML\3\2\2\2NO\3\2\2"+
		"\2OP\7\33\2\2PQ\b\3\1\2QR\5\b\5\2RS\b\3\1\2S\5\3\2\2\2TU\5&\24\2UV\7/"+
		"\2\2VW\b\4\1\2W\7\3\2\2\2X\\\7\17\2\2Y[\5\n\6\2ZY\3\2\2\2[^\3\2\2\2\\"+
		"Z\3\2\2\2\\]\3\2\2\2]_\3\2\2\2^\\\3\2\2\2_`\7\23\2\2`\t\3\2\2\2af\5\16"+
		"\b\2bf\5\22\n\2cf\5\24\13\2df\5\20\t\2ea\3\2\2\2eb\3\2\2\2ec\3\2\2\2e"+
		"d\3\2\2\2f\13\3\2\2\2gh\7\'\2\2hi\5&\24\2ij\7/\2\2jk\b\7\1\2kl\7#\2\2"+
		"l\r\3\2\2\2mp\b\b\1\2no\7&\2\2oq\b\b\1\2pn\3\2\2\2pq\3\2\2\2qr\3\2\2\2"+
		"rs\5&\24\2st\7/\2\2tu\b\b\1\2uv\7!\2\2vw\5\26\f\2wx\b\b\1\2xy\3\2\2\2"+
		"yz\7#\2\2z\17\3\2\2\2{|\7\"\2\2|}\5\26\f\2}~\7#\2\2~\177\b\t\1\2\177\21"+
		"\3\2\2\2\u0080\u0081\7\37\2\2\u0081\u0082\7\n\2\2\u0082\u0083\7\f\2\2"+
		"\u0083\u0084\7/\2\2\u0084\u0085\7!\2\2\u0085\u0086\7-\2\2\u0086\u0087"+
		"\7#\2\2\u0087\u0088\7/\2\2\u0088\u0089\7\13\2\2\u0089\u008a\7-\2\2\u008a"+
		"\u008b\7#\2\2\u008b\u008c\7/\2\2\u008c\u008d\7\25\2\2\u008d\u008e\7\33"+
		"\2\2\u008e\u0091\b\n\1\2\u008f\u0092\5\b\5\2\u0090\u0092\5\n\6\2\u0091"+
		"\u008f\3\2\2\2\u0091\u0090\3\2\2\2\u0092\u0093\3\2\2\2\u0093\u0094\b\n"+
		"\1\2\u0094\23\3\2\2\2\u0095\u0096\7/\2\2\u0096\u0098\b\13\1\2\u0097\u0099"+
		"\7,\2\2\u0098\u0097\3\2\2\2\u0098\u0099\3\2\2\2\u0099\u009a\3\2\2\2\u009a"+
		"\u009b\t\2\2\2\u009b\u009c\5\26\f\2\u009c\u009d\7#\2\2\u009d\u009e\b\13"+
		"\1\2\u009e\25\3\2\2\2\u009f\u00a0\b\f\1\2\u00a0\u00a1\5\30\r\2\u00a1\u00a2"+
		"\b\f\1\2\u00a2\u00af\3\2\2\2\u00a3\u00a4\6\f\2\3\u00a4\u00a5\7\36\2\2"+
		"\u00a5\u00a6\5\30\r\2\u00a6\u00a7\b\f\1\2\u00a7\u00ae\3\2\2\2\u00a8\u00a9"+
		"\6\f\3\3\u00a9\u00aa\7\t\2\2\u00aa\u00ab\5\30\r\2\u00ab\u00ac\b\f\1\2"+
		"\u00ac\u00ae\3\2\2\2\u00ad\u00a3\3\2\2\2\u00ad\u00a8\3\2\2\2\u00ae\u00b1"+
		"\3\2\2\2\u00af\u00ad\3\2\2\2\u00af\u00b0\3\2\2\2\u00b0\27\3\2\2\2\u00b1"+
		"\u00af\3\2\2\2\u00b2\u00b3\b\r\1\2\u00b3\u00b4\5\32\16\2\u00b4\u00b5\b"+
		"\r\1\2\u00b5\u00c2\3\2\2\2\u00b6\u00b7\6\r\4\3\u00b7\u00b8\7\b\2\2\u00b8"+
		"\u00b9\5\32\16\2\u00b9\u00ba\b\r\1\2\u00ba\u00c1\3\2\2\2\u00bb\u00bc\6"+
		"\r\5\3\u00bc\u00bd\7*\2\2\u00bd\u00be\5\32\16\2\u00be\u00bf\b\r\1\2\u00bf"+
		"\u00c1\3\2\2\2\u00c0\u00b6\3\2\2\2\u00c0\u00bb\3\2\2\2\u00c1\u00c4\3\2"+
		"\2\2\u00c2\u00c0\3\2\2\2\u00c2\u00c3\3\2\2\2\u00c3\31\3\2\2\2\u00c4\u00c2"+
		"\3\2\2\2\u00c5\u00c6\5\34\17\2\u00c6\u00c7\b\16\1\2\u00c7\u00cd\3\2\2"+
		"\2\u00c8\u00c9\7\t\2\2\u00c9\u00ca\5\34\17\2\u00ca\u00cb\b\16\1\2\u00cb"+
		"\u00cd\3\2\2\2\u00cc\u00c5\3\2\2\2\u00cc\u00c8\3\2\2\2\u00cd\33\3\2\2"+
		"\2\u00ce\u00cf\7\n\2\2\u00cf\u00d0\5\26\f\2\u00d0\u00d1\7\33\2\2\u00d1"+
		"\u00d2\b\17\1\2\u00d2\u00dd\3\2\2\2\u00d3\u00d4\5\36\20\2\u00d4\u00d5"+
		"\b\17\1\2\u00d5\u00dd\3\2\2\2\u00d6\u00d7\5 \21\2\u00d7\u00d8\b\17\1\2"+
		"\u00d8\u00dd\3\2\2\2\u00d9\u00da\5\"\22\2\u00da\u00db\b\17\1\2\u00db\u00dd"+
		"\3\2\2\2\u00dc\u00ce\3\2\2\2\u00dc\u00d3\3\2\2\2\u00dc\u00d6\3\2\2\2\u00dc"+
		"\u00d9\3\2\2\2\u00dd\u00e0\3\2\2\2\u00de\u00df\7,\2\2\u00df\u00e1\b\17"+
		"\1\2\u00e0\u00de\3\2\2\2\u00e0\u00e1\3\2\2\2\u00e1\u00ed\3\2\2\2\u00e2"+
		"\u00e3\5$\23\2\u00e3\u00e4\b\17\1\2\u00e4\u00ed\3\2\2\2\u00e5\u00e6\7"+
		"/\2\2\u00e6\u00e9\b\17\1\2\u00e7\u00e8\7,\2\2\u00e8\u00ea\b\17\1\2\u00e9"+
		"\u00e7\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00eb\3\2\2\2\u00eb\u00ed\b\17"+
		"\1\2\u00ec\u00dc\3\2\2\2\u00ec\u00e2\3\2\2\2\u00ec\u00e5\3\2\2\2\u00ed"+
		"\35\3\2\2\2\u00ee\u00ef\5&\24\2\u00ef\u00f0\7\n\2\2\u00f0\u00f5\5\26\f"+
		"\2\u00f1\u00f2\7\6\2\2\u00f2\u00f4\5\26\f\2\u00f3\u00f1\3\2\2\2\u00f4"+
		"\u00f7\3\2\2\2\u00f5\u00f3\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6\u00f8\3\2"+
		"\2\2\u00f7\u00f5\3\2\2\2\u00f8\u00f9\7\33\2\2\u00f9\u00fa\b\20\1\2\u00fa"+
		"\37\3\2\2\2\u00fb\u00fc\7\5\2\2\u00fc\u00fd\7\n\2\2\u00fd\u00fe\5\26\f"+
		"\2\u00fe\u00ff\7\33\2\2\u00ff\u0100\b\21\1\2\u0100\u0164\3\2\2\2\u0101"+
		"\u0102\7$\2\2\u0102\u0103\7\n\2\2\u0103\u0104\5\26\f\2\u0104\u0105\7\33"+
		"\2\2\u0105\u0106\b\21\1\2\u0106\u0164\3\2\2\2\u0107\u0108\7\r\2\2\u0108"+
		"\u0109\7\n\2\2\u0109\u010a\5\26\f\2\u010a\u010b\7\33\2\2\u010b\u010c\b"+
		"\21\1\2\u010c\u0164\3\2\2\2\u010d\u010e\7\20\2\2\u010e\u010f\7\n\2\2\u010f"+
		"\u0110\5\26\f\2\u0110\u0111\7\33\2\2\u0111\u0112\b\21\1\2\u0112\u0164"+
		"\3\2\2\2\u0113\u0114\7(\2\2\u0114\u0115\7\n\2\2\u0115\u0116\5\26\f\2\u0116"+
		"\u0117\7\6\2\2\u0117\u0118\5\26\f\2\u0118\u0119\7\33\2\2\u0119\u011a\b"+
		"\21\1\2\u011a\u0164\3\2\2\2\u011b\u011c\7\7\2\2\u011c\u011d\7\n\2\2\u011d"+
		"\u011e\5\26\f\2\u011e\u011f\7\6\2\2\u011f\u0120\5\26\f\2\u0120\u0121\7"+
		"\33\2\2\u0121\u0122\b\21\1\2\u0122\u0164\3\2\2\2\u0123\u0124\7\27\2\2"+
		"\u0124\u0125\7\n\2\2\u0125\u0126\5\26\f\2\u0126\u0127\7\6\2\2\u0127\u0128"+
		"\5\26\f\2\u0128\u0129\7\33\2\2\u0129\u012a\b\21\1\2\u012a\u0164\3\2\2"+
		"\2\u012b\u012c\7%\2\2\u012c\u012d\7\n\2\2\u012d\u012e\5\26\f\2\u012e\u012f"+
		"\7\6\2\2\u012f\u0130\5\26\f\2\u0130\u0131\7\33\2\2\u0131\u0132\b\21\1"+
		"\2\u0132\u0164\3\2\2\2\u0133\u0134\7\26\2\2\u0134\u0135\7\n\2\2\u0135"+
		"\u0136\5\26\f\2\u0136\u0137\7\6\2\2\u0137\u0138\5\26\f\2\u0138\u0139\7"+
		"\6\2\2\u0139\u013a\5\26\f\2\u013a\u013b\7\33\2\2\u013b\u013c\b\21\1\2"+
		"\u013c\u0164\3\2\2\2\u013d\u013e\7+\2\2\u013e\u013f\7\n\2\2\u013f\u0140"+
		"\5\26\f\2\u0140\u0141\7\6\2\2\u0141\u0142\5\26\f\2\u0142\u0143\7\6\2\2"+
		"\u0143\u0144\5\26\f\2\u0144\u0145\7\33\2\2\u0145\u0146\b\21\1\2\u0146"+
		"\u0164\3\2\2\2\u0147\u0148\7\34\2\2\u0148\u0149\7\n\2\2\u0149\u014a\5"+
		"\26\f\2\u014a\u014b\7\6\2\2\u014b\u014c\5\26\f\2\u014c\u014d\7\33\2\2"+
		"\u014d\u014e\b\21\1\2\u014e\u0164\3\2\2\2\u014f\u0150\7\30\2\2\u0150\u0151"+
		"\7\n\2\2\u0151\u0152\5\26\f\2\u0152\u0153\7\33\2\2\u0153\u0154\b\21\1"+
		"\2\u0154\u0164\3\2\2\2\u0155\u0156\7 \2\2\u0156\u0157\7\n\2\2\u0157\u0158"+
		"\5\26\f\2\u0158\u0159\7\33\2\2\u0159\u015a\b\21\1\2\u015a\u0164\3\2\2"+
		"\2\u015b\u015c\7\21\2\2\u015c\u015d\7\n\2\2\u015d\u015e\5\26\f\2\u015e"+
		"\u015f\7\6\2\2\u015f\u0160\5\26\f\2\u0160\u0161\7\33\2\2\u0161\u0162\b"+
		"\21\1\2\u0162\u0164\3\2\2\2\u0163\u00fb\3\2\2\2\u0163\u0101\3\2\2\2\u0163"+
		"\u0107\3\2\2\2\u0163\u010d\3\2\2\2\u0163\u0113\3\2\2\2\u0163\u011b\3\2"+
		"\2\2\u0163\u0123\3\2\2\2\u0163\u012b\3\2\2\2\u0163\u0133\3\2\2\2\u0163"+
		"\u013d\3\2\2\2\u0163\u0147\3\2\2\2\u0163\u014f\3\2\2\2\u0163\u0155\3\2"+
		"\2\2\u0163\u015b\3\2\2\2\u0164!\3\2\2\2\u0165\u0166\7/\2\2\u0166\u0167"+
		"\b\22\1\2\u0167\u0169\7\n\2\2\u0168\u016a\5\26\f\2\u0169\u0168\3\2\2\2"+
		"\u0169\u016a\3\2\2\2\u016a\u016f\3\2\2\2\u016b\u016c\7\6\2\2\u016c\u016e"+
		"\5\26\f\2\u016d\u016b\3\2\2\2\u016e\u0171\3\2\2\2\u016f\u016d\3\2\2\2"+
		"\u016f\u0170\3\2\2\2\u0170\u0172\3\2\2\2\u0171\u016f\3\2\2\2\u0172\u0173"+
		"\7\33\2\2\u0173\u0174\b\22\1\2\u0174#\3\2\2\2\u0175\u0176\7-\2\2\u0176"+
		"\u017a\b\23\1\2\u0177\u0178\7.\2\2\u0178\u017a\b\23\1\2\u0179\u0175\3"+
		"\2\2\2\u0179\u0177\3\2\2\2\u017a%\3\2\2\2\u017b\u017c\7\24\2\2\u017c\u0188"+
		"\b\24\1\2\u017d\u017e\7\f\2\2\u017e\u0188\b\24\1\2\u017f\u0180\7\32\2"+
		"\2\u0180\u0188\b\24\1\2\u0181\u0182\7\4\2\2\u0182\u0188\b\24\1\2\u0183"+
		"\u0184\7\35\2\2\u0184\u0188\b\24\1\2\u0185\u0186\7\16\2\2\u0186\u0188"+
		"\b\24\1\2\u0187\u017b\3\2\2\2\u0187\u017d\3\2\2\2\u0187\u017f\3\2\2\2"+
		"\u0187\u0181\3\2\2\2\u0187\u0183\3\2\2\2\u0187\u0185\3\2\2\2\u0188\'\3"+
		"\2\2\2\34,\62\64AIM\\ep\u0091\u0098\u00ad\u00af\u00c0\u00c2\u00cc\u00dc"+
		"\u00e0\u00e9\u00ec\u00f5\u0163\u0169\u016f\u0179\u0187";
	public static final ATN _ATN =
		ATNSimulator.deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
	}
}