.class public Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiEapPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;
    }
.end annotation


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mEapAnonymousErrorText:Landroid/widget/TextView;

.field private mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEapInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

.field private mEapMethodPref:Landroidx/preference/DropDownPreference;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsExpanded:Z

.field private mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPhase2Method:I

.field private mPhase2Pref:Landroidx/preference/DropDownPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExpanded(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mIsExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPhase2Method(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 357
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    .line 106
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 107
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string p2, "input_method"

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 109
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mRes:Landroid/content/res/Resources;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    .line 115
    invoke-virtual {p5, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private disableViewsIfAppropriate()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 424
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 426
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private getAnonymousIdentityOverride()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 275
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getEapMethod()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "PEAP"

    .line 287
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEapMethod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEAPPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string p0, "NONE"

    return-object p0
.end method

.method private getPhase2Method()I
    .locals 2

    .line 294
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getPhase2Override()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getPhase2Override()I
    .locals 10

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v0

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhase2Override :: phase2 method :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WifiEAPPreferenceController"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v6

    const-string v8, "PEAP"

    .line 305
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "getPhase2Override :: Unknown phase2 method :"

    if-eqz v8, :cond_3

    if-eq v0, v5, :cond_5

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v8, "TTLS"

    .line 326
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_1

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v4

    .line 349
    :cond_6
    :goto_1
    iput v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    return v1
.end method

.method private hideEapAnonymousPreferences()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updatePhase2Preference(Ljava/lang/String;)V
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getPhase2Method()I

    move-result v0

    const-string v1, "PEAP"

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 214
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mRes:Landroid/content/res/Resources;

    const v1, 0x111012b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v1, Lcom/android/settings/R$array;->sec_wifi_peap_phase2_with_sim_auth_entries:I

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v3, Lcom/android/settings/R$array;->sec_wifi_peap_phase2_with_sim_auth_values:I

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v1, Lcom/android/settings/R$array;->sec_wifi_peap_phase2_entries:I

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v3, Lcom/android/settings/R$array;->sec_wifi_peap_phase2_values:I

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v1, "TTLS"

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v1, Lcom/android/settings/R$array;->wifi_ttls_phase2_entries:I

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_phase2_values:I

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 0

    .line 268
    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 269
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 171
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "eap_anonymous"

    .line 174
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 175
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_eap_anonymous:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->wifi_error_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "eap_inset"

    .line 181
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "eap_phase2"

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    .line 184
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "eap_method"

    .line 187
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mListenerForHidingKeyboard:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "eap_identity"

    .line 189
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "wifi_password"

    .line 190
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method public getEapListener()Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEAPPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eap_phase2"

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 125
    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange KEY_EAP_PHASE2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", eapMethod= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PEAP"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Method:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 138
    :cond_2
    :goto_0
    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->disableViewsIfAppropriate()V

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return v2
.end method

.method public onResume()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getAnonymousIdentityOverride()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updatePreference(Z)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mIsExpanded:Z

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    const-string p1, "PEAP"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TTLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->hideEapAnonymousPreferences()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getAnonymousIdentityOverride()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 247
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 253
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePhase2Preference(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mPhase2Pref:Landroidx/preference/DropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->hideEapAnonymousPreferences()V

    .line 261
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->disableViewsIfAppropriate()V

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    return-void
.end method
