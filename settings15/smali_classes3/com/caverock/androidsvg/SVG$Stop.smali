.class public final Lcom/caverock/androidsvg/SVG$Stop;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# instance fields
.field public offset:Ljava/lang/Float;


# virtual methods
.method public final addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "stop"

    return-object p0
.end method
