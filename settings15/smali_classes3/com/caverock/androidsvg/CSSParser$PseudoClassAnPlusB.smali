.class public final Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# instance fields
.field public final a:I

.field public final b:I

.field public final isFromStart:Z

.field public final isOfType:Z

.field public final nodeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    iput p2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    iput-boolean p3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    iput-boolean p4, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    iput-object p5, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6

    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-ne v5, p2, :cond_2

    move v3, v4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v1

    move v3, v2

    :cond_5
    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz p1, :cond_6

    add-int/2addr v3, v1

    goto :goto_1

    :cond_6
    sub-int v3, v4, v3

    :goto_1
    iget p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    if-nez p1, :cond_8

    if-ne v3, p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :cond_8
    sub-int/2addr v3, p0

    rem-int p0, v3, p1

    if-nez p0, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :cond_a
    :goto_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "last-"

    :goto_0
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nth-%schild(%dn%+d of type <%s>)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nth-%schild(%dn%+d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
