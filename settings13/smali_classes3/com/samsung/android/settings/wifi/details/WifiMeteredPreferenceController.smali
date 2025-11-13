.class public Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMeteredPref:Landroidx/preference/DropDownPreference;

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public static synthetic $r8$lambda$fj7gchFbjc7IXdet1Ol2Boygd4k(Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "input_method"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 168
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getMeteredOverride()I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 149
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->hideSoftKeyboard(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 156
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 158
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    .line 78
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mMeteredPref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "metered"

    return-object p0
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "WifiMeteredPrefCtrl"

    if-nez p1, :cond_0

    const-string p1, "hideSoftKeyboard focusedView is null force hide"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_0
    const-string v1, "hideSoftKeyboard"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mSAScreenId:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "1043"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metered onPreferenceChange checked : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiMeteredPrefCtrl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setMeteredChoice(I)V

    :cond_1
    const-string p2, "com.android.providers.settings"

    .line 115
    invoke-static {p2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 116
    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    const-string v0, "WifiMeteredPrefCtrl"

    const-string v1, "updateState - entered "

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->disableViewsIfAppropriate()V

    const-string p0, "updateState - exited "

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
