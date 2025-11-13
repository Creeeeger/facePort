.class public abstract Lcom/caverock/androidsvg/SVG$GradientElement;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# instance fields
.field public children:Ljava/util/List;

.field public gradientTransform:Landroid/graphics/Matrix;

.field public gradientUnitsAreUser:Ljava/lang/Boolean;

.field public href:Ljava/lang/String;

.field public spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 2

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Stop;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gradient elements cannot contain "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    return-object p0
.end method
