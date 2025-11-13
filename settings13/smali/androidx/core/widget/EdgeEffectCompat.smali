.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/EdgeEffectCompat$Api21Impl;,
        Landroidx/core/widget/EdgeEffectCompat$Api31Impl;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 70
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->isEdgeEffectStretchType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    new-instance p1, Landroid/widget/EdgeEffect;

    invoke-direct {p1, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edgeEffect"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->isEdgeEffectStretchType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "edgeEffect",
            "deltaDistance",
            "displacement"
        }
    .end annotation

    .line 199
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return-void
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "edgeEffect",
            "deltaDistance",
            "displacement"
        }
    .end annotation

    .line 246
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->isEdgeEffectStretchType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0

    .line 249
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    return p1
.end method
