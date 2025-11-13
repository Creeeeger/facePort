.class public Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WifiVerboseLoggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_verbose_logging"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setVerboseLoggingEnabled(Z)V

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setVerboseLoggingEnabled(Z)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setVerboseLoggingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result p1

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
