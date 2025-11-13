.class public final Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field public static final DEBUG:Z

.field static final STATE_DISABLED:I = 0x0

.field static final STATE_ENABLED:I = 0x1


# instance fields
.field public mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

.field public mEndAnimationCanceled:Z

.field public final mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

.field public mMagnificationFrameOffsetRatioX:F

.field public mMagnificationFrameOffsetRatioY:F

.field public mOnAnimationEndRunnable:Ljava/lang/Runnable;

.field public final mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

.field public mState:I

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WindowMagnificationAnimationController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const v2, 0x10e0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;-><init>(Landroid/content/Context;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioX:F

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioY:F

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    iput v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final enableWindowMagnification(FFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    iput p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioX:F

    iput p5, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioY:F

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-nez p6, :cond_3

    iget p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-eq p6, p5, :cond_1

    if-ne p6, p4, :cond_2

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioX:F

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioY:F

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateWindowMagnificationInternal(FFFFF)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->updateState()V

    return-void

    :cond_3
    iput-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setupEnableAnimationSpecs(FFF)V

    iget-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p6, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_7

    iget p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-nez p6, :cond_4

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioX:F

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioY:F

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateWindowMagnificationInternal(FFFFF)V

    goto :goto_0

    :cond_4
    if-eq p6, p5, :cond_5

    if-ne p6, p4, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->updateState()V

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-ne p1, p4, :cond_8

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_8
    if-ne p1, p5, :cond_9

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    invoke-virtual {p0, p5}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    :goto_2
    return-void
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    return p0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification$1()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->updateState()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x10e0002

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mScale:F

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget v3, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mScale:F

    invoke-static {v3, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v5

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterX:F

    iget v3, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterX:F

    invoke-static {v3, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v6

    iget v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterY:F

    iget v1, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterY:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v7

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v8, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioX:F

    iget v9, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mMagnificationFrameOffsetRatioY:F

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateWindowMagnificationInternal(FFFFF)V

    return-void
.end method

.method public final sendAnimationCallback(Z)V
    .locals 3

    const-string v0, "WindowMagnificationAnimationController"

    const-string v1, "sendAnimationCallback success = "

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;->onResult(Z)V

    sget-boolean v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAnimationCallback failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    :cond_1
    return-void
.end method

.method public final setState(I)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setState from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    const-string v2, " to "

    const-string v3, "WindowMagnificationAnimationController"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    return-void
.end method

.method public final setupEnableAnimationSpecs(FFF)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    :cond_3
    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b00a3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mScale:F

    :cond_6
    if-ne v3, v4, :cond_7

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterX:F

    :cond_7
    if-ne v3, v4, :cond_8

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget v2, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->mCenterY:F

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_9

    move p1, v0

    :cond_9
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    move p2, v1

    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    move p3, v2

    :cond_b
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    :goto_2
    sget-boolean p1, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SetupEnableAnimationSpecs : mStartSpec = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", endSpec = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowMagnificationAnimationController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public final updateState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    :goto_1
    return-void
.end method
