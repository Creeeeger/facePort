.class public Lcom/samsung/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAm:Landroid/app/ActivityManager;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDesktopModeListener:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

.field public mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

.field public mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

.field public mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field public mHelpTextView:Landroid/widget/TextView;

.field public mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field public mHighContrastKeyboardValue:Ljava/lang/String;

.field public mImageContainer:Landroid/widget/LinearLayout;

.field public mModeState:I

.field public mPreviewImageView:Landroid/widget/ImageView;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mTouchAndHoldPreference:Landroidx/preference/Preference;

.field public mTouchAndHoldValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f140d8e

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x120c

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final initPreferences$8()V
    .locals 3

    const v0, 0x7f17018f

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "no_stroke"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight()V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    const-string v0, "easy_mode_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "easy_mode_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "easy_mode_enable_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "touch_hold_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    const-string v0, "high_contrast_keyboard_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public final initViews$2()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0b91

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a073d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0b90

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140d91

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140d94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/16 v2, 0x20

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0808c2

    goto :goto_2

    :cond_2
    const v1, 0x7f0808c0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0808c1

    goto :goto_2

    :cond_4
    const v1, 0x7f0808bf

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0808c6

    goto :goto_2

    :cond_6
    const v1, 0x7f0808c4

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0808c5

    goto :goto_2

    :cond_8
    const v1, 0x7f0808c3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreferences$8()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initViews$2()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setLinkedDataView(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "EasyModeApp"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    const-string v3, "com.sec.android.inputmethod"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.honeyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v2, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    const-string v1, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    sput-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    const-string v1, ".settings.styleandlayout.highcontrast.HighContrastThemeSettings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v3, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    const-string v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    sput-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    const-string v1, ".implement.setting.HighContrastThemeSettings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    :goto_0
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadInputMethodId:Ljava/lang/String;

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreferences$8()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initViews$2()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "easy_mode_switch"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    return-object p1
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeListener:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 7

    const-string v0, "EasyModeApp"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setLinkedDataView(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "display_pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "init_easy_mode_enable_values"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isBeingEnabled = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeListener:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    const-string v1, "easy_mode_switch_enable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setEasyMode(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setLinkedDataView(Z)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_9

    :cond_0
    if-nez v0, :cond_1

    new-instance p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "fromRelativeLink"

    const-string/jumbo v2, "top_level_display"

    const/4 v3, 0x0

    const/16 v4, 0x120c

    if-nez p1, :cond_2

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.FontPreview"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v6, 0x7f142432

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput v4, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v2, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.ScreenTimeout"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f142015

    iput v1, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v5, v5, 0x1

    :cond_4
    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "com.samsung.android.app.telephonyui.action.OPEN_CALL_SETTINGS"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "root_key"

    const-string v7, "ANSWERING_AND_ENDING_CALLS"

    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v6, "is_exclude_hierarchy"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x7f140d99

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput v4, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "top_level_homescreen"

    iput-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140a23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v2, "StartEdit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f140d9a

    iput v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v5, v5, 0x1

    :cond_8
    if-lez v5, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final updateEasyModeSwitch(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateHighContrastKeyboard(ZZ)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "updateHighContrastKeyboard : value = "

    const-string v1, "EasyModeApp"

    invoke-static {v0, v1, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v1, v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadInputMethodId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NAME"

    const-string v1, "high_contrast_theme_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadProvider:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VALUE"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v8, p1

    goto :goto_1

    :catch_0
    move-object v9, v8

    move-object v8, p1

    move-object p1, v9

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-object p1, v8

    goto :goto_2

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, p1

    :cond_5
    :goto_3
    if-nez v8, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f1409ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final updatePreferenceState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    iget v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->putValueToKeyboard(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "init_easy_mode_enable_values"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final updateTouchAndHold(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/16 v0, 0x1f4

    const/16 v1, 0x5dc

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "long_press_timeout"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const-string/jumbo v3, "updateTouchAndHold : value = "

    const-string v4, "EasyModeApp"

    invoke-static {p1, v3, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    invoke-static {v3, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    const-string p0, ""

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tap_duration_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    const/16 v7, 0x3e8

    if-ne v4, v2, :cond_4

    if-ne p1, v7, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    const p1, 0x7f141653

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f141652

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f030109

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x12c

    if-eq p1, v8, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v7, :cond_6

    if-eq p1, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.2f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f142f45

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x3

    aget-object p0, v4, p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x2

    aget-object p0, v4, p0

    goto :goto_1

    :cond_7
    aget-object p0, v4, v2

    goto :goto_1

    :cond_8
    aget-object p0, v4, v6

    :goto_1
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
