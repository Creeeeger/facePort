.class public final Lcom/caverock/androidsvg/SVG$Image;
.super Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# instance fields
.field public height:Lcom/caverock/androidsvg/SVG$Length;

.field public href:Ljava/lang/String;

.field public transform:Landroid/graphics/Matrix;

.field public width:Lcom/caverock/androidsvg/SVG$Length;

.field public x:Lcom/caverock/androidsvg/SVG$Length;

.field public y:Lcom/caverock/androidsvg/SVG$Length;


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "image"

    return-object p0
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    return-void
.end method
