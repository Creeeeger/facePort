.class public final Landroidx/typoanimation/BaseTypoView$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    instance-of p0, p1, Landroidx/typoanimation/TypoAnimationView;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/typoanimation/TypoAnimationView;

    iget p0, p1, Landroidx/typoanimation/TypoAnimationView;->progress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    instance-of p0, p1, Landroidx/typoanimation/TypoAnimationView;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/typoanimation/TypoAnimationView;

    iput p2, p1, Landroidx/typoanimation/TypoAnimationView;->progress:F

    invoke-virtual {p1}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method
