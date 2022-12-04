// Generated from java-escape by ANTLR 4.11.1

package parser.allstar.allstar;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link SParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface SVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link SParser#s}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitS(SParser.SContext ctx);
	/**
	 * Visit a parse tree produced by {@link SParser#a}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitA(SParser.AContext ctx);
}