.class public Lcom/android/settings/notification/zen/ZenModeAlarmsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeAlarmsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 40
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAlarmsPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cc3

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAlarmsPreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAlarmsPreferenceController;->getMetricsCategory()I

    move-result p2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const v2, 0x8dd4

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 86
    sget-boolean p2, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPrefChange allowAlarms="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PrefControllerMixin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result p2

    if-eq p2, p1, :cond_2

    .line 90
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4ca

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSoundPolicy(IZ)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 63
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 71
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 67
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
