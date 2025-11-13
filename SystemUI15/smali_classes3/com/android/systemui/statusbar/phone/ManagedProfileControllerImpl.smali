.class public final Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mListening:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mProfiles:Ljava/util/LinkedList;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUserTrackerCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Landroid/os/UserManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTrackerCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening$4(Z)V

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    return-void
.end method

.method public final hasActiveProfile()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isWorkModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reloadManagedProfiles()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening$4(Z)V

    :cond_0
    return-void
.end method

.method public final setListening$4(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTrackerCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserTrackerCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$UserTrackerCallback;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    :goto_0
    return-void
.end method

.method public final setWorkModeEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v4, p1, 0x1

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
