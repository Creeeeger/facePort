.class public final Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_LONG_JOBS_APPS:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$1;


# instance fields
.field mJobScheduler:Landroid/app/job/JobScheduler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRequesterPackages:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->FILTER_LONG_JOBS_APPS:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    const-class p2, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    iput-object p2, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    :try_start_0
    const-string p3, "android.permission.RUN_USER_INITIATED_JOBS"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-interface {p2, p3, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->mRequesterPackages:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LongBackgroundTasksBridge"

    const-string p3, "Cannot reach package manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->mRequesterPackages:[Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public final createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->mRequesterPackages:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0, p2, p1}, Landroid/app/job/JobScheduler;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result p0

    new-instance p1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionRequested:Z

    iput-boolean p0, p1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionGranted:Z

    return-object p1
.end method

.method public final loadAllExtraInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p3, p2}, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->createPermissionState(ILjava/lang/String;)Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
