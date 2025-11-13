.class public final synthetic Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$2:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;->f$2:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    const/4 v1, 0x2

    if-nez p0, :cond_3

    iget p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification$1()V

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->updateState()V

    goto :goto_2

    :cond_3
    iput-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    iget p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-eqz p0, :cond_6

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v2, v2, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    goto :goto_2

    :cond_6
    :goto_1
    if-nez p0, :cond_7

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    :cond_7
    :goto_2
    return-void
.end method
