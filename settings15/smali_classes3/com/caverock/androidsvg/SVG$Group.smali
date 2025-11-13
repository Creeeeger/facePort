.class public Lcom/caverock/androidsvg/SVG$Group;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# instance fields
.field public transform:Landroid/graphics/Matrix;


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "group"

    return-object p0
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    return-void
.end method
