.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(IILandroid/view/ViewGroup;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$2:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$3:F

    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$4:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$5:I

    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$0:I

    iget v7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$1:I

    iget-object v8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$2:Landroid/view/ViewGroup;

    iget v9, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$3:F

    iget v10, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$4:F

    iget v11, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$5:I

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;->f$6:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v12, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v3, 0x0

    int-to-long v5, v0

    move v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->getProgress(FIJJ)F

    move-result v0

    check-cast v12, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    instance-of v1, v8, Landroid/window/SplashScreenView;

    if-eqz v1, :cond_0

    move-object v1, v8

    check-cast v1, Landroid/window/SplashScreenView;

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    :goto_0
    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    sub-float v3, v12, v0

    mul-float/2addr v3, v9

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v1, :cond_2

    sub-float v0, v12, v0

    mul-float/2addr v0, v10

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    int-to-long v3, v11

    int-to-long v5, p0

    move v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->getProgress(FIJJ)F

    move-result p0

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v12, p0

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
