.class public Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SemShareMultiSelectSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final blacklist GALLERY_SETTING_KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final blacklist GALLERY_SETTING_KEY_QUICKSHARE_CATEGORY:Ljava/lang/String; = "QSCategory"

.field private static final blacklist GALLERY_SETTING_KEY_QUICKSHARE_INCLUDE_ORIGINAL:Ljava/lang/String; = "QSIncludeOriginal"

.field private static final blacklist GALLERY_SETTING_KEY_TRANSCODING:Ljava/lang/String; = "transcode"

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareMultiSelectSettingsFragment"


# instance fields
.field blacklist mRemoveLocation:Landroid/preference/SwitchPreference;

.field blacklist mTranscoding:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private blacklist isFreeForm()Z
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 313
    .local v0, "windowMode":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 316
    .end local v0    # "windowMode":I
    :cond_1
    return v1
.end method

.method private blacklist isSplitWindow()Z
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 323
    .local v0, "windowMode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 328
    .end local v0    # "windowMode":I
    :cond_2
    return v1
.end method

.method private blacklist isTablet()Z
    .locals 2

    .line 332
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist semSetRemoveLocationVisibility(Lcom/android/internal/app/ChooserActivity;)V
    .locals 9
    .param p1, "activity"    # Lcom/android/internal/app/ChooserActivity;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 99
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 103
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    .line 104
    iget-boolean v3, p1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, "locationCountWithWrongUri":I
    iget-object v3, p1, Lcom/android/internal/app/ChooserActivity;->mLocationList:Ljava/util/HashMap;

    .line 110
    .local v3, "locationList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    iget-boolean v4, p1, Lcom/android/internal/app/ChooserActivity;->mShouldLocationSettingShown:Z

    if-eqz v4, :cond_6

    .line 111
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 113
    .local v5, "key":I
    iget-object v7, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 114
    iget-object v7, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 115
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    invoke-virtual {p1, v6}, Lcom/android/internal/app/ChooserActivity;->semIsAbleToRemoveLocationFromUri(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 119
    .end local v5    # "key":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 120
    :cond_3
    if-lez v1, :cond_5

    .line 121
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 122
    iget-object v4, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 123
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const v4, 0x1040c62

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const v4, 0x1040c63

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 128
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    iget-boolean v5, p1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    xor-int/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 132
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :goto_1
    return-void

    .line 100
    .end local v1    # "locationCountWithWrongUri":I
    .end local v3    # "locationList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    :cond_7
    :goto_2
    return-void
.end method

.method private blacklist semSetTranscodingVisibility(Lcom/android/internal/app/ChooserActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/internal/app/ChooserActivity;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 138
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 143
    const-string/jumbo v1, "transcode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    .line 144
    iget-boolean v2, p1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    :cond_1
    iget-boolean v1, p1, Lcom/android/internal/app/ChooserActivity;->mShouldTranscodingSettingShown:Z

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->semIsSupportedHdrToSdr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c6e

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c6d

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c71

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c70

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :goto_0
    return-void

    .line 139
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->setHasOptionsMenu(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 63
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 68
    const v2, 0x117007a

    invoke-virtual {p0, v2}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10602df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->semSetCategoryBGColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->semSetRemoveLocationVisibility(Lcom/android/internal/app/ChooserActivity;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->semSetTranscodingVisibility(Lcom/android/internal/app/ChooserActivity;)V

    .line 75
    const-string v3, "QSIncludeOriginal"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 76
    .local v3, "quickShareIncludeOriginal":Landroid/preference/SwitchPreference;
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_INCLUDE_ORIGINAL_OPTION_MENU:Z

    const-string v5, "QSCategory"

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/internal/app/ChooserActivity;->mNeedIncludeOriginalOption:Z

    if-eqz v4, :cond_2

    .line 77
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 78
    .local v4, "qsPrefCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->semIsChinaFlavor(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    const v5, 0x1040c6a

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 81
    :cond_1
    const v5, 0x1040c6b

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 83
    :goto_0
    iget-boolean v5, v0, Lcom/android/internal/app/ChooserActivity;->mIncludeOriginalEnabled:Z

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    const v5, 0x1040c68

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 86
    .end local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 88
    .restart local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    .end local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 95
    :cond_3
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 279
    .local v0, "activityContext":Landroid/app/Activity;
    const v1, 0x109014a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "fragmentView":Landroid/view/View;
    const v2, 0x1020551

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 281
    .local v2, "toolbar":Landroid/widget/Toolbar;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 283
    const v4, 0x1040c78

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10602d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 285
    new-instance v5, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;-><init>(Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 294
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isFreeForm()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isSplitWindow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10808a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10602df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 301
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 302
    .local v4, "actionBar":Landroid/app/ActionBar;
    if-eqz v4, :cond_2

    .line 303
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 305
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->setHasOptionsMenu(Z)V

    .line 306
    return-object v1
.end method

.method public whitelist onDestroyView()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 224
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public whitelist onPause()V
    .locals 5

    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 202
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 204
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 207
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const v2, 0x102055b

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "view1":Landroid/view/View;
    const v3, 0x1020270

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 210
    .local v3, "view2":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 213
    :cond_1
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 217
    .end local v2    # "view1":Landroid/view/View;
    .end local v3    # "view2":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public whitelist onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 231
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 232
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity;

    .line 234
    .local v3, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "transcode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_2
    const-string v6, "QSIncludeOriginal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemShareMultiSelectSettingsFragment"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 242
    :pswitch_0
    iput-boolean v0, v3, Lcom/android/internal/app/ChooserActivity;->mIncludeOriginalEnabled:Z

    .line 243
    if-eqz v0, :cond_5

    .line 244
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 245
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 247
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 250
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 252
    :cond_3
    iput-boolean v1, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    .line 253
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_9

    .line 254
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 260
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    .line 261
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 263
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    .line 264
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 266
    :cond_7
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    .line 268
    goto :goto_3

    .line 239
    :pswitch_1
    iput-boolean v0, v3, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    .line 240
    goto :goto_3

    .line 236
    :pswitch_2
    if-nez v0, :cond_8

    move v2, v1

    :cond_8
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 237
    nop

    .line 272
    :cond_9
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1ec80017 -> :sswitch_2
        0x3ebd0c95 -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onResume()V
    .locals 5

    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 180
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 182
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 183
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 185
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    const v2, 0x102055b

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "view1":Landroid/view/View;
    const v3, 0x1020270

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 188
    .local v3, "view2":Landroid/view/View;
    const/4 v4, 0x4

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 191
    :cond_1
    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 195
    .end local v2    # "view1":Landroid/view/View;
    .end local v3    # "view2":Landroid/view/View;
    :cond_2
    return-void
.end method
