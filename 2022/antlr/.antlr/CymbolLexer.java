// Generated from d:\compilers\compilers-lectures\2022\antlr\Cymbol.g4 by ANTLR 4.9.2

package cymbol;

import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class CymbolLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, SEMI=3, COMMA=4, LPAREN=5, RPAREN=6, LBRACK=7, RBRACK=8, 
		LBRACE=9, RBRACE=10, IF=11, THEN=12, ELSE=13, RETURN=14, INTTYPE=15, DOUBLETYPE=16, 
		VOIDTYPE=17, ADD=18, SUB=19, MUL=20, DIV=21, EQ=22, NE=23, EE=24, WS=25, 
		SL_COMMENT=26, ID=27, INT=28;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "SEMI", "COMMA", "LPAREN", "RPAREN", "LBRACK", "RBRACK", 
			"LBRACE", "RBRACE", "IF", "THEN", "ELSE", "RETURN", "INTTYPE", "DOUBLETYPE", 
			"VOIDTYPE", "ADD", "SUB", "MUL", "DIV", "EQ", "NE", "EE", "WS", "SL_COMMENT", 
			"ID", "INT", "LETTER", "DIGIT"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'!'", "'^'", "';'", "','", "'('", "')'", "'['", "']'", "'{'", 
			"'}'", "'if'", "'then'", "'else'", "'return'", "'int'", "'double'", "'void'", 
			"'+'", "'-'", "'*'", "'/'", "'='", "'!='", "'=='"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "SEMI", "COMMA", "LPAREN", "RPAREN", "LBRACK", "RBRACK", 
			"LBRACE", "RBRACE", "IF", "THEN", "ELSE", "RETURN", "INTTYPE", "DOUBLETYPE", 
			"VOIDTYPE", "ADD", "SUB", "MUL", "DIV", "EQ", "NE", "EE", "WS", "SL_COMMENT", 
			"ID", "INT"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public CymbolLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Cymbol.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\36\u00ac\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\3\2"+
		"\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3"+
		"\13\3\13\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25"+
		"\3\26\3\26\3\27\3\27\3\30\3\30\3\30\3\31\3\31\3\31\3\32\6\32\u0089\n\32"+
		"\r\32\16\32\u008a\3\32\3\32\3\33\3\33\3\33\3\33\7\33\u0093\n\33\f\33\16"+
		"\33\u0096\13\33\3\33\3\33\3\33\3\33\3\34\3\34\3\34\7\34\u009f\n\34\f\34"+
		"\16\34\u00a2\13\34\3\35\6\35\u00a5\n\35\r\35\16\35\u00a6\3\36\3\36\3\37"+
		"\3\37\3\u0094\2 \3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31"+
		"\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63\33\65"+
		"\34\67\359\36;\2=\2\3\2\5\5\2\13\f\17\17\"\"\4\2C\\c|\3\2\62;\2\u00ae"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2"+
		"\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\3?\3"+
		"\2\2\2\5A\3\2\2\2\7C\3\2\2\2\tE\3\2\2\2\13G\3\2\2\2\rI\3\2\2\2\17K\3\2"+
		"\2\2\21M\3\2\2\2\23O\3\2\2\2\25Q\3\2\2\2\27S\3\2\2\2\31V\3\2\2\2\33[\3"+
		"\2\2\2\35`\3\2\2\2\37g\3\2\2\2!k\3\2\2\2#r\3\2\2\2%w\3\2\2\2\'y\3\2\2"+
		"\2){\3\2\2\2+}\3\2\2\2-\177\3\2\2\2/\u0081\3\2\2\2\61\u0084\3\2\2\2\63"+
		"\u0088\3\2\2\2\65\u008e\3\2\2\2\67\u009b\3\2\2\29\u00a4\3\2\2\2;\u00a8"+
		"\3\2\2\2=\u00aa\3\2\2\2?@\7#\2\2@\4\3\2\2\2AB\7`\2\2B\6\3\2\2\2CD\7=\2"+
		"\2D\b\3\2\2\2EF\7.\2\2F\n\3\2\2\2GH\7*\2\2H\f\3\2\2\2IJ\7+\2\2J\16\3\2"+
		"\2\2KL\7]\2\2L\20\3\2\2\2MN\7_\2\2N\22\3\2\2\2OP\7}\2\2P\24\3\2\2\2QR"+
		"\7\177\2\2R\26\3\2\2\2ST\7k\2\2TU\7h\2\2U\30\3\2\2\2VW\7v\2\2WX\7j\2\2"+
		"XY\7g\2\2YZ\7p\2\2Z\32\3\2\2\2[\\\7g\2\2\\]\7n\2\2]^\7u\2\2^_\7g\2\2_"+
		"\34\3\2\2\2`a\7t\2\2ab\7g\2\2bc\7v\2\2cd\7w\2\2de\7t\2\2ef\7p\2\2f\36"+
		"\3\2\2\2gh\7k\2\2hi\7p\2\2ij\7v\2\2j \3\2\2\2kl\7f\2\2lm\7q\2\2mn\7w\2"+
		"\2no\7d\2\2op\7n\2\2pq\7g\2\2q\"\3\2\2\2rs\7x\2\2st\7q\2\2tu\7k\2\2uv"+
		"\7f\2\2v$\3\2\2\2wx\7-\2\2x&\3\2\2\2yz\7/\2\2z(\3\2\2\2{|\7,\2\2|*\3\2"+
		"\2\2}~\7\61\2\2~,\3\2\2\2\177\u0080\7?\2\2\u0080.\3\2\2\2\u0081\u0082"+
		"\7#\2\2\u0082\u0083\7?\2\2\u0083\60\3\2\2\2\u0084\u0085\7?\2\2\u0085\u0086"+
		"\7?\2\2\u0086\62\3\2\2\2\u0087\u0089\t\2\2\2\u0088\u0087\3\2\2\2\u0089"+
		"\u008a\3\2\2\2\u008a\u0088\3\2\2\2\u008a\u008b\3\2\2\2\u008b\u008c\3\2"+
		"\2\2\u008c\u008d\b\32\2\2\u008d\64\3\2\2\2\u008e\u008f\7\61\2\2\u008f"+
		"\u0090\7\61\2\2\u0090\u0094\3\2\2\2\u0091\u0093\13\2\2\2\u0092\u0091\3"+
		"\2\2\2\u0093\u0096\3\2\2\2\u0094\u0095\3\2\2\2\u0094\u0092\3\2\2\2\u0095"+
		"\u0097\3\2\2\2\u0096\u0094\3\2\2\2\u0097\u0098\7\f\2\2\u0098\u0099\3\2"+
		"\2\2\u0099\u009a\b\33\2\2\u009a\66\3\2\2\2\u009b\u00a0\5;\36\2\u009c\u009f"+
		"\5;\36\2\u009d\u009f\5=\37\2\u009e\u009c\3\2\2\2\u009e\u009d\3\2\2\2\u009f"+
		"\u00a2\3\2\2\2\u00a0\u009e\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a18\3\2\2\2"+
		"\u00a2\u00a0\3\2\2\2\u00a3\u00a5\5=\37\2\u00a4\u00a3\3\2\2\2\u00a5\u00a6"+
		"\3\2\2\2\u00a6\u00a4\3\2\2\2\u00a6\u00a7\3\2\2\2\u00a7:\3\2\2\2\u00a8"+
		"\u00a9\t\3\2\2\u00a9<\3\2\2\2\u00aa\u00ab\t\4\2\2\u00ab>\3\2\2\2\b\2\u008a"+
		"\u0094\u009e\u00a0\u00a6\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}