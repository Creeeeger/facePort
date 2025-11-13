.class public final Landroid/view/WindowInsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback;,
        Landroid/view/WindowInsetsAnimation$Bounds;
    }
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private final blacklist mDurationMillis:J

.field private blacklist mFraction:F

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTypeMask:I


# direct methods
.method public constructor whitelist <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    iput-object p2, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public whitelist getAlpha()F
    .locals 1

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return v0
.end method

.method public whitelist getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-wide v0
.end method

.method public whitelist getFraction()F
    .locals 1

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public whitelist getInterpolatedFraction()F
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return v0
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public whitelist getTypeMask()I
    .locals 1

    iget v0, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    return v0
.end method

.method public whitelist setAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return-void
.end method

.method public whitelist setFraction(F)V
    .locals 0

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return-void
.end method
