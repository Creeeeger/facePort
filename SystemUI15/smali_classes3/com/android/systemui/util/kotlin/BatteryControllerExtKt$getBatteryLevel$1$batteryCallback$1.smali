.class public final Lcom/android/systemui/util/kotlin/BatteryControllerExtKt$getBatteryLevel$1$batteryCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt$getBatteryLevel$1$batteryCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt$getBatteryLevel$1$batteryCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onBatteryLevelChanged(IZZIIIZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBatteryLevelChanged(IZZIIIZI)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBatteryUnknownStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onExtremeBatterySaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onIsBatteryDefenderChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onIsIncompatibleChargingChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onReverseChanged(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onWirelessChargingChanged(Z)V
    .locals 0

    return-void
.end method
