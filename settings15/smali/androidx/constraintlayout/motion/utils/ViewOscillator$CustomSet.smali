.class public final Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public value:[F


# virtual methods
.method public final setProperty(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result p2

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->value:[F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    return-void
.end method
