.class public final synthetic Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$3;->$tmp0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$3;->$tmp0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "task_manager_show_user_visible_jobs"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "task_manager_inform_job_scheduler_of_pending_app_stop"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v2, "systemui"

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->_showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v3, "systemui"

    const-string/jumbo v5, "task_manager_show_footer_dot"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "show_stop_button_for_user_allowlisted_apps"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object v5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v6, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$3;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    const/16 v12, 0x28

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v5 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->initialized:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method
