.class public final Lcom/caverock/androidsvg/SVG$Text;
.super Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# instance fields
.field public transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "text"

    return-object p0
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    return-void
.end method
