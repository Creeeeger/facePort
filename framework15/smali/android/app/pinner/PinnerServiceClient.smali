.class public Landroid/app/pinner/PinnerServiceClient;
.super Ljava/lang/Object;
.source "PinnerServiceClient.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "PinnerServiceClient"

    sput-object v0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPinnerStats()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pinner"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve PinnerService. A common failure reason is due to a lack of selinux permissions."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/app/pinner/IPinnerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/pinner/IPinnerService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cast PinnerService."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/app/pinner/IPinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to retrieve stats from PinnerService"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
