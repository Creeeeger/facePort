.class public final Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDismissAreaHeight:I

.field public mEnableDismissDragToEdge:Z

.field public mMagneticFieldRadiusPercent:F

.field public mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field public mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public mTargetSize:I

.field public mTargetView:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

.field public mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

.field public mTaskLeash:Landroid/view/SurfaceControl;

.field public mWindowInsets:Landroid/view/WindowInsets;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip2/phone/PipMotionHelper;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagneticFieldRadiusPercent:F

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final createOrUpdateDismissTarget()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/DismissView;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v6, v0, v4

    const/16 v8, 0x118

    const/4 v9, -0x3

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/16 v7, 0x7e8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string v0, "pip-dismiss-overlay"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object p0
.end method

.method public final onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final showDismissTargetMaybe()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->createOrUpdateDismissTarget()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/DismissView;->show()V

    return-void
.end method

.method public final updateMagneticTargetSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetSize:I

    const v1, 0x7f0703e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagneticFieldRadiusPercent:F

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagneticFieldRadiusPercent:F

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetSize:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3fa00000    # 1.25f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    return-void
.end method
