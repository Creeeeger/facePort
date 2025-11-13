.class public Landroid/app/wearable/WearableSensingManager;
.super Ljava/lang/Object;
.source "WearableSensingManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/WearableSensingManager$StatusCode;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_WEARABLE_SENSING_SERVICE_FILE_READ:J = 0x13b6193aL

.field public static final blacklist EXTRA_WEARABLE_SENSING_DATA_REQUEST:Ljava/lang/String; = "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_CHANNEL_ERROR:I = 0x7

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_UNSUPPORTED_DATA_TYPE:I = 0x8

.field public static final whitelist STATUS_UNSUPPORTED_OPERATION:I = 0x6

.field public static final whitelist STATUS_WEARABLE_UNAVAILABLE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/wearable/IWearableSensingManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/wearable/WearableSensingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/wearable/WearableSensingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/wearable/IWearableSensingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    return-void
.end method

.method private static blacklist createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/RemoteCallback;"
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private blacklist createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
    .locals 1

    new-instance v0, Landroid/app/wearable/WearableSensingManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/wearable/WearableSensingManager$1;-><init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static whitelist getDataRequestFromIntent(Landroid/content/Intent;)Landroid/app/wearable/WearableSensingDataRequest;
    .locals 2

    const-string v0, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wearable/WearableSensingDataRequest;

    return-object v0
.end method

.method static synthetic blacklist lambda$createStatusCallback$0(Ljava/util/function/Consumer;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStatusCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public whitelist provideConnection(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist provideDataStream(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x13b6193a

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v2, p1, v1, v0}, Landroid/app/wearable/IWearableSensingManager;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist registerDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startHotwordRecognition(Landroid/content/ComponentName;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p2, p3}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/wearable/IWearableSensingManager;->startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopHotwordRecognition(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-static {p1, p2}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/wearable/IWearableSensingManager;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterDataRequestObserver(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3, p4}, Landroid/app/wearable/WearableSensingManager;->createStatusCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/RemoteCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager;->mService:Landroid/app/wearable/IWearableSensingManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/wearable/IWearableSensingManager;->unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
