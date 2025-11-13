.class public Lcom/samsung/android/settings/uwb/UwbPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbPreferenceController"


# instance fields
.field private final UWB_TASK_DELAY_TIME:I

.field private mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mInitCompleted:Z

.field private mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

.field private mUwbManager:Landroid/uwb/UwbManager;

.field private mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

.field private mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;


# direct methods
.method public static synthetic $r8$lambda$7vdneLaL2Iztu67LVJAxotqM4I4(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->lambda$setChecked$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DCDnEm6Qb6k5gNQGOvGAcYTE9pE(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->lambda$onStart$2(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XDxguLCdWNQw_c4LwcvopnIPm6A(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->lambda$onStart$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectablePreference(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Lcom/samsung/android/settings/uwb/UwbSelectablePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUwbManager(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Landroid/uwb/UwbManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUwbSettingPolicy(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Lcom/samsung/android/settings/uwb/UwbSettingPolicy;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSummary(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x64

    iput p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->UWB_TASK_DELAY_TIME:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mInitCompleted:Z

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    const-class v0, Landroid/uwb/UwbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    new-instance v0, Lcom/samsung/android/settings/uwb/UwbSettingDb;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/uwb/UwbSettingDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    new-instance v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    new-instance p2, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isMenuUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/UwbSettingDb;->getUwbSettingDb()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {v1}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isMenuUnavailable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {v2, v1}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/uwb/UwbSettingDb;->setUwbSettingDb(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    :goto_0
    const-string v2, "init - setByUser: "

    const-string v3, " uwbState: "

    const-string v4, " isMenuUnavailable: "

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isMenuUnavailable()Z

    move-result v1

    const-string v2, "UwbPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mInitCompleted:Z

    return-void
.end method

.method public static insertUwbSettingLogging(Z)V
    .locals 2

    const/16 v0, 0xbbd

    const/16 v1, 0xe56

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method private isMenuUnavailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean v1, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isServiceReady()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportedModel()Z
    .locals 2

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XXV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SM-F926"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM-G998"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM-G996"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUwbSupportedOnDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isSupportedModel()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private lambda$onStart$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    const/4 v1, 0x5

    if-ne p4, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    :cond_1
    :goto_0
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string p1, "UwbPreferenceController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### uwb state callback - state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " reason: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " restriction: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {p3}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " regulation: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean p3, p3, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    invoke-static {v0, p3, p1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mInitCompleted:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->init()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateView()V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onStart$2(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/uwb/UwbManager;->registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setChecked$0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->setUwbEnabled(Z)V

    return-void
.end method

.method private setUwbEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {v0, p1}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/uwb/UwbSettingDb;->setUwbSettingDb(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+++ UWB State changed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {p0}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UwbPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->insertUwbSettingLogging(Z)V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean v0, v0, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    const-string v1, "UwbPreferenceController"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "summary update: regulation mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f14319b

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "summary update: normal information"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f14319d

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v0, "summary update: no service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f14319c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayPreference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mLabsEnabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v3, v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f14319e

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    const/16 v3, 0x2ee

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    const-string v3, "com.samsung.android.settings.uwb.labs.UwbLabsMainFragment"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iput-object v2, v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mLabsEnabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    new-instance v2, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/uwb/UwbSelectablePreference;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "UwbPreferenceController"

    const-string v1, "getAvailabilityStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isMenuUnavailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    const-string v0, "UwbPreferenceController"

    const-string v1, "isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 7
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onStart"

    const-string v1, "UwbPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0, v2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string/jumbo p0, "setEnabled: Timeout occurred"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "UwbPreferenceController"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mAdapterStateCallback:Landroid/uwb/UwbManager$AdapterStateCallback;

    invoke-virtual {v0, p0}, Landroid/uwb/UwbManager;->unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    const-string/jumbo v0, "setChecked : "

    const-string v1, "UwbPreferenceController"

    invoke-static {v0, v1, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+++ UWB State changed : "

    invoke-static {v0, v1, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateState by preference restriction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " regulation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean v1, v1, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    const-string v2, "UwbPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateSummary()V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean p1, p1, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingDb:Lcom/samsung/android/settings/uwb/UwbSettingDb;

    invoke-virtual {p1}, Lcom/samsung/android/settings/uwb/UwbSettingDb;->getUwbSettingDb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mSelectablePreference:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateView()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateView by callback restriction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRestrictionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " regulation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mUwbSettingPolicy:Lcom/samsung/android/settings/uwb/UwbSettingPolicy;

    iget-boolean v1, v1, Lcom/samsung/android/settings/uwb/UwbSettingPolicy;->isRegulationMode:Z

    const-string v2, "UwbPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isUwbSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;-><init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
