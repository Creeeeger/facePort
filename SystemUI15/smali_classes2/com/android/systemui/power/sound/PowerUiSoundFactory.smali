.class public final Lcom/android/systemui/power/sound/PowerUiSoundFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    new-instance v0, Lcom/android/systemui/power/sound/ChargingSound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/ChargingSound;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/power/sound/UsbDamageCautionSound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/UsbDamageCautionSound;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/power/sound/WaterCautionSound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/WaterCautionSound;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/systemui/power/sound/TemperatureLimitSound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/TemperatureLimitSound;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/systemui/power/sound/BatteryCautionSound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/BatteryCautionSound;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/systemui/power/sound/LowBatterySound;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/LowBatterySound;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method
