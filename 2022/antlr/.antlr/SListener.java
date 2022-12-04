// Generated from d:\compilers\compilers-lectures\2022\antlr\S.g4 by ANTLR 4.10.1

package parser.allstar.allstar;

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link SParser}.
 */
public interface SListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link SParser#s}.
	 * @param ctx the parse tree
	 */
	void enterS(SParser.SContext ctx);
	/**
	 * Exit a parse tree produced by {@link SParser#s}.
	 * @param ctx the parse tree
	 */
	void exitS(SParser.SContext ctx);
	/**
	 * Enter a parse tree produced by {@link SParser#a}.
	 * @param ctx the parse tree
	 */
	void enterA(SParser.AContext ctx);
	/**
	 * Exit a parse tree produced by {@link SParser#a}.
	 * @param ctx the parse tree
	 */
	void exitA(SParser.AContext ctx);
}