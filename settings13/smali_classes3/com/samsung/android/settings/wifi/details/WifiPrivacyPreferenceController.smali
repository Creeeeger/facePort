.class public Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiPrivacyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mPrivacyPref:Landroidx/preference/DropDownPreference;

.field private mPrivacyWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPrivacyWarningText:Landroid/widget/TextView;

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "input_method"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const-string p2, "wifi"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private getRandomizationValue()I
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getPrivacy()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 4

    .line 180
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->isAvailable()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "privacy"

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    .line 96
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "privacy_warning_text"

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyWarningPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 100
    sget v0, Lcom/android/settings/R$id;->wifi_error_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyWarningText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 102
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget v0, Lcom/android/settings/R$string;->wifi_privacy_warning_message_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_privacy_warning_message:I

    .line 102
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->getRandomizationValue()I

    move-result p1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 108
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPrivacyPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "privacy"

    return-object p0
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "WifiPrivacyPrefCtrl"

    if-nez p1, :cond_0

    const-string p1, "hideSoftKeyboard focusedView is null force hide"

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_0
    const-string v1, "hideSoftKeyboard"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 118
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 119
    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportRandomMac(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSupportRandomMacForLgu(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Privacy onPreferenceChange checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPrivacyPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mSAScreenId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1030"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 133
    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 141
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->setPrivacy(I)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;->hideSoftKeyboard(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
