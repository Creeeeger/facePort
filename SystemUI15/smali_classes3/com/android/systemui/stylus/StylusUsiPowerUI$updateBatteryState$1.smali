.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $batteryState:Landroid/hardware/BatteryState;

.field public final synthetic $deviceId:I

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;ILandroid/hardware/BatteryState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iput p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$deviceId:I

    iput-object p3, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$deviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputDeviceId:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-virtual {v0}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget v1, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-virtual {v0}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->$batteryState:Landroid/hardware/BatteryState;

    invoke-virtual {v1}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$updateBatteryState$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
