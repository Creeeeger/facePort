.class public final Lcom/caverock/androidsvg/SVG$TSpan;
.super Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# instance fields
.field public textRoot:Lcom/caverock/androidsvg/SVG$Text;


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "tspan"

    return-object p0
.end method

.method public final getTextRoot()Lcom/caverock/androidsvg/SVG$Text;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-object p0
.end method
