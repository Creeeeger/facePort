.class Landroid/hardware/camera2/extension/CameraExtensionService$1;
.super Ljava/lang/Object;
.source "CameraExtensionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/CameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/CameraExtensionService;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$1;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfputmInitializeCb(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$1;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-static {v0}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$1;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-static {v0}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->finishCameraOperation()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
