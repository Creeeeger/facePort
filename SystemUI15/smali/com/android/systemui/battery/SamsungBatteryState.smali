.class public final Lcom/android/systemui/battery/SamsungBatteryState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BATTERY_HEALTH_OVERHEAT_LIMIT:I


# instance fields
.field public final batteryHealth:I

.field public final batteryOnline:I

.field public final batteryStatus:I

.field public final charging:Z

.field public final isDirectPowerMode:Z

.field public final level:I

.field public final miscEvent:I

.field public final pluggedIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/battery/SamsungBatteryState;->BATTERY_HEALTH_OVERHEAT_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>(IZZIIIZI)V

    return-void
.end method

.method public constructor <init>(IZZIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    iput-boolean p2, p0, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    iput p4, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    iput p5, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    iput p6, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    iput-boolean p7, p0, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    iput p8, p0, Lcom/android/systemui/battery/SamsungBatteryState;->miscEvent:I

    return-void
.end method


# virtual methods
.method public final shouldShowChargingIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
