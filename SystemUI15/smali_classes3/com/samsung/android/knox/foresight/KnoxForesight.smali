.class public Lcom/samsung/android/knox/foresight/KnoxForesight;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ERROR_DOWNLOAD:Ljava/lang/String; = "ERROR_DOWNLOAD"

.field public static final ERROR_INSTALL:Ljava/lang/String; = "ERROR_INSTALL"

.field public static final ERROR_VERSION:Ljava/lang/String; = "ERROR_VERSION"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static commandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FS_APP_NAME:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public connection:Landroid/content/ServiceConnection;

.field public eventReceiver:Landroid/content/ComponentName;

.field public fsEventReceiver:Landroid/content/BroadcastReceiver;

.field public fsReturnReceiver:Landroid/content/BroadcastReceiver;

.field public iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

.field public kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

.field public mContext:Landroid/content/Context;

.field public packagemanager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/foresight/KnoxForesight;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxForesight"

    iput-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.foresight"

    iput-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->FS_APP_NAME:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$1;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$2;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$3;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsEventReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

    iput-object p3, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->eventReceiver:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->packagemanager:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.containercore.action.FORESIGHT_RETURN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.containercore.action.FORESIGHT_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.foresight.COMMAND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "eventReceiver"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public notifyCallbacks(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v1, "notifyt : "

    invoke-static {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesightCallback;->notify(Ljava/lang/String;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCommand. received msg is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->packagemanager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->FS_APP_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send command.... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;->SendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.containercore.action.FORESIGHT_RETURN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string p2, "Requested app donwload"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.knox.containercore"

    const-string v0, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    const-string p0, "app_download"

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendCommandAsync(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "sendCommandAsync. msg : "

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / This message will be forwarded to the callback."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendCommandAsync. error"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final sendLastCommand()V
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendLastCommand.... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
