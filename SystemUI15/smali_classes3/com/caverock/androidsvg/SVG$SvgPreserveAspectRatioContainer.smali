.class public abstract Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method
