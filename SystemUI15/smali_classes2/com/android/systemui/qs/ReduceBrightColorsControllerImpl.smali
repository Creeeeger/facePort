.class public final Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/ReduceBrightColorsController;


# instance fields
.field public final mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

.field public mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mManager:Landroid/hardware/display/ColorDisplayManager;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Landroid/hardware/display/ColorDisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mManager:Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance p3, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;-><init>(Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    new-instance p3, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$2;-><init>(Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;)V

    iput-object p3, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance p0, Landroid/os/HandlerExecutor;

    invoke-direct {p0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1, p3, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;

    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "reduce_bright_colors_activated"

    iget-object v2, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2, p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/qs/ReduceBrightColorsController$Listener;

    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsControllerImpl$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
