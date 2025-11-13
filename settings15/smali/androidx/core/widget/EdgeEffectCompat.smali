.class public abstract Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .locals 1

    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->isEdgeEffectStretchType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .locals 1

    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->isEdgeEffectStretchType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return p1
.end method
