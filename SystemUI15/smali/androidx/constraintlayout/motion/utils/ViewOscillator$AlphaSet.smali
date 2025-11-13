.class public final Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public final setProperty(FLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
