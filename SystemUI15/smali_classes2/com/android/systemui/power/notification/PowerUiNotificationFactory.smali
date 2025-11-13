.class public final Lcom/android/systemui/power/notification/PowerUiNotificationFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/android/systemui/power/notification/OptimizationChargingNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/OptimizationChargingNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/power/notification/BatteryProtectionNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/BatteryProtectionNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/power/notification/AbnormalPadNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/AbnormalPadNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/android/systemui/power/notification/SafeModeNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/SafeModeNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/android/systemui/power/notification/OverheatNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/OverheatNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/android/systemui/power/notification/HealthInterruptionNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/HealthInterruptionNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lcom/android/systemui/power/notification/BatterySwellingNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/BatterySwellingNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lcom/android/systemui/power/notification/IncompatibleChargerNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/IncompatibleChargerNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance p0, Lcom/android/systemui/power/notification/ChargingNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/ChargingNotification;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance p0, Lcom/android/systemui/power/notification/LowBatteryNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/LowBatteryNotification;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
