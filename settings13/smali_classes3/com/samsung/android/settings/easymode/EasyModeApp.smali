.class public Lcom/samsung/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"


# static fields
.field private static ACCESSIBILITY_TOUCH_AND_HOLD:Ljava/lang/String; = "com.samsung.accessibility.TouchAndHold"


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

.field private mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

.field private mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mHighContrastKeyboardValue:Ljava/lang/String;

.field private mImageContainer:Landroid/widget/LinearLayout;

.field private mIsShowNaviKey:Z

.field private mModeState:I

.field private mNoStrokeCategory:Landroidx/preference/SecPreferenceCategory;

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mTouchAndHoldPreference:Landroidx/preference/Preference;

.field private mTouchAndHoldValue:I


# direct methods
.method public static synthetic $r8$lambda$QKbLN1WU4P55y07-CR7VkVmDut8(Lcom/samsung/android/settings/easymode/EasyModeApp;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->lambda$setupTouchAndHoldPreference$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lPjPlQmlG5Zm1xJSZe1NV8xorck(Lcom/samsung/android/settings/easymode/EasyModeApp;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->lambda$setupEasyModeSwitchPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qRdGXRuGKRC2xQE9PHTaSA6B9n0(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xzWmAexmDVun4JctPymaL92nhXs(Lcom/samsung/android/settings/easymode/EasyModeApp;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->lambda$setupHighContrastKeyboardPreference$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEasyModeUtils(Lcom/samsung/android/settings/easymode/EasyModeApp;)Lcom/samsung/android/settings/easymode/EasyModeUtils;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateHighContrastKeyboard(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsShowNaviKey:Z

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private backupCurrentValueToPrev()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 514
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "display_pref"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "prev_touch_and_hold_value"

    .line 515
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "prev_high_contrast_keyboard_value"

    .line 516
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private disableEasyMode()V
    .locals 2

    const/4 v0, 0x1

    .line 359
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    .line 361
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    return-void
.end method

.method private enableEasyMode()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "EasyModeApp"

    const-string v0, "can\'t enable easy mode due to mobile keyboard"

    .line 350
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    .line 355
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayEasyModeDensity(Landroid/content/Context;I)V

    return-void
.end method

.method private getDarkPreviewImageResId()I
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 397
    sget p0, Lcom/android/settings/R$drawable;->sec_easy_img_preview_rtl_dark:I

    return p0

    .line 399
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->sec_easy_img_preview_dark:I

    return p0
.end method

.method private getPreviewImageResId()I
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 405
    sget p0, Lcom/android/settings/R$drawable;->sec_easy_img_preview_rtl:I

    return p0

    .line 407
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->sec_easy_img_preview:I

    return p0
.end method

.method private initPreferences()V
    .locals 2

    .line 229
    sget v0, Lcom/android/settings/R$xml;->sec_easy_mode_app_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "no_stroke"

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mNoStrokeCategory:Landroidx/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight(I)V

    const-string v0, "activity"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsShowNaviKey:Z

    const-string v0, "easy_mode_preview"

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "easy_mode_switch"

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "easy_mode_enable_category"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "touch_hold_preference"

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    const-string v0, "high_contrast_keyboard_preference"

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setupEasyModeSwitchPreference()V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setupTouchAndHoldPreference()V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setupHighContrastKeyboardPreference()V

    return-void
.end method

.method private initViews()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->preview_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->help_instruction:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->preview_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->easy_mode_app_help_3rd_launcher_jpn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->easy_mode_desc_for_3rd_launcher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->easy_mode_desc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getDarkPreviewImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getPreviewImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 277
    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    return-void
.end method

.method private static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFrontDisplay()Z
    .locals 1

    .line 558
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMobileKeyboardCovered()Z
    .locals 7

    .line 383
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 385
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->mobile_keyboard_toast:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v6, Lcom/android/settings/R$string;->easy_mode:I

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    .line 386
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_0
    return v1
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$setupEasyModeSwitchPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x120e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1210

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 426
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyMode Switch is clicked to -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "EasyModeApp"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->announceForEasyModeOperation(Z)V

    .line 430
    iget-object p2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 431
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->showPinWindowToast()V

    return v0

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->backupCurrentValueToPrev()V

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setInitialValueForEasyMode()V

    .line 438
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updatePreferenceState(Z)V

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->enableEasyMode()V

    .line 440
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    .line 441
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    .line 442
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->restorePrevValueToCurrent()V

    .line 445
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updatePreferenceState(Z)V

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->disableEasyMode()V

    .line 447
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    .line 448
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    .line 449
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    :goto_0
    return p2
.end method

.method private synthetic lambda$setupHighContrastKeyboardPreference$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 481
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 482
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "init_easy_mode_enable_values"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 486
    iget-object p2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p2}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isOneHandInputKeyboardEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->showExclusiveDialog()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "1"

    goto :goto_0

    :cond_1
    const-string p2, "0"

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->putValueToKeyboard(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    :goto_1
    return v1
.end method

.method private synthetic lambda$setupTouchAndHoldPreference$2(Landroidx/preference/Preference;)Z
    .locals 3

    .line 463
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 464
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "init_easy_mode_enable_values"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 467
    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->ACCESSIBILITY_TOUCH_AND_HOLD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_not_return_to_parent_fragment"

    const/4 v2, 0x1

    .line 468
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method private restorePrevValueToCurrent()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v1, "display_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "prev_touch_and_hold_value"

    const/16 v2, 0x1f4

    .line 522
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    const-string v1, "prev_high_contrast_keyboard_value"

    const-string v2, "0"

    .line 523
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    return-void
.end method

.method private setEasyMode(I)V
    .locals 7

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 369
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    .line 371
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "easymode_from"

    const-string v4, "settings"

    .line 372
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v5, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setInitialValueForEasyMode()V
    .locals 1

    const/16 v0, 0x5dc

    .line 504
    iput v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    const-string v0, "1"

    .line 505
    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    return-void
.end method

.method private setupEasyModeSwitchPreference()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupHighContrastKeyboardPreference()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadPackageName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/easymode/EasyModeUtils;->sSamsungKeypadHighContrastSettingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private setupTouchAndHoldPreference()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private showExclusiveDialog()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 533
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->accessibility_toggle_high_keyboard_contrast_one_hand_exclusive_title:I

    .line 534
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_toggle_high_keyboard_contrast_one_hand_exclusive_msg:I

    .line 535
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    .line 536
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    .line 542
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    .line 546
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 554
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateEasyModeSwitch(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    iput v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iput v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 288
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeEnableCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHighContrastKeyboard(Z)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHighContrastKeyboard : value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyModeApp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isSamsungKeyboardSetAsDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 324
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->getSummaryFromKeyboard()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->color_yellow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 336
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_toggle_high_keyboard_contrast_preference_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updatePreferenceState(Z)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldValue:I

    const-string v2, "long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHighContrastKeyboardValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->putValueToKeyboard(Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v0, "display_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "init_easy_mode_enable_values"

    .line 297
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateTouchAndHold(Z)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/16 p1, 0x5dc

    goto :goto_0

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x1f4

    const-string v1, "long_press_timeout"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 310
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTouchAndHold : value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyModeApp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTouchAndHoldPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->getTouchAndHoldSummaryByValue(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 573
    sget p0, Lcom/android/settings/R$string;->easy_mode:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 568
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x120c

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isFrontDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreferences()V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initViews()V

    const/4 p1, 0x0

    .line 224
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EasyModeApp"

    const-string v1, "onCreate"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    .line 125
    new-instance v1, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isFrontDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreferences()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initViews()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateEasyModeSwitch(I)V

    if-eqz p1, :cond_1

    const-string v0, "easy_mode_switch_enable"

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 142
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 143
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 343
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 344
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "onPause"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const-string v0, "EasyModeApp"

    const-string v1, "onResume"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isFrontDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v2, "display_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "init_easy_mode_enable_values"

    .line 180
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBeingEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateTouchAndHold(Z)V

    if-nez v4, :cond_2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(Z)V

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_4

    .line 193
    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeSwitch:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    const-string v1, "easy_mode_switch_enable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
