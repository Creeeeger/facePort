.class Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;
.super Landroid/hardware/input/IInputDeviceBatteryListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalInputDeviceBatteryListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-object p1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v5, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
