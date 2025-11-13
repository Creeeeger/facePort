.class Landroid/hardware/SystemSensorManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupRuntimeSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v5, v4}, Landroid/hardware/SystemSensorManager;->-$$Nest$mcleanupSensorConnection(Landroid/hardware/SystemSensorManager;Landroid/hardware/Sensor;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmRuntimeSensorListByDeviceByType(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method
