.class public final Lcom/android/systemui/stylus/StylusManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final context:Landroid/content/Context;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final handler:Landroid/os/Handler;

.field public hasStarted:Z

.field public final inputDeviceAddressMap:Ljava/util/Map;

.field public final inputDeviceBtSessionIdMap:Ljava/util/Map;

.field public final inputManager:Landroid/hardware/input/InputManager;

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final stylusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public usiSessionId:Lcom/android/internal/logging/InstanceId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/stylus/StylusManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/stylus/StylusManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputManager;Landroid/bluetooth/BluetoothAdapter;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    iput-object p3, p0, Lcom/android/systemui/stylus/StylusManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p4, p0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/stylus/StylusManager;->executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/stylus/StylusManager;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p7, p0, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->stylusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 p2, 0x2000

    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method

.method public static synthetic getInstanceIdSequence$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager;->stylusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onBatteryStateChanged(IJLandroid/hardware/BatteryState;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;-><init>(Lcom/android/systemui/stylus/StylusManager;Landroid/hardware/BatteryState;IJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInputDeviceAdded(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x4002

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v1, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/stylus/StylusManager;->registerBatteryListener(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onInputDeviceAdded$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceAdded$2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/stylus/StylusManager;->onStylusUsed()V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/stylus/StylusManager;->onStylusBluetoothConnected(ILjava/lang/String;)V

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onInputDeviceAdded$3;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceAdded$3;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x4002

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v1, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/stylus/StylusManager;->onStylusBluetoothConnected(ILjava/lang/String;)V

    new-instance v2, Lcom/android/systemui/stylus/StylusManager$onInputDeviceChanged$2;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceChanged$2;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/stylus/StylusManager;->onStylusBluetoothDisconnected(ILjava/lang/String;)V

    new-instance v0, Lcom/android/systemui/stylus/StylusManager$onInputDeviceChanged$3;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceChanged$3;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1, p0}, Landroid/hardware/input/InputManager;->removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Failed to remove registered battery listener for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/stylus/StylusManager;->onStylusBluetoothDisconnected(ILjava/lang/String;)V

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onInputDeviceRemoved$2;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceRemoved$2;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    new-instance v0, Lcom/android/systemui/stylus/StylusManager$onInputDeviceRemoved$3;

    invoke-direct {v0, p1}, Lcom/android/systemui/stylus/StylusManager$onInputDeviceRemoved$3;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;-><init>(Lcom/android/systemui/stylus/StylusManager;I[BLandroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStylusBluetoothConnected(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/stylus/StylusManager;->trackAndLogBluetoothSession(IZ)V

    iget-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Metadata listener already registered for device. Ignoring."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onStylusBluetoothDisconnected(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/stylus/StylusManager;->trackAndLogBluetoothSession(IZ)V

    iget-object p1, p0, Lcom/android/systemui/stylus/StylusManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1, p0}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Metadata listener does not exist for device. Ignoring."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onStylusUsed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->TRACK_STYLUS_EVER_USED:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusEverUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/input/InputSettings;->setStylusEverUsed(Landroid/content/Context;Z)V

    sget-object v0, Lcom/android/systemui/stylus/StylusManager$onStylusUsed$2;->INSTANCE:Lcom/android/systemui/stylus/StylusManager$onStylusUsed$2;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final registerBatteryListener(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager;->inputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/input/InputManager;->addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Failed to register battery listener for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final trackAndLogBluetoothSession(IZ)V
    .locals 5

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stylus/StylusManager;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/stylus/StylusUiEvent;->BLUETOOTH_STYLUS_CONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/InstanceId;

    invoke-interface {p2, v2, v1, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/stylus/StylusUiEvent;->BLUETOOTH_STYLUS_DISCONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    iget-object v3, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/InstanceId;

    invoke-interface {p2, v2, v1, v0, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
