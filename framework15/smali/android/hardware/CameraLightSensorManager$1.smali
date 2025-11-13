.class Landroid/hardware/CameraLightSensorManager$1;
.super Ljava/lang/Object;
.source "CameraLightSensorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/CameraLightSensorManager;->initLocked(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/CameraLightSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/CameraLightSensorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Service is connected, cmp name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmEnabledService(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmConnectionFailed(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V

    :cond_0
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
    .locals 4

    const-string v0, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Service is disconnected, cmp name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmProcessBinded(Landroid/hardware/CameraLightSensorManager;Z)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CameraLightSensor_Manager"

    const-string v3, "Unbinding and removing connection for service."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v3}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1, v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemHandler(Landroid/hardware/CameraLightSensorManager;Landroid/hardware/CameraLightSensorManager$ResponseHandler;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
