.class public Landroid/view/animation/LinearInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "LinearInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .locals 2

    invoke-static {}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLinearInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .locals 0

    return p1
.end method
