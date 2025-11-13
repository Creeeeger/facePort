.class public final Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $batteryState:Landroid/hardware/BatteryState;

.field public final synthetic $deviceId:I

.field public final synthetic $eventTimeMillis:J

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;Landroid/hardware/BatteryState;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iput-object p2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    iput p3, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$deviceId:I

    iput-wide p4, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$eventTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-boolean v0, v0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v0, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/hardware/BatteryState;->isPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-object v3, v1, Lcom/android/systemui/stylus/StylusManager;->inputDeviceBtSessionIdMap:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez v2, :cond_2

    const-class v2, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    iput-object v8, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, v1, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_FIRST_DETECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    if-eqz v2, :cond_3

    const-class v2, Lcom/android/systemui/stylus/StylusManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/stylus/StylusManager;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_REMOVED:Lcom/android/systemui/stylus/StylusUiEvent;

    iget-object v8, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/stylus/StylusManager;->usiSessionId:Lcom/android/internal/logging/InstanceId;

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    invoke-virtual {v0}, Lcom/android/systemui/stylus/StylusManager;->onStylusUsed()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    new-instance v1, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;

    iget v2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$deviceId:I

    iget-wide v3, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$eventTimeMillis:J

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;-><init>(IJLandroid/hardware/BatteryState;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
