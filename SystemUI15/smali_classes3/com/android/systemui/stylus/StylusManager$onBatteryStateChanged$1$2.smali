.class final Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $batteryState:Landroid/hardware/BatteryState;

.field final synthetic $deviceId:I

.field final synthetic $eventTimeMillis:J


# direct methods
.method public constructor <init>(IJLandroid/hardware/BatteryState;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$deviceId:I

    iput-wide p2, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$eventTimeMillis:J

    iput-object p4, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$batteryState:Landroid/hardware/BatteryState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/stylus/StylusManager$StylusCallback;

    iget v0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$deviceId:I

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$onBatteryStateChanged$1$2;->$batteryState:Landroid/hardware/BatteryState;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/stylus/StylusManager$StylusCallback;->onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
