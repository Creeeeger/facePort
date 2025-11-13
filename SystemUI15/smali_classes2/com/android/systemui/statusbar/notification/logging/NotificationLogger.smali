.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationRowStatsLogger;


# instance fields
.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

.field public final mDozingLock:Ljava/lang/Object;

.field public final mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

.field public final mHandler:Landroid/os/Handler;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public mLastVisibilityReportUptimeMs:J

.field public mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public mLockscreen:Ljava/lang/Boolean;

.field public mLogging:Z

.field public final mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

.field public final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

.field public mVisibilityReporter:Ljava/lang/Runnable;

.field public final mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    const-string/jumbo p1, "statusbar"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-interface {p6, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method

.method public static cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .locals 1

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    :goto_0
    return-object p0

    :cond_7
    :goto_1
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0
.end method

.method public static recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method


# virtual methods
.method public getVisibilityReporter()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChildLocationsChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onNotificationExpansionChanged(Ljava/lang/String;ZIZ)V
    .locals 0

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onExpansionChanged(Ljava/lang/String;ZZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setVisibilityReporter(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iget-object v0, v0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->isLockscreenOrShadeVisibleAndInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method
