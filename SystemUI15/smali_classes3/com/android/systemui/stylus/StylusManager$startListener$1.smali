.class public final Lcom/android/systemui/stylus/StylusManager$startListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-boolean v1, v1, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v1, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iput-boolean v0, v1, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    new-instance v3, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;

    invoke-direct {v3, v1}, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;-><init>(Lcom/android/systemui/stylus/StylusManager;)V

    invoke-static {v2, v3}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    iget-object v6, v1, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v6, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0x4002

    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v9

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v5}, Lcom/android/systemui/stylus/StylusManager;->registerBatteryListener(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/stylus/StylusManager;->onStylusBluetoothConnected(ILjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method
