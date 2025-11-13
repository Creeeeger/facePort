.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiApConfigureHiddenNetworkController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final BUNDLE_KEY_HIDDEN_NETWORK_SWITCH_VALUE:Ljava/lang/String; = "bundle_key_hidden_network_switch_value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "hidden_network"

.field private static final SHARED_HIDESSIDDONOTSHOWAGAIN:Ljava/lang/String; = "HIDE_SSID_DO_NOTSHOW_AGAIN"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "SAMSUNG_HOTSPOT"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureHiddenNetworkController"


# instance fields
.field private hideSsidDoNotShowAgain:Z

.field private mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

.field private mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method public static synthetic $r8$lambda$9KWwIjp55yOnMu7CHE4--Ugwmio(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->lambda$showHideSsidWarningDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StsOcKG8__gRUt7TNTPyoqrnpqM(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->lambda$showHideSsidWarningDialog$0(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->hideSsidDoNotShowAgain:Z

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$showHideSsidWarningDialog$0(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 126
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    const-string p3, "mHideSsidDoNotShowAgain is Checked"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    const-string p3, "SAMSUNG_HOTSPOT"

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mSharedPref:Landroid/content/SharedPreferences;

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p3, 0x1

    const-string v0, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    .line 130
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$showHideSsidWarningDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hidden_network"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isHiddenNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 55
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_hide_ssid:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_hide_ssid_hint:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_hide_ssid_tmo:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
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

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 2

    .line 78
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    const-string v1, "isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isHiddenNetwork()Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->isChecked()Z

    move-result p0

    .line 105
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_hidden_network_switch_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 151
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "bundle_key_hidden_network_switch_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    .line 84
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    :goto_0
    const-string v3, "TETH_012"

    const-string v4, "8019"

    .line 85
    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandTMO()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOperatorBrandNEWCO()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_ap_hidessid_warning:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    .line 91
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->hideSsidDoNotShowAgain:Z

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSsidDoNotShowAgain = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->hideSsidDoNotShowAgain:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->hideSsidDoNotShowAgain:Z

    if-nez p1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->showHideSsidWarningDialog()V

    :cond_4
    :goto_1
    return v2
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public showHideSsidWarningDialog()V
    .locals 6

    .line 113
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->TAG:Ljava/lang/String;

    const-string v1, "Showing Hide SSID warning dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_hide_ssid_warning_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    sget v2, Lcom/android/settings/R$id;->wifi_ap_broadcast_do_not_show:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 119
    sget v2, Lcom/android/settings/R$id;->wifi_ap_do_not_show_again:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 120
    sget v3, Lcom/android/settings/R$id;->wifi_ap_broadcast_network_name_msg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_msg:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_title:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 124
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureHiddenNetworkController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
