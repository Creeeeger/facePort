.class public Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBatteryStatusSummary(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->getBatteryStatusSummary(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getBatteryStatusReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private getBatteryStatusSummary(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "plugged"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "status"

    const/4 v3, 0x1

    .line 62
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "hv_charger"

    .line 66
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isVzwModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    sget p1, Lcom/android/settings/R$string;->sec_battery_info_status_adaptive_fast_charging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne v2, v4, :cond_6

    .line 70
    sget v2, Lcom/android/settings/R$string;->battery_info_status_charging:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_5

    const/4 v6, -0x1

    if-ne v0, v5, :cond_1

    .line 74
    sget p1, Lcom/android/settings/R$string;->sec_battery_info_power_wireless:I

    goto :goto_0

    :cond_1
    const-string v7, "misc_event"

    .line 76
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/2addr p1, v5

    if-nez p1, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_4

    if-ne v0, v3, :cond_3

    .line 80
    sget p1, Lcom/android/settings/R$string;->sec_battery_info_power_ac:I

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    .line 82
    sget p1, Lcom/android/settings/R$string;->sec_battery_info_power_usb:I

    goto :goto_0

    :cond_4
    move p1, v6

    :goto_0
    if-eq p1, v6, :cond_5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v2

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    if-ne v2, p1, :cond_7

    .line 91
    sget p1, Lcom/android/settings/R$string;->battery_info_status_discharging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    if-ne v2, v5, :cond_8

    .line 93
    sget p1, Lcom/android/settings/R$string;->battery_info_status_not_charging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x5

    if-ne v2, p1, :cond_9

    .line 95
    sget p1, Lcom/android/settings/R$string;->battery_info_status_full:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_9
    const-string p1, ""

    .line 98
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    sget p1, Lcom/android/settings/R$string;->battery_info_status_unknown:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryStatusPreferenceController;->getBatteryStatusReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
