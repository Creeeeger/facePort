.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$5NqmG1NNK3cu5TNbjnHZzluTfQ8(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$notifySupportedDeviceStatesChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lkP9XsfDo1r80vGuiV1BUMRMAH8(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$notifyDeviceStateChanged$1(Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rNeGZVrXgPifV17TWzWudk3z49U(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->lambda$execute$2(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist execute(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$execute$2(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method

.method private synthetic blacklist lambda$notifyDeviceStateChanged$1(Landroid/hardware/devicestate/DeviceState;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifySupportedDeviceStatesChanged$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->onSupportedStatesChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method blacklist notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V

    const-string v1, "notifyDeviceStateChanged"

    invoke-direct {p0, v1, v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifySupportedDeviceStatesChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
