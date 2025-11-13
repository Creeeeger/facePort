.class Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;
.super Ljava/lang/Object;
.source "DsmsInfoCache.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p2}, Lcom/samsung/android/dsms/aidl/IDsmsInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
