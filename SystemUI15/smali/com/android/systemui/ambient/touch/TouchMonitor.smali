.class public final Lcom/android/systemui/ambient/touch/TouchMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mActiveTouchSessions:Ljava/util/HashSet;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mCurrentInputSession:Lcom/android/systemui/ambient/touch/InputSession;

.field public final mDisplayHelper:Lcom/android/systemui/util/display/DisplayHelper;

.field public final mDisplayId:I

.field public mExclusionRect:Landroid/graphics/Rect;

.field public mGestureExclusionListener:Lcom/android/systemui/ambient/touch/TouchMonitor$2;

.field public final mHandlers:Ljava/util/Collection;

.field public mInitialized:Z

.field public final mInputEventListener:Lcom/android/systemui/ambient/touch/TouchMonitor$3;

.field public final mInputSessionFactory:Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public final mLifecycleObserver:Lcom/android/systemui/ambient/touch/TouchMonitor$1;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMaxBoundsConsumer:Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;

.field public final mOnGestureListener:Lcom/android/systemui/ambient/touch/TouchMonitor$4;

.field public mStopMonitoringPending:Z

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;Lcom/android/systemui/util/display/DisplayHelper;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Ljava/util/Set;Landroid/view/IWindowManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;",
            "Lcom/android/systemui/util/display/DisplayHelper;",
            "Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/ambient/touch/TouchHandler;",
            ">;",
            "Landroid/view/IWindowManager;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p6, "DreamOverlayTouchMonitor"

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->TAG:Ljava/lang/String;

    const/4 p6, 0x0

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mExclusionRect:Landroid/graphics/Rect;

    new-instance p6, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p6, p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    new-instance p6, Lcom/android/systemui/ambient/touch/TouchMonitor$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$1;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycleObserver:Lcom/android/systemui/ambient/touch/TouchMonitor$1;

    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    new-instance p6, Lcom/android/systemui/ambient/touch/TouchMonitor$3;

    invoke-direct {p6, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$3;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInputEventListener:Lcom/android/systemui/ambient/touch/TouchMonitor$3;

    new-instance p6, Lcom/android/systemui/ambient/touch/TouchMonitor$4;

    invoke-direct {p6, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$4;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V

    iput-object p6, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mOnGestureListener:Lcom/android/systemui/ambient/touch/TouchMonitor$4;

    iput p9, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mDisplayId:I

    iput-object p7, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mHandlers:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInputSessionFactory:Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p5, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mDisplayHelper:Lcom/android/systemui/util/display/DisplayHelper;

    iput-object p8, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mWindowManagerService:Landroid/view/IWindowManager;

    return-void
.end method


# virtual methods
.method public final stopMonitoring(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mExclusionRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/systemui/shared/Flags;->FEATURE_FLAGS:Lcom/android/systemui/shared/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mCurrentInputSession:Lcom/android/systemui/ambient/touch/InputSession;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mStopMonitoringPending:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mCurrentInputSession:Lcom/android/systemui/ambient/touch/InputSession;

    iget-object v1, p1, Lcom/android/systemui/ambient/touch/InputSession;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/ambient/touch/InputSession;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mCurrentInputSession:Lcom/android/systemui/ambient/touch/InputSession;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mStopMonitoringPending:Z

    return-void
.end method
