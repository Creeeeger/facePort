.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CubicUtil;
.super Ljava/lang/Object;
.source "CubicUtil.java"


# direct methods
.method public static toInterpolator([F)Landroid/view/animation/Interpolator;
    .locals 4

    const/4 v0, 0x0

    .line 13
    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method
