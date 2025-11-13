.class public final Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_ALLOW_BACKGROUND_USAGE:Ljava/lang/String; = "allow_background_usage"


# instance fields
.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "allow_background_usage"

    return-object p0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p0, "allow_background_usage"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isDisabledForOptimizeModeOnly()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    instance-of v1, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v1, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {v4, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_1

    :cond_1
    instance-of v4, p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AllowBackgroundPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result p0

    if-ne p0, v3, :cond_3

    move v2, v3

    :cond_3
    move-object p0, p1

    check-cast p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_4

    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void
.end method
