.class public final Lsamsung/uwb/UwbAdapter;
.super Ljava/lang/Object;
.source "UwbAdapter.java"


# static fields
.field private static sIsInitialized:Z = false

.field private static sUwbAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lsamsung/uwb/UwbAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sUwbService:Lsamsung/uwb/IUwbAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getServiceInterface()Lsamsung/uwb/IUwbAdapter;
    .locals 1

    const-string v0, "samsunguwb"

    .line 490
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_0
    invoke-static {v0}, Lsamsung/uwb/IUwbAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getUwbAdapter(Landroid/content/Context;)Lsamsung/uwb/UwbAdapter;
    .locals 3

    const-class v0, Lsamsung/uwb/UwbAdapter;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 519
    monitor-exit v0

    return-object p0

    .line 522
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x43b

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Need ACCESS FINE permission"

    .line 523
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "Need BACKGROUND permission"

    .line 524
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_1
    sget-boolean v1, Lsamsung/uwb/UwbAdapter;->sIsInitialized:Z

    if-nez v1, :cond_3

    .line 528
    invoke-static {}, Lsamsung/uwb/UwbAdapter;->getServiceInterface()Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    sput-object v1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 534
    sput-boolean v1, Lsamsung/uwb/UwbAdapter;->sIsInitialized:Z

    goto :goto_0

    :cond_2
    const-string p0, "UWB"

    const-string v1, "could not retrieve UWB service"

    .line 530
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 537
    :cond_3
    :goto_0
    sget-object v1, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsamsung/uwb/UwbAdapter;

    if-nez v1, :cond_4

    .line 539
    new-instance v1, Lsamsung/uwb/UwbAdapter;

    invoke-direct {v1, p0}, Lsamsung/uwb/UwbAdapter;-><init>(Landroid/content/Context;)V

    .line 540
    sget-object v2, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "UWB"

    const-string v0, "UWB service dead - attempting to recover"

    .line 498
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    invoke-static {}, Lsamsung/uwb/UwbAdapter;->getServiceInterface()Lsamsung/uwb/IUwbAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "could not retrieve UWB service during service recovery"

    .line 501
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 504
    :cond_0
    sput-object p1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    return-void
.end method

.method public checkRestrict()I
    .locals 1

    .line 715
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->checkRestrict()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 p0, -0x1

    return p0
.end method
