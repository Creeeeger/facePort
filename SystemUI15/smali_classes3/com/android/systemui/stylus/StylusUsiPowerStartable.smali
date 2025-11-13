.class public final Lcom/android/systemui/stylus/StylusUsiPowerStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/stylus/StylusManager$StylusCallback;


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final inputManager:Landroid/hardware/input/InputManager;

.field public final stylusManager:Lcom/android/systemui/stylus/StylusManager;

.field public final stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerStartable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/stylus/StylusUsiPowerStartable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;Landroid/hardware/input/InputManager;Lcom/android/systemui/stylus/StylusUsiPowerUI;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    iput-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    iput-object p3, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iput-object p4, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final onStylusAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateSuppression$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;Z)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V
    .locals 2

    invoke-virtual {p2}, Landroid/hardware/BatteryState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;ILandroid/hardware/BatteryState;)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 8

    sget-object v0, Lcom/android/systemui/flags/Flags;->ENABLE_USI_BATTERY_NOTIFICATIONS:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;

    invoke-direct {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;-><init>([I)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/android/systemui/stylus/StylusUsiPowerStartable$hostDeviceSupportsStylusInput$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stylus/StylusUsiPowerStartable$hostDeviceSupportsStylusInput$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerStartable;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :cond_2
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    const/16 v2, 0x4002

    invoke-virtual {v0, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusUsiPowerUi:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "StylusUsiPowerUI.dismiss"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "StylusUsiPowerUI.click"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.DEVICE_POWER"

    iget-object v6, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->receiver:Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerStartable;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    iget-object v1, v0, Lcom/android/systemui/stylus/StylusManager;->stylusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/stylus/StylusManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$startListener$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/stylus/StylusManager$startListener$1;-><init>(Lcom/android/systemui/stylus/StylusManager;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
