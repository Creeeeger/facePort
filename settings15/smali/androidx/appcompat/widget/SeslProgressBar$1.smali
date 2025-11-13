.class public final Landroidx/appcompat/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    sget-object p0, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    const p0, 0x102000d

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setVisualProgress(FI)V

    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    return-void
.end method
