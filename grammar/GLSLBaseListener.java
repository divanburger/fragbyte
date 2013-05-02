// Generated from grammar/GLSL.g4 by ANTLR 4.0
package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.bytecode.Bytecode;


import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.ErrorNode;

public class GLSLBaseListener implements GLSLListener {
	@Override public void enterExpression(GLSLParser.ExpressionContext ctx) { }
	@Override public void exitExpression(GLSLParser.ExpressionContext ctx) { }

	@Override public void enterAtom(GLSLParser.AtomContext ctx) { }
	@Override public void exitAtom(GLSLParser.AtomContext ctx) { }

	@Override public void enterForStatement(GLSLParser.ForStatementContext ctx) { }
	@Override public void exitForStatement(GLSLParser.ForStatementContext ctx) { }

	@Override public void enterReturnStatement(GLSLParser.ReturnStatementContext ctx) { }
	@Override public void exitReturnStatement(GLSLParser.ReturnStatementContext ctx) { }

	@Override public void enterBlock(GLSLParser.BlockContext ctx) { }
	@Override public void exitBlock(GLSLParser.BlockContext ctx) { }

	@Override public void enterBuiltInCall(GLSLParser.BuiltInCallContext ctx) { }
	@Override public void exitBuiltInCall(GLSLParser.BuiltInCallContext ctx) { }

	@Override public void enterFactor(GLSLParser.FactorContext ctx) { }
	@Override public void exitFactor(GLSLParser.FactorContext ctx) { }

	@Override public void enterType(GLSLParser.TypeContext ctx) { }
	@Override public void exitType(GLSLParser.TypeContext ctx) { }

	@Override public void enterFunction(GLSLParser.FunctionContext ctx) { }
	@Override public void exitFunction(GLSLParser.FunctionContext ctx) { }

	@Override public void enterStatement(GLSLParser.StatementContext ctx) { }
	@Override public void exitStatement(GLSLParser.StatementContext ctx) { }

	@Override public void enterFunctionCall(GLSLParser.FunctionCallContext ctx) { }
	@Override public void exitFunctionCall(GLSLParser.FunctionCallContext ctx) { }

	@Override public void enterAssignment(GLSLParser.AssignmentContext ctx) { }
	@Override public void exitAssignment(GLSLParser.AssignmentContext ctx) { }

	@Override public void enterParameter(GLSLParser.ParameterContext ctx) { }
	@Override public void exitParameter(GLSLParser.ParameterContext ctx) { }

	@Override public void enterTerm(GLSLParser.TermContext ctx) { }
	@Override public void exitTerm(GLSLParser.TermContext ctx) { }

	@Override public void enterGlsl(GLSLParser.GlslContext ctx) { }
	@Override public void exitGlsl(GLSLParser.GlslContext ctx) { }

	@Override public void enterUniformDeclaration(GLSLParser.UniformDeclarationContext ctx) { }
	@Override public void exitUniformDeclaration(GLSLParser.UniformDeclarationContext ctx) { }

	@Override public void enterConstruction(GLSLParser.ConstructionContext ctx) { }
	@Override public void exitConstruction(GLSLParser.ConstructionContext ctx) { }

	@Override public void enterLiteral(GLSLParser.LiteralContext ctx) { }
	@Override public void exitLiteral(GLSLParser.LiteralContext ctx) { }

	@Override public void enterVarDeclaration(GLSLParser.VarDeclarationContext ctx) { }
	@Override public void exitVarDeclaration(GLSLParser.VarDeclarationContext ctx) { }

	@Override public void enterEveryRule(ParserRuleContext ctx) { }
	@Override public void exitEveryRule(ParserRuleContext ctx) { }
	@Override public void visitTerminal(TerminalNode node) { }
	@Override public void visitErrorNode(ErrorNode node) { }
}