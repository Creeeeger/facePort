.class public Lcom/samsung/android/settings/batterywidget/BatteryManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryManagerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private buildIntent(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)Landroid/content/Intent;
    .locals 1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p0, "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    const-string p0, "com.samsung.android.settings.intelligence.ACTION_BATTERY_INFO_REMOVED"

    goto :goto_1

    :pswitch_1
    const-string p0, "com.samsung.android.settings.intelligence.ACTION_BATTERY_INFO_CHANGED"

    goto :goto_1

    :pswitch_2
    const-string p0, "com.samsung.android.settings.intelligence.ACTION_BATTERY_INFO_ADDED"

    .line 85
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "com.samsung.battery.EXTRA_BATTERY_INFO"

    .line 86
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.android.settings.intelligence"

    const-string v0, "com.samsung.android.settings.intelligence.widget.receiver.BatteryWidgetReceiver"

    invoke-direct {p0, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d199d78 -> :sswitch_2
        -0xcae61c4 -> :sswitch_1
        0x85a53e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "BatteryWidget/BatteryManagerReceiver"

    if-eqz v1, :cond_0

    const-string p0, "onReceive() action is empty"

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onReceive() Unsupported action : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.battery.EXTRA_BATTERY_INFO"

    .line 54
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    if-nez p2, :cond_4

    const-string p0, "onReceive() batteryInfo is null"

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/batterywidget/BatteryManagerReceiver;->buildIntent(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)Landroid/content/Intent;

    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d199d78 -> :sswitch_2
        -0xcae61c4 -> :sswitch_1
        0x85a53e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
