.class public final Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

.field public final mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

.field public final mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

.field public mCurrentMedianLuma:F

.field public mFirstSamplingAfterStart:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mIsWindowGone:Z

.field public mLastMedianLuma:F

.field public final mRegisteredSamplingBounds:Landroid/graphics/Rect;

.field public mRegisteredStopLayer:Landroid/view/SurfaceControl;

.field public final mRemoveDrawRunnable:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

.field public final mSampledView:Landroid/view/View;

.field public mSamplingEnabled:Z

.field public final mSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

.field public mSamplingListenerRegistered:Z

.field public final mSamplingRequestBounds:Landroid/graphics/Rect;

.field public final mUpdateOnDraw:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

.field public mWaitingOnDraw:Z

.field public mWindowHasBlurs:Z

.field public mWindowVisible:Z

.field public mWrappedStopLayer:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 6

    new-instance v5, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    invoke-direct {v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsWindowGone:Z

    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    iput-object p4, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCompositionSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;

    new-instance p4, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    return-object p0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListener:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsDestroyed:Z

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public final start(Landroid/graphics/Rect;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    iget v0, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->navbarTransitionMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-static {v1, v0, v4}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-static {v1, v0, v3}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    move-result v3

    :cond_5
    :goto_0
    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mLastMedianLuma:F

    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public final unregisterSamplingListener()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateSamplingListener()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    if-eqz v0, :cond_9

    :cond_0
    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsWindowGone:Z

    if-nez v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mUpdateOnDraw:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    if-eq v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->unregisterSamplingListener()V

    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->wrap(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWrappedStopLayer:Landroid/view/SurfaceControl;

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->unregisterSamplingListener()V

    :goto_3
    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    iget-boolean p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$10;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;-><init>(Z)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_a
    return-void
.end method

.method public final updateSamplingRect()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mCallback:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$10;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$10;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->-$$Nest$mcalculateSamplingRect(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    :cond_1
    return-void
.end method

.method public wrap(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/SurfaceControl;

    const-string v0, "regionSampling"

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
