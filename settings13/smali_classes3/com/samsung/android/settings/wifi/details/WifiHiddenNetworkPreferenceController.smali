.class public Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiHiddenNetworkPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mHiddenSsid:Z

.field private mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mHiddenWarningText:Landroid/widget/TextView;

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    .line 60
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 143
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateSummary(Z)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_hidden_network_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_3

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 130
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    goto :goto_0

    :cond_0
    const-string v0, "hidden"

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 71
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    const-string v0, "hidden_warning_text"

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 76
    sget v0, Lcom/android/settings/R$id;->wifi_error_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenWarningText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 77
    sget v0, Lcom/android/settings/R$string;->wifi_hidden_network_warning_message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updateSummary(Z)V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hidden"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange checked : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiHiddenNetworkPreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->disableViewsIfAppropriate()V

    .line 107
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updateSummary(Z)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 109
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "1044"

    .line 108
    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updatePreference()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
