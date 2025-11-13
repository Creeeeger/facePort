.class public abstract Landroid/app/job/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobScheduler$PendingJobReason;,
        Landroid/app/job/JobScheduler$Result;
    }
.end annotation


# static fields
.field public static final whitelist PENDING_JOB_REASON_APP:I = 0x1

.field public static final whitelist PENDING_JOB_REASON_APP_STANDBY:I = 0x2

.field public static final whitelist PENDING_JOB_REASON_BACKGROUND_RESTRICTION:I = 0x3

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x4

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_CHARGING:I = 0x5

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_CONNECTIVITY:I = 0x6

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_CONTENT_TRIGGER:I = 0x7

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_MINIMUM_LATENCY:I = 0x9

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_PREFETCH:I = 0xa

.field public static final whitelist PENDING_JOB_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0xb

.field public static final whitelist PENDING_JOB_REASON_DEVICE_STATE:I = 0xc

.field public static final whitelist PENDING_JOB_REASON_EXECUTING:I = -0x1

.field public static final whitelist PENDING_JOB_REASON_INVALID_JOB_ID:I = -0x2

.field public static final whitelist PENDING_JOB_REASON_JOB_SCHEDULER_OPTIMIZATION:I = 0xd

.field public static final whitelist PENDING_JOB_REASON_QUOTA:I = 0xe

.field public static final whitelist PENDING_JOB_REASON_UNDEFINED:I = 0x0

.field public static final whitelist PENDING_JOB_REASON_USER:I = 0xf

.field public static final whitelist RESULT_FAILURE:I = 0x0

.field public static final whitelist RESULT_SUCCESS:I = 0x1

.field public static final blacklist THROW_ON_INVALID_DATA_TRANSFER_IMPLEMENTATION:J = 0xf38aa29L


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist canRunUserInitiatedJobs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist cancel(I)V
.end method

.method public abstract whitelist cancelAll()V
.end method

.method public whitelist cancelInAllNamespaces()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
.end method

.method public whitelist forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAllJobSnapshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getAllPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPendingJob(I)Landroid/app/job/JobInfo;
.end method

.method public whitelist getPendingJobReason(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPendingJobsInAllNamespaces()Ljava/util/Map;
    .locals 2
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

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStartedJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist schedule(Landroid/app/job/JobInfo;)I
.end method

.method public abstract whitelist scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 0

    return-void
.end method
