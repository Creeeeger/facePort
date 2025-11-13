.class public final synthetic Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$2:F

    iput p4, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$3:F

    iput-object p5, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$4:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$1:I

    iget v4, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$2:F

    iget v5, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$3:F

    iget-object v8, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;->f$4:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    iget-object p0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAnimationController:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    iget p0, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    const/4 v0, 0x1

    const/high16 v1, 0x10e0000

    if-ne p0, v0, :cond_1

    iget-object p0, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->enableWindowMagnification(FFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    iput-object v8, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    iget-object p0, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v2, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setupEnableAnimationSpecs(FFF)V

    :cond_2
    :goto_0
    return-void
.end method
