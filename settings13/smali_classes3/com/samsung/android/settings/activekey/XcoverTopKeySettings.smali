.class public Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "XcoverTopKeySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

.field private mLongPress:Landroidx/preference/SecPreferenceScreen;

.field private mOnLockScreen:Landroidx/preference/SwitchPreference;

.field private mPressType:I

.field private mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mShortPress:Landroidx/preference/SecPreferenceScreen;

.field private mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private dedicatedAppUpdate(Z)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_1
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pttUIUpdate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 242
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 243
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 244
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 245
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 246
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 247
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 250
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 251
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 254
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private updateDescriptionUI()V
    .locals 5

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    move-result v0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dedicated_app_top_switch"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->dedicatedAppUpdate(Z)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 163
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->pttUIUpdate(Z)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 168
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->pttUIUpdate(Z)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitch(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 175
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_main_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    sget v1, Lcom/android/settings/R$string;->xcover_top_key_summary:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_setting_topkey_image_xcoverpro:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePressActionItemsGridViewConcept()V
    .locals 9

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    .line 189
    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v1, :cond_4

    .line 191
    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v5, :cond_2

    .line 196
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 199
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 194
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    sget v5, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 192
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    sget v5, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    const/4 v1, 0x4

    .line 203
    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 205
    iget-object v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 207
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 209
    :cond_6
    iget-boolean v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v0, v3, v2

    invoke-virtual {p0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 213
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 208
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 206
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x1068a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 106
    sget p0, Lcom/android/settings/R$xml;->sec_xcovertopkey_gridview_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->xcover_top_key_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x2

    .line 112
    iput p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    const-string p1, "xcover_top_key_dedicated_app"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 114
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mXcoverTopKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "xcover_top_key_anyscreen_category"

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string p1, "xcover_top_key_anyscreen"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "xcover_top_customize_category_key"

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    const-string p1, "xcover_top_short_press_key"

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "xcover_top_long_press_key"

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    .line 122
    invoke-virtual {p1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "xcover_top_key_setting_category_key"

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "xcover_top_key_on_lockscreen_key"

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    .line 125
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string p0, "XcoverTopKeySettings"

    const-string v0, "onPause() "

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 219
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 220
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xcover_top_key_on_lockscreen_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "xcover_top_key_on_lockscreen"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x1068f

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xcover_top_key_dedicated_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dedicated_app_top_switch"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x1068c

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mPressType:I

    invoke-static {v0, p2, v2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 232
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->pttUIUpdate(Z)V

    .line 233
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->dedicatedAppUpdate(Z)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->updateDescriptionUI()V

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->updatePressActionItemsGridViewConcept()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "xcover_top_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p0, "XcoverTopKeySettings"

    const-string v0, "onResume() "

    .line 140
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string p0, "XcoverTopKeySettings"

    const-string v0, "onStop() "

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
