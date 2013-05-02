// Generated from grammar/GLSL.g4 by ANTLR 4.0
package whitesquare.glslcross.glslcompiler;

import java.util.Stack;

import whitesquare.glslcross.bytecode.Bytecode;

import org.antlr.v4.runtime.tree.*;
import org.antlr.v4.runtime.Token;

public interface GLSLListener extends ParseTreeListener {
	void enterExpression(GLSLParser.ExpressionContext ctx);
	void exitExpression(GLSLParser.ExpressionContext ctx);

	void enterAtom(GLSLParser.AtomContext ctx);
	void exitAtom(GLSLParser.AtomContext ctx);

	void enterForStatement(GLSLParser.ForStatementContext ctx);
	void exitForStatement(GLSLParser.ForStatementContext ctx);

	void enterReturnStatement(GLSLParser.ReturnStatementContext ctx);
	void exitReturnStatement(GLSLParser.ReturnStatementContext ctx);

	void enterBlock(GLSLParser.BlockContext ctx);
	void exitBlock(GLSLParser.BlockContext ctx);

	void enterBuiltInCall(GLSLParser.BuiltInCallContext ctx);
	void exitBuiltInCall(GLSLParser.BuiltInCallContext ctx);

	void enterFactor(GLSLParser.FactorContext ctx);
	void exitFactor(GLSLParser.FactorContext ctx);

	void enterType(GLSLParser.TypeContext ctx);
	void exitType(GLSLParser.TypeContext ctx);

	void enterFunction(GLSLParser.FunctionContext ctx);
	void exitFunction(GLSLParser.FunctionContext ctx);

	void enterStatement(GLSLParser.StatementContext ctx);
	void exitStatement(GLSLParser.StatementContext ctx);

	void enterFunctionCall(GLSLParser.FunctionCallContext ctx);
	void exitFunctionCall(GLSLParser.FunctionCallContext ctx);

	void enterAssignment(GLSLParser.AssignmentContext ctx);
	void exitAssignment(GLSLParser.AssignmentContext ctx);

	void enterParameter(GLSLParser.ParameterContext ctx);
	void exitParameter(GLSLParser.ParameterContext ctx);

	void enterTerm(GLSLParser.TermContext ctx);
	void exitTerm(GLSLParser.TermContext ctx);

	void enterGlsl(GLSLParser.GlslContext ctx);
	void exitGlsl(GLSLParser.GlslContext ctx);

	void enterUniformDeclaration(GLSLParser.UniformDeclarationContext ctx);
	void exitUniformDeclaration(GLSLParser.UniformDeclarationContext ctx);

	void enterConstruction(GLSLParser.ConstructionContext ctx);
	void exitConstruction(GLSLParser.ConstructionContext ctx);

	void enterLiteral(GLSLParser.LiteralContext ctx);
	void exitLiteral(GLSLParser.LiteralContext ctx);

	void enterVarDeclaration(GLSLParser.VarDeclarationContext ctx);
	void exitVarDeclaration(GLSLParser.VarDeclarationContext ctx);
}