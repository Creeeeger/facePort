.class public final synthetic Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IZI)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const v2, 0x7f0a0467

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mCursorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget v1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mFullscreenMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenMagnificationActivated:Z

    if-eq v1, p0, :cond_7

    iput-boolean p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenMagnificationActivated:Z

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0113

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mScvhSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    iput-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v2, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    const/4 v7, -0x2

    const/16 v5, 0x7f0

    const/16 v6, 0x28

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    invoke-virtual {p0, v1, v8}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mRotationWatcher:Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "FullscreenMagnificationController"

    const-string v2, "Failed to register rotation watcher"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V

    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mDisplayId:I

    iget-object v2, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mFullscreenBorder:Landroid/view/View;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->sEmptyRegion:Landroid/graphics/Region;

    invoke-interface {p0, v0}, Landroid/view/AttachedSurfaceControl;->setTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowBorderRunnable:Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
