.class public final Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/SineInOut90;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public mCubic:Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/SineInOut90;->mCubic:Landroid/view/animation/Interpolator;

    check-cast p0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
