# Generated from /home/jpedro/Downloads/trabalhoFinalCompiladores/PythonS.g4 by ANTLR 4.10.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .PythonSParser import PythonSParser
else:
    from PythonSParser import PythonSParser

# This class defines a complete generic visitor for a parse tree produced by PythonSParser.

class PythonSVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by PythonSParser#prog.
    def visitProg(self, ctx:PythonSParser.ProgContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#decVars.
    def visitDecVars(self, ctx:PythonSParser.DecVarsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#type.
    def visitType(self, ctx:PythonSParser.TypeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#listaIds.
    def visitListaIds(self, ctx:PythonSParser.ListaIdsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#listaAtribs.
    def visitListaAtribs(self, ctx:PythonSParser.ListaAtribsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#decFunc.
    def visitDecFunc(self, ctx:PythonSParser.DecFuncContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#blocoMain.
    def visitBlocoMain(self, ctx:PythonSParser.BlocoMainContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#stmt.
    def visitStmt(self, ctx:PythonSParser.StmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#breakStmt.
    def visitBreakStmt(self, ctx:PythonSParser.BreakStmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#atrib.
    def visitAtrib(self, ctx:PythonSParser.AtribContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#for.
    def visitFor(self, ctx:PythonSParser.ForContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#doWhile.
    def visitDoWhile(self, ctx:PythonSParser.DoWhileContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#if.
    def visitIf(self, ctx:PythonSParser.IfContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#expr.
    def visitExpr(self, ctx:PythonSParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#term.
    def visitTerm(self, ctx:PythonSParser.TermContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#factor.
    def visitFactor(self, ctx:PythonSParser.FactorContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#range.
    def visitRange(self, ctx:PythonSParser.RangeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#listaParams.
    def visitListaParams(self, ctx:PythonSParser.ListaParamsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#nativeFunc.
    def visitNativeFunc(self, ctx:PythonSParser.NativeFuncContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#print.
    def visitPrint(self, ctx:PythonSParser.PrintContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#printable_expression.
    def visitPrintable_expression(self, ctx:PythonSParser.Printable_expressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by PythonSParser#operacao.
    def visitOperacao(self, ctx:PythonSParser.OperacaoContext):
        return self.visitChildren(ctx)



del PythonSParser