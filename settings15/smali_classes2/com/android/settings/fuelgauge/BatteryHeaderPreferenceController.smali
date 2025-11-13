.class public Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final BATTERY_MAX_LEVEL:I = 0x64

.field static final KEY_BATTERY_HEADER:Ljava/lang/String; = "battery_header"

.field private static final TAG:Ljava/lang/String; = "BatteryHeaderPreferenceController"


# instance fields
.field private final mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

.field mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

.field mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string p2, "No feature factory configured"

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->batteryStatusFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBatterySettingsFeatureProvider()Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatBatteryPercentageText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "BatteryHeaderPreferenceController"

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->containsIncompatibleChargers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1405b8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1405b1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->pluggedStatus:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    const v1, 0x7f1405e9

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->isFastCharging:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1405f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f141659

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    return-object p0

    :cond_a
    :goto_1
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public quickUpdateHeaderPreference()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    int-to-long v0, v1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateBatteryStatus(Ljava/lang/String;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-object v0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "updateBatteryStatus: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " summary: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryHeaderPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateHeaderByBatteryTips(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    :cond_0
    return-void
.end method

.method public updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    int-to-long v0, p1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
