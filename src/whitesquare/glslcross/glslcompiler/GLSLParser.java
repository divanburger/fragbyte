// Generated from grammar/GLSL.g4 by ANTLR 4.0
package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.ast.*;
import whitesquare.glslcross.ast.optimizers.*;

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
		T__43=1, T__42=2, T__41=3, T__40=4, T__39=5, T__38=6, T__37=7, T__36=8, 
		T__35=9, T__34=10, T__33=11, T__32=12, T__31=13, T__30=14, T__29=15, T__28=16, 
		T__27=17, T__26=18, T__25=19, T__24=20, T__23=21, T__22=22, T__21=23, 
		T__20=24, T__19=25, T__18=26, T__17=27, T__16=28, T__15=29, T__14=30, 
		T__13=31, T__12=32, T__11=33, T__10=34, T__9=35, T__8=36, T__7=37, T__6=38, 
		T__5=39, T__4=40, T__3=41, T__2=42, T__1=43, T__0=44, SWIZZLE=45, INTEGER=46, 
		FLOAT=47, ID=48, STRING=49, WS=50, COMMENT=51, LINECOMMENT=52;
	public static final String[] tokenNames = {
		"<INVALID>", "'-='", "'vec3'", "'sin'", "','", "'min'", "'*'", "'-'", 
		"'('", "'<'", "'int'", "'sqrt'", "'void'", "'pow'", "'{'", "'abs'", "'dot'", 
		"'+='", "'}'", "'float'", "'++'", "'mix'", "'max'", "'length'", "'*='", 
		"'vec2'", "')'", "'step'", "'vec4'", "'+'", "'for'", "'normalize'", "'='", 
		"'return'", "';'", "'cos'", "'atan'", "'const'", "'uniform'", "'clamp'", 
		"'mod'", "'/='", "'/'", "'exp'", "'smoothstep'", "SWIZZLE", "INTEGER", 
		"FLOAT", "ID", "STRING", "WS", "COMMENT", "LINECOMMENT"
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


	private Functions functions = new Functions();
	private Variables variables = new Variables();
	private LogWriter log = null;
	private TypeHelper typeHelper = null;
	private ScopeManager scope = new ScopeManager();
	private Type tInt;
	private Type tFloat;
	private Type tVec2;
	private Type tVec3;
	private Type tVec4;
	private Type tVoid;
	private Type tError;
	private Unit unit = new Unit();

	public void setLog(LogWriter log) {
		this.log = log;
	}

	public Unit getUnit() {
		return unit;
	}

	public Variables getVariables() {
		return variables;
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

					tInt = unit.addType("int", 1, true);
					tFloat = unit.addType("float", 1, false);
					tVec2 = unit.addType("vec2", 2, false);
					tVec3 = unit.addType("vec3", 3, false);
					tVec4 = unit.addType("vec4", 4, false);
					tVoid = unit.addType("void", 0, true);
					tError = unit.addType("_ERROR_", 0, true);
					
					typeHelper = new TypeHelper(log, tError);
						
					scope.pushScope(unit);
					
					Variable fragColor = variables.add("gl_FragColor", tVec4, false);
					unit.outputs.add(fragColor);
					
					Variable fragCoord = variables.add("gl_FragCoord", tVec2, false);
					unit.inputs.add(fragCoord);
				
			setState(42);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==38) {
				{
				{
				setState(39); uniformDeclaration();
				}
				}
				setState(44);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(49);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 19) | (1L << 25) | (1L << 28) | (1L << 37))) != 0)) {
				{
				setState(47);
				switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
				case 1:
					{
					setState(45); function();
					}
					break;

				case 2:
					{
					setState(46); varDeclaration();
					}
					break;
				}
				}
				setState(51);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(52); match(EOF);

					scope.popScope();
				
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
			setState(55); ((FunctionContext)_localctx).type = type();
			setState(56); ((FunctionContext)_localctx).ID = match(ID);

					ArrayList<Variable> parms = new ArrayList<Variable>();
				
			setState(58); match(8);
			setState(74);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				{
				setState(62);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 19) | (1L << 25) | (1L << 28))) != 0)) {
					{
					setState(59); ((FunctionContext)_localctx).parameter = parameter();
					parms.add(((FunctionContext)_localctx).parameter.var);
					}
				}

				setState(70);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==4) {
					{
					{
					setState(64); match(4);
					setState(65); ((FunctionContext)_localctx).parameter = parameter();
					parms.add(((FunctionContext)_localctx).parameter.var);
					}
					}
					setState(72);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;

			case 2:
				{
				setState(73); match(12);
				}
				break;
			}
			setState(76); match(26);
					
					int stackIn = 0;
					for (Variable var : parms) stackIn += var.type.size;
					Function func = functions.add((((FunctionContext)_localctx).ID!=null?((FunctionContext)_localctx).ID.getText():null), ((FunctionContext)_localctx).type.t, stackIn);
					scope.pushScope(func);
					for (Variable var : parms) func.parameters.add(new Parameter(var));
				
			setState(78); block();

					scope.popScope();
				
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
			setState(81); ((ParameterContext)_localctx).type = type();
			setState(82); ((ParameterContext)_localctx).ID = match(ID);
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
			setState(85); match(14);
			setState(89);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 10) | (1L << 12) | (1L << 14) | (1L << 19) | (1L << 25) | (1L << 28) | (1L << 30) | (1L << 33) | (1L << 37) | (1L << ID))) != 0)) {
				{
				{
				setState(86); statement();
				}
				}
				setState(91);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(92); match(18);
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
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
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
			setState(102);
			switch (_input.LA(1)) {
			case 2:
			case 10:
			case 12:
			case 19:
			case 25:
			case 28:
			case 37:
				enterOuterAlt(_localctx, 1);
				{
				setState(94); varDeclaration();
				}
				break;
			case 30:
				enterOuterAlt(_localctx, 2);
				{
				setState(95); forStatement();
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 3);
				{
				setState(96); assignment();
				}
				break;
			case 33:
				enterOuterAlt(_localctx, 4);
				{
				setState(97); returnStatement();
				}
				break;
			case 14:
				enterOuterAlt(_localctx, 5);
				{
				scope.pushScope(new Block());
				setState(99); block();
				scope.popScope();
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
			setState(104); match(38);
			setState(105); ((UniformDeclarationContext)_localctx).type = type();
			setState(106); ((UniformDeclarationContext)_localctx).ID = match(ID);

					((UniformDeclarationContext)_localctx).var =  variables.add((((UniformDeclarationContext)_localctx).ID!=null?((UniformDeclarationContext)_localctx).ID.getText():null), ((UniformDeclarationContext)_localctx).type.t, false);
					unit.inputs.add(_localctx.var);
				
			setState(108); match(34);
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
		public ExpressionContext expression;
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
			setState(113);
			_la = _input.LA(1);
			if (_la==37) {
				{
				setState(111); match(37);
				constant = true;
				}
			}

			setState(115); ((VarDeclarationContext)_localctx).type = type();
			setState(116); ((VarDeclarationContext)_localctx).ID = match(ID);

					((VarDeclarationContext)_localctx).var =  variables.add((((VarDeclarationContext)_localctx).ID!=null?((VarDeclarationContext)_localctx).ID.getText():null), ((VarDeclarationContext)_localctx).type.t, constant);
				
			{
			setState(118); match(32);
			setState(119); ((VarDeclarationContext)_localctx).expression = expression(0);

						Assignment assignment = new Assignment(new VariableStore(_localctx.var), ((VarDeclarationContext)_localctx).expression.value);
						scope.add(assignment);
					
			}
			setState(122); match(34);
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
		public ExpressionContext expression;
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
			setState(124); match(33);
			setState(125); ((ReturnStatementContext)_localctx).expression = expression(0);
			setState(126); match(34);

					ReturnStatement rtrn = new ReturnStatement(((ReturnStatementContext)_localctx).expression.value);
					scope.add(rtrn);
				
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
			setState(129); match(30);
			setState(130); match(8);
			setState(131); match(10);
			setState(132); ((ForStatementContext)_localctx).iter1 = match(ID);
			setState(133); match(32);
			setState(134); ((ForStatementContext)_localctx).lower = match(INTEGER);
			setState(135); match(34);
			setState(136); ((ForStatementContext)_localctx).iter2 = match(ID);
			setState(137); match(9);
			setState(138); ((ForStatementContext)_localctx).upper = match(INTEGER);
			setState(139); match(34);
			setState(140); ((ForStatementContext)_localctx).iter3 = match(ID);
			setState(141); match(20);
			setState(142); match(26);

					Variable iterator = variables.add((((ForStatementContext)_localctx).iter1!=null?((ForStatementContext)_localctx).iter1.getText():null), tInt, false);
					
					Variable test1 = variables.get((((ForStatementContext)_localctx).iter2!=null?((ForStatementContext)_localctx).iter2.getText():null));
					if (test1 == null) log.error(((ForStatementContext)_localctx).iter2, "Unknown variable '" + (((ForStatementContext)_localctx).iter2!=null?((ForStatementContext)_localctx).iter2.getText():null) + "'");
					
					Variable test2 = variables.get((((ForStatementContext)_localctx).iter3!=null?((ForStatementContext)_localctx).iter3.getText():null));
					if (test2 == null) log.error(((ForStatementContext)_localctx).iter3, "Unknown variable '" + (((ForStatementContext)_localctx).iter3!=null?((ForStatementContext)_localctx).iter3.getText():null) + "'");
					
					if (test1 != iterator) log.error(((ForStatementContext)_localctx).iter2, "The condition of the for loop must use the same variable as the initialiser");
					if (test2 != iterator) log.error(((ForStatementContext)_localctx).iter3, "The next statement of the for loop must use the same variable as the initialiser");
					
					scope.pushScope(new Loop((((ForStatementContext)_localctx).upper!=null?Integer.valueOf(((ForStatementContext)_localctx).upper.getText()):0) - (((ForStatementContext)_localctx).lower!=null?Integer.valueOf(((ForStatementContext)_localctx).lower.getText()):0)));
				
			setState(146);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				{
				setState(144); block();
				}
				break;

			case 2:
				{
				setState(145); statement();
				}
				break;
			}

					scope.popScope();
				
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
			setState(150); ((AssignmentContext)_localctx).ID = match(ID);

					Variable var = variables.get((((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null));
					if (var == null) log.error(((AssignmentContext)_localctx).ID, "Variable '" + (((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null) + "' does not exist");
				
			setState(153);
			_la = _input.LA(1);
			if (_la==SWIZZLE) {
				{
				setState(152); ((AssignmentContext)_localctx).SWIZZLE = match(SWIZZLE);
				}
			}

			setState(155);
			((AssignmentContext)_localctx).OP = _input.LT(1);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 1) | (1L << 17) | (1L << 24) | (1L << 32) | (1L << 41))) != 0)) ) {
				((AssignmentContext)_localctx).OP = (Token)_errHandler.recoverInline(this);
			}
			consume();
			setState(156); ((AssignmentContext)_localctx).expression = expression(0);
			setState(157); match(34);

					Swizzle swizzle = (((AssignmentContext)_localctx).SWIZZLE == null ? null : new Swizzle(var.type, (((AssignmentContext)_localctx).SWIZZLE!=null?((AssignmentContext)_localctx).SWIZZLE.getText():null).substring(1)));
					String op = (((AssignmentContext)_localctx).OP!=null?((AssignmentContext)_localctx).OP.getText():null);
					Value exprValue = ((AssignmentContext)_localctx).expression.value;
					VariableStore outVar = (swizzle == null ? new VariableStore(var) : new VariableStore(var, swizzle));
					
					if (!op.equals("=")) {
						VariableLoad varLoad = (swizzle == null ? new VariableLoad(var) : new VariableLoad(var, swizzle));
						
						if (op.equals("+="))
							exprValue = new BinaryOp(varLoad.type, "ADD", exprValue, varLoad);
						else if (op.equals("-="))
							exprValue = new BinaryOp(varLoad.type, "SUB", exprValue, varLoad);
						else if (op.equals("*="))
							exprValue = new BinaryOp(varLoad.type, "MUL", exprValue, varLoad);
						else if (op.equals("/="))
							exprValue = new BinaryOp(varLoad.type, "DIV", exprValue, varLoad);
					}
					
					Assignment assignment = new Assignment(outVar, exprValue);
					scope.add(assignment);
									
					if (exprValue.type.size == 1 && outVar.type.size > 1) {
						exprValue = new Value(new Type(outVar.type.size, exprValue.type.integer));
					}
				
					if (var != null) {
						if (!exprValue.isCompatible(outVar)) {
							log.error(((AssignmentContext)_localctx).ID, "Trying to assign a '" + exprValue + "' value to the variable '" + (((AssignmentContext)_localctx).ID!=null?((AssignmentContext)_localctx).ID.getText():null) + "' of type '" + outVar.type + "'");
						}
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
			setState(161); ((ExpressionContext)_localctx).term = term(0);
			((ExpressionContext)_localctx).value =  ((ExpressionContext)_localctx).term.value;
			}
			_ctx.stop = _input.LT(-1);
			setState(176);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=-1 ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(174);
					switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(164);
						if (!(3 >= _localctx._p)) throw new FailedPredicateException(this, "3 >= $_p");
						setState(165); ((ExpressionContext)_localctx).OP = match(29);
						setState(166); ((ExpressionContext)_localctx).term = term(0);
						((ExpressionContext)_localctx).value =  typeHelper.writeBinaryOp(((ExpressionContext)_localctx).OP, "ADD", ((ExpressionContext)_localctx).FIRST.value, ((ExpressionContext)_localctx).term.value);
						}
						break;

					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(169);
						if (!(2 >= _localctx._p)) throw new FailedPredicateException(this, "2 >= $_p");
						setState(170); ((ExpressionContext)_localctx).OP = match(7);
						setState(171); ((ExpressionContext)_localctx).term = term(0);
						((ExpressionContext)_localctx).value =  typeHelper.writeBinaryOp(((ExpressionContext)_localctx).OP, "SUB", ((ExpressionContext)_localctx).FIRST.value, ((ExpressionContext)_localctx).term.value);
						}
						break;
					}
					} 
				}
				setState(178);
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
			setState(180); ((TermContext)_localctx).factor = factor();
			((TermContext)_localctx).value =  ((TermContext)_localctx).factor.value;
			}
			_ctx.stop = _input.LT(-1);
			setState(195);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			while ( _alt!=2 && _alt!=-1 ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(193);
					switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
					case 1:
						{
						_localctx = new TermContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_term);
						setState(183);
						if (!(3 >= _localctx._p)) throw new FailedPredicateException(this, "3 >= $_p");
						setState(184); ((TermContext)_localctx).OP = match(6);
						setState(185); ((TermContext)_localctx).factor = factor();
						((TermContext)_localctx).value =  typeHelper.writeBinaryOp(((TermContext)_localctx).OP, "MUL", ((TermContext)_localctx).FIRST.value, ((TermContext)_localctx).factor.value);
						}
						break;

					case 2:
						{
						_localctx = new TermContext(_parentctx, _parentState, _p);
						_localctx.FIRST = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_term);
						setState(188);
						if (!(2 >= _localctx._p)) throw new FailedPredicateException(this, "2 >= $_p");
						setState(189); ((TermContext)_localctx).OP = match(42);
						setState(190); ((TermContext)_localctx).factor = factor();
						((TermContext)_localctx).value =  typeHelper.writeBinaryOp(((TermContext)_localctx).OP, "DIV", ((TermContext)_localctx).FIRST.value, ((TermContext)_localctx).factor.value);
						}
						break;
					}
					} 
				}
				setState(197);
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
		public Token OP;
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
			setState(205);
			switch (_input.LA(1)) {
			case 2:
			case 3:
			case 5:
			case 8:
			case 10:
			case 11:
			case 12:
			case 13:
			case 15:
			case 16:
			case 19:
			case 21:
			case 22:
			case 23:
			case 25:
			case 27:
			case 28:
			case 31:
			case 35:
			case 36:
			case 39:
			case 40:
			case 43:
			case 44:
			case INTEGER:
			case FLOAT:
			case ID:
				{
				setState(198); ((FactorContext)_localctx).atom = atom();
				((FactorContext)_localctx).value =  ((FactorContext)_localctx).atom.value;
				}
				break;
			case 7:
				{
				setState(201); ((FactorContext)_localctx).OP = match(7);
				setState(202); ((FactorContext)_localctx).atom = atom();
				((FactorContext)_localctx).value =  typeHelper.writeUnaryOp(((FactorContext)_localctx).OP, "NEG", ((FactorContext)_localctx).atom.value);
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
			setState(237);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(221);
				switch (_input.LA(1)) {
				case 8:
					{
					setState(207); match(8);
					setState(208); ((AtomContext)_localctx).expression = expression(0);
					setState(209); match(26);
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).expression.value;
					}
					break;
				case 2:
				case 10:
				case 12:
				case 19:
				case 25:
				case 28:
					{
					setState(212); ((AtomContext)_localctx).construction = construction();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).construction.value;
					}
					break;
				case 3:
				case 5:
				case 11:
				case 13:
				case 15:
				case 16:
				case 21:
				case 22:
				case 23:
				case 27:
				case 31:
				case 35:
				case 36:
				case 39:
				case 40:
				case 43:
				case 44:
					{
					setState(215); ((AtomContext)_localctx).builtInCall = builtInCall();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).builtInCall.value;
					}
					break;
				case ID:
					{
					setState(218); ((AtomContext)_localctx).functionCall = functionCall();
					((AtomContext)_localctx).value =  ((AtomContext)_localctx).functionCall.value;
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(225);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(223); ((AtomContext)_localctx).SWIZZLE = match(SWIZZLE);

									Swizzle swizzle = new Swizzle(_localctx.value.type, (((AtomContext)_localctx).SWIZZLE!=null?((AtomContext)_localctx).SWIZZLE.getText():null).substring(1));
									((AtomContext)_localctx).value =  new SwizzleValue(_localctx.value, swizzle);
								
					}
					break;
				}
				}
				}
				break;

			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(227); ((AtomContext)_localctx).literal = literal();
				((AtomContext)_localctx).value =  ((AtomContext)_localctx).literal.value;
				}
				break;

			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(230); ((AtomContext)_localctx).ID = match(ID);

						Variable var = variables.get((((AtomContext)_localctx).ID!=null?((AtomContext)_localctx).ID.getText():null));
						Swizzle swizzle = null;
					
				setState(234);
				switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
				case 1:
					{
					setState(232); ((AtomContext)_localctx).SWIZZLE = match(SWIZZLE);
					if (var != null) swizzle = new Swizzle(var.type, (((AtomContext)_localctx).SWIZZLE!=null?((AtomContext)_localctx).SWIZZLE.getText():null).substring(1));
					}
					break;
				}

						if (var != null) {			
							if (swizzle == null)
								((AtomContext)_localctx).value =  new VariableLoad(var);
							else
								((AtomContext)_localctx).value =  new VariableLoad(var, swizzle);
						} else {
							((AtomContext)_localctx).value =  new Value(tError);
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
		public ExpressionContext expression;
		public List<ExpressionContext> args = new ArrayList<ExpressionContext>();
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
			setState(239); ((ConstructionContext)_localctx).type = type();
			setState(240); match(8);
			setState(241); ((ConstructionContext)_localctx).expression = expression(0);
			((ConstructionContext)_localctx).args.add(((ConstructionContext)_localctx).expression);
			setState(246);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==4) {
				{
				{
				setState(242); match(4);
				setState(243); ((ConstructionContext)_localctx).expression = expression(0);
				((ConstructionContext)_localctx).args.add(((ConstructionContext)_localctx).expression);
				}
				}
				setState(248);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(249); match(26);

					ArrayList<Value> inputs = new ArrayList<Value>();
					for (ExpressionContext exp : ((ConstructionContext)_localctx).args) inputs.add(exp.value);
					((ConstructionContext)_localctx).value =  new Construction(((ConstructionContext)_localctx).type.t, inputs);
				
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
			setState(380);
			switch (_input.LA(1)) {
			case 3:
				enterOuterAlt(_localctx, 1);
				{
				setState(252); ((BuiltInCallContext)_localctx).FUN = match(3);
				setState(253); match(8);
				setState(254); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(255); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "SIN", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 35:
				enterOuterAlt(_localctx, 2);
				{
				setState(258); ((BuiltInCallContext)_localctx).FUN = match(35);
				setState(259); match(8);
				setState(260); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(261); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "COS", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 11:
				enterOuterAlt(_localctx, 3);
				{
				setState(264); ((BuiltInCallContext)_localctx).FUN = match(11);
				setState(265); match(8);
				setState(266); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(267); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "SQRT", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 15:
				enterOuterAlt(_localctx, 4);
				{
				setState(270); ((BuiltInCallContext)_localctx).FUN = match(15);
				setState(271); match(8);
				setState(272); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(273); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "ABS", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 43:
				enterOuterAlt(_localctx, 5);
				{
				setState(276); ((BuiltInCallContext)_localctx).FUN = match(43);
				setState(277); match(8);
				setState(278); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(279); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "EXP", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 40:
				enterOuterAlt(_localctx, 6);
				{
				setState(282); ((BuiltInCallContext)_localctx).FUN = match(40);
				setState(283); match(8);
				setState(284); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(285); match(4);
				setState(286); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(287); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "MOD", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 7);
				{
				setState(290); ((BuiltInCallContext)_localctx).FUN = match(5);
				setState(291); match(8);
				setState(292); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(293); match(4);
				setState(294); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(295); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "MIN", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 22:
				enterOuterAlt(_localctx, 8);
				{
				setState(298); ((BuiltInCallContext)_localctx).FUN = match(22);
				setState(299); match(8);
				setState(300); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(301); match(4);
				setState(302); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(303); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "MAX", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 36:
				enterOuterAlt(_localctx, 9);
				{
				setState(306); ((BuiltInCallContext)_localctx).FUN = match(36);
				setState(307); match(8);
				setState(308); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(309); match(4);
				setState(310); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(311); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "ATAN", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 13:
				enterOuterAlt(_localctx, 10);
				{
				setState(314); ((BuiltInCallContext)_localctx).FUN = match(13);
				setState(315); match(8);
				setState(316); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(317); match(4);
				setState(318); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(319); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "POW", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 21:
				enterOuterAlt(_localctx, 11);
				{
				setState(322); ((BuiltInCallContext)_localctx).FUN = match(21);
				setState(323); match(8);
				setState(324); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(325); match(4);
				setState(326); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(327); match(4);
				setState(328); ((BuiltInCallContext)_localctx).c = expression(0);
				setState(329); match(26);

						((BuiltInCallContext)_localctx).value =  typeHelper.writeTernaryOpAny(((BuiltInCallContext)_localctx).FUN, "MIX", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value, ((BuiltInCallContext)_localctx).c.value);
					
				}
				break;
			case 39:
				enterOuterAlt(_localctx, 12);
				{
				setState(332); ((BuiltInCallContext)_localctx).FUN = match(39);
				setState(333); match(8);
				setState(334); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(335); match(4);
				setState(336); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(337); match(4);
				setState(338); ((BuiltInCallContext)_localctx).c = expression(0);
				setState(339); match(26);

						((BuiltInCallContext)_localctx).value =  typeHelper.writeTernaryOpTwoSingle(((BuiltInCallContext)_localctx).FUN, "CLAMP", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value, ((BuiltInCallContext)_localctx).c.value);
					
				}
				break;
			case 44:
				enterOuterAlt(_localctx, 13);
				{
				setState(342); ((BuiltInCallContext)_localctx).FUN = match(44);
				setState(343); match(8);
				setState(344); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(345); match(4);
				setState(346); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(347); match(4);
				setState(348); ((BuiltInCallContext)_localctx).c = expression(0);
				setState(349); match(26);

						((BuiltInCallContext)_localctx).value =  typeHelper.writeTernaryOp(((BuiltInCallContext)_localctx).FUN, "SMOOTHSTEP", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value, ((BuiltInCallContext)_localctx).c.value);
					
				}
				break;
			case 27:
				enterOuterAlt(_localctx, 14);
				{
				setState(352); ((BuiltInCallContext)_localctx).FUN = match(27);
				setState(353); match(8);
				setState(354); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(355); match(4);
				setState(356); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(357); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeBinaryOp(((BuiltInCallContext)_localctx).FUN, "STEP", ((BuiltInCallContext)_localctx).a.value, ((BuiltInCallContext)_localctx).b.value);
				}
				break;
			case 23:
				enterOuterAlt(_localctx, 15);
				{
				setState(360); ((BuiltInCallContext)_localctx).FUN = match(23);
				setState(361); match(8);
				setState(362); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(363); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "LEN", tFloat, ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 31:
				enterOuterAlt(_localctx, 16);
				{
				setState(366); ((BuiltInCallContext)_localctx).FUN = match(31);
				setState(367); match(8);
				setState(368); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(369); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "NORM", ((BuiltInCallContext)_localctx).a.value);
				}
				break;
			case 16:
				enterOuterAlt(_localctx, 17);
				{
				setState(372); ((BuiltInCallContext)_localctx).FUN = match(16);
				setState(373); match(8);
				setState(374); ((BuiltInCallContext)_localctx).a = expression(0);
				setState(375); match(4);
				setState(376); ((BuiltInCallContext)_localctx).b = expression(0);
				setState(377); match(26);
				((BuiltInCallContext)_localctx).value =  typeHelper.writeUnaryOp(((BuiltInCallContext)_localctx).FUN, "DP", ((BuiltInCallContext)_localctx).a.value);
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
		public ExpressionContext expression;
		public List<ExpressionContext> args = new ArrayList<ExpressionContext>();
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
			setState(382); ((FunctionCallContext)_localctx).ID = match(ID);

					System.out.println((((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null));
					Function func = functions.get((((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null));
					if (func == null) {
						log.error(((FunctionCallContext)_localctx).ID, "Function '" + (((FunctionCallContext)_localctx).ID!=null?((FunctionCallContext)_localctx).ID.getText():null) + "' does not exist");
					}
				
			setState(384); match(8);
			setState(386);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << 2) | (1L << 3) | (1L << 5) | (1L << 7) | (1L << 8) | (1L << 10) | (1L << 11) | (1L << 12) | (1L << 13) | (1L << 15) | (1L << 16) | (1L << 19) | (1L << 21) | (1L << 22) | (1L << 23) | (1L << 25) | (1L << 27) | (1L << 28) | (1L << 31) | (1L << 35) | (1L << 36) | (1L << 39) | (1L << 40) | (1L << 43) | (1L << 44) | (1L << INTEGER) | (1L << FLOAT) | (1L << ID))) != 0)) {
				{
				setState(385); ((FunctionCallContext)_localctx).expression = expression(0);
				((FunctionCallContext)_localctx).args.add(((FunctionCallContext)_localctx).expression);
				}
			}

			setState(392);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==4) {
				{
				{
				setState(388); match(4);
				setState(389); ((FunctionCallContext)_localctx).expression = expression(0);
				((FunctionCallContext)_localctx).args.add(((FunctionCallContext)_localctx).expression);
				}
				}
				setState(394);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(395); match(26);

					if (func != null) {
						ArrayList<Value> inputs = new ArrayList<Value>();
						for (ExpressionContext exp : ((FunctionCallContext)_localctx).args) inputs.add(exp.value);
						((FunctionCallContext)_localctx).value =  new FunctionCall(func, inputs);
					}
					else
						((FunctionCallContext)_localctx).value =  new Value(tError);
				
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
			setState(402);
			switch (_input.LA(1)) {
			case INTEGER:
				enterOuterAlt(_localctx, 1);
				{
				setState(398); ((LiteralContext)_localctx).INTEGER = match(INTEGER);
				((LiteralContext)_localctx).value =  new Value(tInt, Integer.parseInt((((LiteralContext)_localctx).INTEGER!=null?((LiteralContext)_localctx).INTEGER.getText():null)));
				}
				break;
			case FLOAT:
				enterOuterAlt(_localctx, 2);
				{
				setState(400); ((LiteralContext)_localctx).FLOAT = match(FLOAT);
				((LiteralContext)_localctx).value =  new Value(tFloat, Float.parseFloat((((LiteralContext)_localctx).FLOAT!=null?((LiteralContext)_localctx).FLOAT.getText():null)));
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
			setState(416);
			switch (_input.LA(1)) {
			case 19:
				enterOuterAlt(_localctx, 1);
				{
				setState(404); match(19);
				((TypeContext)_localctx).t =  tFloat;
				}
				break;
			case 10:
				enterOuterAlt(_localctx, 2);
				{
				setState(406); match(10);
				((TypeContext)_localctx).t =  tInt;
				}
				break;
			case 25:
				enterOuterAlt(_localctx, 3);
				{
				setState(408); match(25);
				((TypeContext)_localctx).t =  tVec2;
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 4);
				{
				setState(410); match(2);
				((TypeContext)_localctx).t =  tVec3;
				}
				break;
			case 28:
				enterOuterAlt(_localctx, 5);
				{
				setState(412); match(28);
				((TypeContext)_localctx).t =  tVec4;
				}
				break;
			case 12:
				enterOuterAlt(_localctx, 6);
				{
				setState(414); match(12);
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
		"\2\3\66\u01a5\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b"+
		"\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t"+
		"\20\4\21\t\21\4\22\t\22\4\23\t\23\4\24\t\24\3\2\3\2\7\2+\n\2\f\2\16\2"+
		".\13\2\3\2\3\2\7\2\62\n\2\f\2\16\2\65\13\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3"+
		"\3\3\3\3\3\3\5\3A\n\3\3\3\3\3\3\3\3\3\7\3G\n\3\f\3\16\3J\13\3\3\3\5\3"+
		"M\n\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\5\3\5\7\5Z\n\5\f\5\16\5]\13"+
		"\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\5\6i\n\6\3\7\3\7\3\7\3\7\3"+
		"\7\3\7\3\b\3\b\3\b\5\bt\n\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3"+
		"\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n"+
		"\3\n\3\n\3\n\5\n\u0095\n\n\3\n\3\n\3\13\3\13\3\13\5\13\u009c\n\13\3\13"+
		"\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\f\7\f\u00b1\n\f\f\f\16\f\u00b4\13\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3"+
		"\r\3\r\3\r\3\r\3\r\3\r\3\r\7\r\u00c4\n\r\f\r\16\r\u00c7\13\r\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\5\16\u00d0\n\16\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00e0\n\17\3\17\3\17\5\17"+
		"\u00e4\n\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00ed\n\17\3\17\5"+
		"\17\u00f0\n\17\3\20\3\20\3\20\3\20\3\20\7\20\u00f7\n\20\f\20\16\20\u00fa"+
		"\13\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u017f\n\21\3\22\3\22\3\22\3\22\5\22"+
		"\u0185\n\22\3\22\3\22\7\22\u0189\n\22\f\22\16\22\u018c\13\22\3\22\3\22"+
		"\3\22\3\23\3\23\3\23\3\23\5\23\u0195\n\23\3\24\3\24\3\24\3\24\3\24\3\24"+
		"\3\24\3\24\3\24\3\24\3\24\3\24\5\24\u01a3\n\24\3\24\2\25\2\4\6\b\n\f\16"+
		"\20\22\24\26\30\32\34\36 \"$&\2\3\7\3\3\23\23\32\32\"\"++\u01c4\2(\3\2"+
		"\2\2\49\3\2\2\2\6S\3\2\2\2\bW\3\2\2\2\nh\3\2\2\2\fj\3\2\2\2\16p\3\2\2"+
		"\2\20~\3\2\2\2\22\u0083\3\2\2\2\24\u0098\3\2\2\2\26\u00a2\3\2\2\2\30\u00b5"+
		"\3\2\2\2\32\u00cf\3\2\2\2\34\u00ef\3\2\2\2\36\u00f1\3\2\2\2 \u017e\3\2"+
		"\2\2\"\u0180\3\2\2\2$\u0194\3\2\2\2&\u01a2\3\2\2\2(,\b\2\1\2)+\5\f\7\2"+
		"*)\3\2\2\2+.\3\2\2\2,*\3\2\2\2,-\3\2\2\2-\63\3\2\2\2.,\3\2\2\2/\62\5\4"+
		"\3\2\60\62\5\16\b\2\61/\3\2\2\2\61\60\3\2\2\2\62\65\3\2\2\2\63\61\3\2"+
		"\2\2\63\64\3\2\2\2\64\66\3\2\2\2\65\63\3\2\2\2\66\67\7\1\2\2\678\b\2\1"+
		"\28\3\3\2\2\29:\5&\24\2:;\7\62\2\2;<\b\3\1\2<L\7\n\2\2=>\5\6\4\2>?\b\3"+
		"\1\2?A\3\2\2\2@=\3\2\2\2@A\3\2\2\2AH\3\2\2\2BC\7\6\2\2CD\5\6\4\2DE\b\3"+
		"\1\2EG\3\2\2\2FB\3\2\2\2GJ\3\2\2\2HF\3\2\2\2HI\3\2\2\2IM\3\2\2\2JH\3\2"+
		"\2\2KM\7\16\2\2L@\3\2\2\2LK\3\2\2\2MN\3\2\2\2NO\7\34\2\2OP\b\3\1\2PQ\5"+
		"\b\5\2QR\b\3\1\2R\5\3\2\2\2ST\5&\24\2TU\7\62\2\2UV\b\4\1\2V\7\3\2\2\2"+
		"W[\7\20\2\2XZ\5\n\6\2YX\3\2\2\2Z]\3\2\2\2[Y\3\2\2\2[\\\3\2\2\2\\^\3\2"+
		"\2\2][\3\2\2\2^_\7\24\2\2_\t\3\2\2\2`i\5\16\b\2ai\5\22\n\2bi\5\24\13\2"+
		"ci\5\20\t\2de\b\6\1\2ef\5\b\5\2fg\b\6\1\2gi\3\2\2\2h`\3\2\2\2ha\3\2\2"+
		"\2hb\3\2\2\2hc\3\2\2\2hd\3\2\2\2i\13\3\2\2\2jk\7(\2\2kl\5&\24\2lm\7\62"+
		"\2\2mn\b\7\1\2no\7$\2\2o\r\3\2\2\2ps\b\b\1\2qr\7\'\2\2rt\b\b\1\2sq\3\2"+
		"\2\2st\3\2\2\2tu\3\2\2\2uv\5&\24\2vw\7\62\2\2wx\b\b\1\2xy\7\"\2\2yz\5"+
		"\26\f\2z{\b\b\1\2{|\3\2\2\2|}\7$\2\2}\17\3\2\2\2~\177\7#\2\2\177\u0080"+
		"\5\26\f\2\u0080\u0081\7$\2\2\u0081\u0082\b\t\1\2\u0082\21\3\2\2\2\u0083"+
		"\u0084\7 \2\2\u0084\u0085\7\n\2\2\u0085\u0086\7\f\2\2\u0086\u0087\7\62"+
		"\2\2\u0087\u0088\7\"\2\2\u0088\u0089\7\60\2\2\u0089\u008a\7$\2\2\u008a"+
		"\u008b\7\62\2\2\u008b\u008c\7\13\2\2\u008c\u008d\7\60\2\2\u008d\u008e"+
		"\7$\2\2\u008e\u008f\7\62\2\2\u008f\u0090\7\26\2\2\u0090\u0091\7\34\2\2"+
		"\u0091\u0094\b\n\1\2\u0092\u0095\5\b\5\2\u0093\u0095\5\n\6\2\u0094\u0092"+
		"\3\2\2\2\u0094\u0093\3\2\2\2\u0095\u0096\3\2\2\2\u0096\u0097\b\n\1\2\u0097"+
		"\23\3\2\2\2\u0098\u0099\7\62\2\2\u0099\u009b\b\13\1\2\u009a\u009c\7/\2"+
		"\2\u009b\u009a\3\2\2\2\u009b\u009c\3\2\2\2\u009c\u009d\3\2\2\2\u009d\u009e"+
		"\t\2\2\2\u009e\u009f\5\26\f\2\u009f\u00a0\7$\2\2\u00a0\u00a1\b\13\1\2"+
		"\u00a1\25\3\2\2\2\u00a2\u00a3\b\f\1\2\u00a3\u00a4\5\30\r\2\u00a4\u00a5"+
		"\b\f\1\2\u00a5\u00b2\3\2\2\2\u00a6\u00a7\6\f\2\3\u00a7\u00a8\7\37\2\2"+
		"\u00a8\u00a9\5\30\r\2\u00a9\u00aa\b\f\1\2\u00aa\u00b1\3\2\2\2\u00ab\u00ac"+
		"\6\f\3\3\u00ac\u00ad\7\t\2\2\u00ad\u00ae\5\30\r\2\u00ae\u00af\b\f\1\2"+
		"\u00af\u00b1\3\2\2\2\u00b0\u00a6\3\2\2\2\u00b0\u00ab\3\2\2\2\u00b1\u00b4"+
		"\3\2\2\2\u00b2\u00b0\3\2\2\2\u00b2\u00b3\3\2\2\2\u00b3\27\3\2\2\2\u00b4"+
		"\u00b2\3\2\2\2\u00b5\u00b6\b\r\1\2\u00b6\u00b7\5\32\16\2\u00b7\u00b8\b"+
		"\r\1\2\u00b8\u00c5\3\2\2\2\u00b9\u00ba\6\r\4\3\u00ba\u00bb\7\b\2\2\u00bb"+
		"\u00bc\5\32\16\2\u00bc\u00bd\b\r\1\2\u00bd\u00c4\3\2\2\2\u00be\u00bf\6"+
		"\r\5\3\u00bf\u00c0\7,\2\2\u00c0\u00c1\5\32\16\2\u00c1\u00c2\b\r\1\2\u00c2"+
		"\u00c4\3\2\2\2\u00c3\u00b9\3\2\2\2\u00c3\u00be\3\2\2\2\u00c4\u00c7\3\2"+
		"\2\2\u00c5\u00c3\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\31\3\2\2\2\u00c7\u00c5"+
		"\3\2\2\2\u00c8\u00c9\5\34\17\2\u00c9\u00ca\b\16\1\2\u00ca\u00d0\3\2\2"+
		"\2\u00cb\u00cc\7\t\2\2\u00cc\u00cd\5\34\17\2\u00cd\u00ce\b\16\1\2\u00ce"+
		"\u00d0\3\2\2\2\u00cf\u00c8\3\2\2\2\u00cf\u00cb\3\2\2\2\u00d0\33\3\2\2"+
		"\2\u00d1\u00d2\7\n\2\2\u00d2\u00d3\5\26\f\2\u00d3\u00d4\7\34\2\2\u00d4"+
		"\u00d5\b\17\1\2\u00d5\u00e0\3\2\2\2\u00d6\u00d7\5\36\20\2\u00d7\u00d8"+
		"\b\17\1\2\u00d8\u00e0\3\2\2\2\u00d9\u00da\5 \21\2\u00da\u00db\b\17\1\2"+
		"\u00db\u00e0\3\2\2\2\u00dc\u00dd\5\"\22\2\u00dd\u00de\b\17\1\2\u00de\u00e0"+
		"\3\2\2\2\u00df\u00d1\3\2\2\2\u00df\u00d6\3\2\2\2\u00df\u00d9\3\2\2\2\u00df"+
		"\u00dc\3\2\2\2\u00e0\u00e3\3\2\2\2\u00e1\u00e2\7/\2\2\u00e2\u00e4\b\17"+
		"\1\2\u00e3\u00e1\3\2\2\2\u00e3\u00e4\3\2\2\2\u00e4\u00f0\3\2\2\2\u00e5"+
		"\u00e6\5$\23\2\u00e6\u00e7\b\17\1\2\u00e7\u00f0\3\2\2\2\u00e8\u00e9\7"+
		"\62\2\2\u00e9\u00ec\b\17\1\2\u00ea\u00eb\7/\2\2\u00eb\u00ed\b\17\1\2\u00ec"+
		"\u00ea\3\2\2\2\u00ec\u00ed\3\2\2\2\u00ed\u00ee\3\2\2\2\u00ee\u00f0\b\17"+
		"\1\2\u00ef\u00df\3\2\2\2\u00ef\u00e5\3\2\2\2\u00ef\u00e8\3\2\2\2\u00f0"+
		"\35\3\2\2\2\u00f1\u00f2\5&\24\2\u00f2\u00f3\7\n\2\2\u00f3\u00f8\5\26\f"+
		"\2\u00f4\u00f5\7\6\2\2\u00f5\u00f7\5\26\f\2\u00f6\u00f4\3\2\2\2\u00f7"+
		"\u00fa\3\2\2\2\u00f8\u00f6\3\2\2\2\u00f8\u00f9\3\2\2\2\u00f9\u00fb\3\2"+
		"\2\2\u00fa\u00f8\3\2\2\2\u00fb\u00fc\7\34\2\2\u00fc\u00fd\b\20\1\2\u00fd"+
		"\37\3\2\2\2\u00fe\u00ff\7\5\2\2\u00ff\u0100\7\n\2\2\u0100\u0101\5\26\f"+
		"\2\u0101\u0102\7\34\2\2\u0102\u0103\b\21\1\2\u0103\u017f\3\2\2\2\u0104"+
		"\u0105\7%\2\2\u0105\u0106\7\n\2\2\u0106\u0107\5\26\f\2\u0107\u0108\7\34"+
		"\2\2\u0108\u0109\b\21\1\2\u0109\u017f\3\2\2\2\u010a\u010b\7\r\2\2\u010b"+
		"\u010c\7\n\2\2\u010c\u010d\5\26\f\2\u010d\u010e\7\34\2\2\u010e\u010f\b"+
		"\21\1\2\u010f\u017f\3\2\2\2\u0110\u0111\7\21\2\2\u0111\u0112\7\n\2\2\u0112"+
		"\u0113\5\26\f\2\u0113\u0114\7\34\2\2\u0114\u0115\b\21\1\2\u0115\u017f"+
		"\3\2\2\2\u0116\u0117\7-\2\2\u0117\u0118\7\n\2\2\u0118\u0119\5\26\f\2\u0119"+
		"\u011a\7\34\2\2\u011a\u011b\b\21\1\2\u011b\u017f\3\2\2\2\u011c\u011d\7"+
		"*\2\2\u011d\u011e\7\n\2\2\u011e\u011f\5\26\f\2\u011f\u0120\7\6\2\2\u0120"+
		"\u0121\5\26\f\2\u0121\u0122\7\34\2\2\u0122\u0123\b\21\1\2\u0123\u017f"+
		"\3\2\2\2\u0124\u0125\7\7\2\2\u0125\u0126\7\n\2\2\u0126\u0127\5\26\f\2"+
		"\u0127\u0128\7\6\2\2\u0128\u0129\5\26\f\2\u0129\u012a\7\34\2\2\u012a\u012b"+
		"\b\21\1\2\u012b\u017f\3\2\2\2\u012c\u012d\7\30\2\2\u012d\u012e\7\n\2\2"+
		"\u012e\u012f\5\26\f\2\u012f\u0130\7\6\2\2\u0130\u0131\5\26\f\2\u0131\u0132"+
		"\7\34\2\2\u0132\u0133\b\21\1\2\u0133\u017f\3\2\2\2\u0134\u0135\7&\2\2"+
		"\u0135\u0136\7\n\2\2\u0136\u0137\5\26\f\2\u0137\u0138\7\6\2\2\u0138\u0139"+
		"\5\26\f\2\u0139\u013a\7\34\2\2\u013a\u013b\b\21\1\2\u013b\u017f\3\2\2"+
		"\2\u013c\u013d\7\17\2\2\u013d\u013e\7\n\2\2\u013e\u013f\5\26\f\2\u013f"+
		"\u0140\7\6\2\2\u0140\u0141\5\26\f\2\u0141\u0142\7\34\2\2\u0142\u0143\b"+
		"\21\1\2\u0143\u017f\3\2\2\2\u0144\u0145\7\27\2\2\u0145\u0146\7\n\2\2\u0146"+
		"\u0147\5\26\f\2\u0147\u0148\7\6\2\2\u0148\u0149\5\26\f\2\u0149\u014a\7"+
		"\6\2\2\u014a\u014b\5\26\f\2\u014b\u014c\7\34\2\2\u014c\u014d\b\21\1\2"+
		"\u014d\u017f\3\2\2\2\u014e\u014f\7)\2\2\u014f\u0150\7\n\2\2\u0150\u0151"+
		"\5\26\f\2\u0151\u0152\7\6\2\2\u0152\u0153\5\26\f\2\u0153\u0154\7\6\2\2"+
		"\u0154\u0155\5\26\f\2\u0155\u0156\7\34\2\2\u0156\u0157\b\21\1\2\u0157"+
		"\u017f\3\2\2\2\u0158\u0159\7.\2\2\u0159\u015a\7\n\2\2\u015a\u015b\5\26"+
		"\f\2\u015b\u015c\7\6\2\2\u015c\u015d\5\26\f\2\u015d\u015e\7\6\2\2\u015e"+
		"\u015f\5\26\f\2\u015f\u0160\7\34\2\2\u0160\u0161\b\21\1\2\u0161\u017f"+
		"\3\2\2\2\u0162\u0163\7\35\2\2\u0163\u0164\7\n\2\2\u0164\u0165\5\26\f\2"+
		"\u0165\u0166\7\6\2\2\u0166\u0167\5\26\f\2\u0167\u0168\7\34\2\2\u0168\u0169"+
		"\b\21\1\2\u0169\u017f\3\2\2\2\u016a\u016b\7\31\2\2\u016b\u016c\7\n\2\2"+
		"\u016c\u016d\5\26\f\2\u016d\u016e\7\34\2\2\u016e\u016f\b\21\1\2\u016f"+
		"\u017f\3\2\2\2\u0170\u0171\7!\2\2\u0171\u0172\7\n\2\2\u0172\u0173\5\26"+
		"\f\2\u0173\u0174\7\34\2\2\u0174\u0175\b\21\1\2\u0175\u017f\3\2\2\2\u0176"+
		"\u0177\7\22\2\2\u0177\u0178\7\n\2\2\u0178\u0179\5\26\f\2\u0179\u017a\7"+
		"\6\2\2\u017a\u017b\5\26\f\2\u017b\u017c\7\34\2\2\u017c\u017d\b\21\1\2"+
		"\u017d\u017f\3\2\2\2\u017e\u00fe\3\2\2\2\u017e\u0104\3\2\2\2\u017e\u010a"+
		"\3\2\2\2\u017e\u0110\3\2\2\2\u017e\u0116\3\2\2\2\u017e\u011c\3\2\2\2\u017e"+
		"\u0124\3\2\2\2\u017e\u012c\3\2\2\2\u017e\u0134\3\2\2\2\u017e\u013c\3\2"+
		"\2\2\u017e\u0144\3\2\2\2\u017e\u014e\3\2\2\2\u017e\u0158\3\2\2\2\u017e"+
		"\u0162\3\2\2\2\u017e\u016a\3\2\2\2\u017e\u0170\3\2\2\2\u017e\u0176\3\2"+
		"\2\2\u017f!\3\2\2\2\u0180\u0181\7\62\2\2\u0181\u0182\b\22\1\2\u0182\u0184"+
		"\7\n\2\2\u0183\u0185\5\26\f\2\u0184\u0183\3\2\2\2\u0184\u0185\3\2\2\2"+
		"\u0185\u018a\3\2\2\2\u0186\u0187\7\6\2\2\u0187\u0189\5\26\f\2\u0188\u0186"+
		"\3\2\2\2\u0189\u018c\3\2\2\2\u018a\u0188\3\2\2\2\u018a\u018b\3\2\2\2\u018b"+
		"\u018d\3\2\2\2\u018c\u018a\3\2\2\2\u018d\u018e\7\34\2\2\u018e\u018f\b"+
		"\22\1\2\u018f#\3\2\2\2\u0190\u0191\7\60\2\2\u0191\u0195\b\23\1\2\u0192"+
		"\u0193\7\61\2\2\u0193\u0195\b\23\1\2\u0194\u0190\3\2\2\2\u0194\u0192\3"+
		"\2\2\2\u0195%\3\2\2\2\u0196\u0197\7\25\2\2\u0197\u01a3\b\24\1\2\u0198"+
		"\u0199\7\f\2\2\u0199\u01a3\b\24\1\2\u019a\u019b\7\33\2\2\u019b\u01a3\b"+
		"\24\1\2\u019c\u019d\7\4\2\2\u019d\u01a3\b\24\1\2\u019e\u019f\7\36\2\2"+
		"\u019f\u01a3\b\24\1\2\u01a0\u01a1\7\16\2\2\u01a1\u01a3\b\24\1\2\u01a2"+
		"\u0196\3\2\2\2\u01a2\u0198\3\2\2\2\u01a2\u019a\3\2\2\2\u01a2\u019c\3\2"+
		"\2\2\u01a2\u019e\3\2\2\2\u01a2\u01a0\3\2\2\2\u01a3\'\3\2\2\2\34,\61\63"+
		"@HL[hs\u0094\u009b\u00b0\u00b2\u00c3\u00c5\u00cf\u00df\u00e3\u00ec\u00ef"+
		"\u00f8\u017e\u0184\u018a\u0194\u01a2";
	public static final ATN _ATN =
		ATNSimulator.deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
	}
}