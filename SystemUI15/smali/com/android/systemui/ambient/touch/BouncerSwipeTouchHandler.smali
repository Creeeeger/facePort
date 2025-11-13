.class public final Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchHandler;


# instance fields
.field public final mBouncerZoneScreenPercentage:F

.field public mCapture:Ljava/lang/Boolean;

.field public final mCentralSurfaces:Ljava/util/Optional;

.field public mCurrentExpansion:F

.field public mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

.field public mExpanded:Ljava/lang/Boolean;

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMinBouncerZoneScreenPercentage:F

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mOnGestureListener:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;

.field public final mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

.field public final mScrimManagerCallback:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

.field public mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mValueAnimatorCreator:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVelocityTrackerFactory:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/settings/UserTracker;Lcom/android/wm/shell/animation/FlingAnimationUtils;Lcom/android/wm/shell/animation/FlingAnimationUtils;FFLcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/ambient/touch/scrim/ScrimManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;",
            "Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils;",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils;",
            "FF",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManagerCallback:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    new-instance v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mOnGestureListener:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iput-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p7, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput p10, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mBouncerZoneScreenPercentage:F

    iput p11, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mMinBouncerZoneScreenPercentage:F

    iput-object p8, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iput-object p9, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iput-object p4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mValueAnimatorCreator:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;

    iput-object p5, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTrackerFactory:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;

    iput-object p12, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final getTouchInitiationRegion(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mMinBouncerZoneScreenPercentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v4, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mBouncerZoneScreenPercentage:F

    sub-float/2addr v3, p0

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v4, v1, p0, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_0

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p1, v4, Landroid/graphics/Rect;->top:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v4, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {p2, v4}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final onSessionStart(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTrackerFactory:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$VelocityTrackerFactory;

    check-cast v0, Lcom/android/systemui/ambient/touch/dagger/BouncerSwipeModule$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;

    iget-object v3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManagerCallback:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    new-instance v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    iget-object v1, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mOnGestureListener:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    iget-object p0, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
