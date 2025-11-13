.class public final Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
.super Lcom/caverock/androidsvg/SVG$GradientElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public x1:Lcom/caverock/androidsvg/SVG$Length;

.field public x2:Lcom/caverock/androidsvg/SVG$Length;

.field public y1:Lcom/caverock/androidsvg/SVG$Length;

.field public y2:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "linearGradient"

    return-object p0
.end method
