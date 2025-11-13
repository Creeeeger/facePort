.class public Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field private static DBG:Z

.field private static final SUPPORT_COMCAST_WIFI:Z


# instance fields
.field private final DEFAULT_SCORER_PACKAGE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroidx/preference/Preference;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mScorerList:Landroidx/preference/PreferenceCategory;

.field private final mScreenId:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->DBG:Z

    .line 73
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->SUPPORT_COMCAST_WIFI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WIFI_206"

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScreenId:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->DEFAULT_SCORER_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method private getActiveScorerPackage()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasActiveScoreAtList(Ljava/util/List;Landroid/net/NetworkScorerAppData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;",
            "Landroid/net/NetworkScorerAppData;",
            ")Z"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScorerAppData;

    .line 173
    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initSwitchBar()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    sget-boolean v1, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->SUPPORT_COMCAST_WIFI:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "sem_wifi_network_rating_scorer_enabled"

    .line 182
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 185
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->toggleAllProviders(Z)V

    return-void
.end method

.method private setActiveScorer(Ljava/lang/String;)Z
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, p1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;Z)I

    return v0
.end method

.method private setLastScorer(Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 7

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 289
    new-instance v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 291
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 292
    instance-of v5, v4, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v5, :cond_1

    .line 293
    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 294
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 295
    invoke-virtual {v5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 299
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "sem_wifi_last_network_rating_scorer"

    .line 298
    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v1, v5

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private toggleAllProviders(Z)V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v2}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms"

    if-eqz p1, :cond_5

    if-nez v2, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 248
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->hasActiveScoreAtList(Ljava/util/List;Landroid/net/NetworkScorerAppData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setLastScorer(Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    .line 251
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_4

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 255
    instance-of v4, v2, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v4, :cond_3

    .line 256
    check-cast v2, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 257
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    .line 259
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_1
    const/4 v2, 0x1

    .line 265
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;Z)I

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    .line 268
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sem_wifi_last_network_rating_scorer"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v1

    .line 274
    :goto_2
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setLastScorer(Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;

    :goto_3
    if-ge v3, v0, :cond_8

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 280
    instance-of v2, v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v2, :cond_7

    .line 281
    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 282
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private updateCheckedState(Ljava/lang/String;Z)I
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 227
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 228
    instance-of v5, v4, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v5, :cond_1

    .line 229
    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 230
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 231
    :goto_1
    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 0

    const-string p0, "network_score"

    .line 310
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35d

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 103
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 84
    sget p1, Lcom/android/settings/R$xml;->network_scorer_picker_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    const-string p1, "network_scorer_list"

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    const-string p1, "network_scorer_description"

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mDescription:Landroidx/preference/Preference;

    const/16 p2, 0xc

    .line 88
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mDescription:Landroidx/preference/Preference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->updateCandidates()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 207
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;Z)I

    move-result v0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "sem_wifi_last_network_rating_scorer"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    int-to-long p0, v0

    const-string v0, "WIFI_206"

    const-string v1, "1349"

    .line 216
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 219
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to set active scorer "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkScorerPicker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "WIFI_206"

    .line 111
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->initSwitchBar()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sem_wifi_network_rating_scorer_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_206"

    const-string v2, "1348"

    .line 120
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 122
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->toggleAllProviders(Z)V

    return-void
.end method

.method public updateCandidates()V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 151
    new-instance v5, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScorerAppData;

    .line 153
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Google"

    .line 155
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_network_scorer_google_summary:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    :cond_1
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 160
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    invoke-virtual {v5, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 162
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    .line 166
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->mScorerList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    return-void
.end method
