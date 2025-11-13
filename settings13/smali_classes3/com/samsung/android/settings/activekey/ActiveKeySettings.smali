.class public Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeySettings.java"

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

.field private mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private dedicatedAppUpdate(Z)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 355
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

    .line 323
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 324
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 325
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 326
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 327
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 328
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 329
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 332
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 333
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 336
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private updateDescriptionUI()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dedicated_app_xcover_switch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 231
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->dedicatedAppUpdate(Z)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 234
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->pttUIUpdate(Z)V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 239
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->pttUIUpdate(Z)V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitch(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 246
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_main_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    sget v1, Lcom/android/settings/R$string;->xcover_key_summary:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 250
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->active_key_summary:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/R$string;->capture_by_active_key_summary:I

    .line 251
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->active_key_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_setting_xcoverkey_image_xcoverpro:I

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 261
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_setting_activekey_image_tablet:I

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updatePressActionItemsGridViewConcept()V
    .locals 9

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v2, :cond_4

    .line 273
    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-boolean v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v5, :cond_2

    .line 278
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v2, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 281
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    sget v5, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 274
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    sget v5, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setSummary(I)V

    .line 285
    :goto_2
    invoke-static {v0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 287
    iget-object v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 289
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 291
    :cond_6
    iget-boolean v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v2, :cond_7

    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 295
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 290
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 288
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10680

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 119
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 120
    sget p0, Lcom/android/settings/R$xml;->sec_xcoverkey_gridview_settings:I

    return p0

    .line 122
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_activekey_gridview_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->xcover_key_title:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 129
    iput v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->active_key_title:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 132
    iput v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "verizon_dedicated_ptt_switch"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v2, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v3, "com.verizon.pushtotalkplus"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v3, "Push To Talk+"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "dedicated_app_xcover_switch"

    if-eqz p1, :cond_5

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "bmc_ptt_first_check"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "short_press_app"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "long_press_app"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.bell.ptt/com.bell.ptt.StartupActivity"

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, ""

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "quickMessageSender/quickMessageSender"

    invoke-static {p1, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    invoke-static {v0, v0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 154
    invoke-static {v1, v1, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p1

    const-string v4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    if-eqz p1, :cond_3

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v6, "torch/torch"

    invoke-static {p1, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    invoke-static {v1, v0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 159
    invoke-static {v1, v1, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    invoke-static {p1, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    invoke-static {v1, v0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 164
    invoke-static {v1, v1, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 167
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v3, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v4, "com.bell.ptt"

    invoke-static {p1, v3, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v4, "Push-to-Talk"

    invoke-static {p1, v3, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 174
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "tmo_ptt_first_check"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v2, "com.sprint.sdcplus"

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    const-string v2, "TDC"

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    :cond_6
    const-string p1, "xcover_key_dedicated_app"

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 185
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mXcoverKeyDedicatedAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "active_key_anyscreen_category"

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string p1, "active_key_anyscreen"

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "customize_category_key"

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCustomizeCategory:Landroidx/preference/SecPreferenceCategory;

    const-string p1, "short_press_key"

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroidx/preference/SecPreferenceScreen;

    .line 191
    invoke-virtual {p1, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "long_press_key"

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroidx/preference/SecPreferenceScreen;

    .line 193
    invoke-virtual {p1, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string p1, "active_key_setting_category_key"

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mActiveKeySettingCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "active_key_on_lockscreen_key"

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    .line 196
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string p0, "ActiveKeySettings"

    const-string v0, "onPause() "

    .line 217
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 301
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 302
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "active_key_on_lockscreen_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "active_key_on_lockscreen"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x10685

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v1

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xcover_key_dedicated_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dedicated_app_xcover_switch"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x10682

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mPressType:I

    invoke-static {v0, p2, v2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 314
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->dedicatedAppUpdate(Z)V

    .line 315
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->pttUIUpdate(Z)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updateDescriptionUI()V

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItemsGridViewConcept()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p0, "ActiveKeySettings"

    const-string v0, "onResume() "

    .line 211
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 222
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string p0, "ActiveKeySettings"

    const-string v0, "onStop() "

    .line 223
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
