.class public abstract Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
