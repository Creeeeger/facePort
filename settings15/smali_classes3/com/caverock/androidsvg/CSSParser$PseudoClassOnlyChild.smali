.class public final Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# instance fields
.field public final isOfType:Z

.field public final nodeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 3

    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, p2

    :cond_4
    if-ne v1, p2, :cond_5

    goto :goto_1

    :cond_5
    move p2, v0

    :goto_1
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "only-of-type <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    const-string v1, ">"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "only-child"

    :goto_0
    return-object p0
.end method
