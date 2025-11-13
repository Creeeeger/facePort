.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field greylist-max-o mBinder:Landroid/app/job/IJobScheduler;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-direct {p0, v0, v1, p2}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iput-object p3, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist canRunUserInitiatedJobs()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist cancel(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    nop

    return-void
.end method

.method public whitelist cancelAll()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->cancelAllInNamespace(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    nop

    return-void
.end method

.method public whitelist cancelInAllNamespaces()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    nop

    return-void
.end method

.method public whitelist enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .locals 2

    invoke-static {p1}, Landroid/app/JobSchedulerImpl;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "namespace cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "namespace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAllJobSnapshots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAllPendingJobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPendingJobReason(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReason(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPendingJobsInAllNamespaces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getStartedJobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobScheduler;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/job/IJobScheduler;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist schedule(Landroid/app/job/JobInfo;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
