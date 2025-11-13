.class public abstract Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field protected mComponentName:Landroid/content/ComponentName;

.field private mDescription:Ljava/lang/CharSequence;

.field protected mDialog:Landroid/app/Dialog;

.field protected mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mHtmlDescription:Ljava/lang/CharSequence;

.field private final mImageGetter:Landroid/text/Html$ImageGetter;

.field private mImageGetterCacheView:Landroid/widget/ImageView;

.field protected mImageUri:Landroid/net/Uri;

.field private mNeedsQSTooltipReshow:Z

.field private mNeedsQSTooltipType:I

.field protected mPackageName:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field private mSavedAccessibilityFloatingMenuEnabled:Z

.field protected mSavedCheckBoxValue:I

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsPreference:Landroidx/preference/Preference;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

.field protected mTopIntroPreference:Lcom/android/settingslib/widget/TopIntroPreference;

.field protected mTopIntroTitle:Ljava/lang/CharSequence;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$BPcSub_xX-o9OO7TZ8E6NEXt56w(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$onCreateView$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJps1CRWYtdck8HIWbNIxJEGJts(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->callOnTutorialDialogButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TkvKvJbpM5BIiKg_luet2RAqDDY(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$new$0(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y_hEmLJgxNdwmJY6EratXHYazKg(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method public static synthetic $r8$lambda$mJ_YV_uRtLioP3eeRKZzSzccITE(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$registerKeysToObserverCallback$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wEIZosGR3b0cSwAYlEf05KcXkaE(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$setDialogTextAreaClickListener$3(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipReshow:Z

    .line 120
    iput v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    .line 133
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    return-void
.end method

.method private callOnTutorialDialogButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 711
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 712
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 443
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 447
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    .line 448
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 449
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 451
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result p0

    if-gt v1, p0, :cond_3

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 459
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 458
    invoke-virtual {p1, v1, v1, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 655
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    goto :goto_0

    .line 657
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software_gesture:I

    goto :goto_0

    .line 660
    :cond_1
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    .line 662
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private hasShortcutType(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initAnimatedImagePreference()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getDisplayBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 471
    new-instance v1, Lcom/android/settingslib/widget/IllustrationPreference;

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/IllustrationPreference;->setImageUri(Landroid/net/Uri;)V

    const/4 v2, 0x0

    .line 474
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 475
    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->setMaxHeight(I)V

    const-string v0, "animated_image"

    .line 476
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initFooterPreference()V
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    sget v2, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    .line 563
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->createFooterPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initGeneralCategory()V
    .locals 2

    .line 504
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "general_categories"

    .line 505
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 506
    sget v1, Lcom/android/settings/R$string;->accessibility_screen_option:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 508
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initHtmlTextPreference()V
    .locals 6

    .line 539
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    .line 546
    new-instance v2, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    .line 547
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "html_description"

    .line 548
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/FooterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 553
    sget v1, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 554
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 555
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 556
    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 557
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private initToggleServiceSwitchPreference()V
    .locals 2

    .line 493
    new-instance v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const-string/jumbo v1, "use_service"

    .line 494
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchPreferenceToggleSwitch()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "R.drawable."

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 138
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreateView$2(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 210
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$registerKeysToObserverCallback$1(Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreferenceData()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreference()V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$3(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 604
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 625
    iget v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 626
    iput v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    return v0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 603
    sget p0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 604
    new-instance p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda6;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showQuickSettingsTooltipIfNeeded()V
    .locals 5

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getTileComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 892
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-nez v1, :cond_1

    .line 893
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 892
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->hasValueInSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 898
    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getTileTooltipContent(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 904
    :cond_2
    iget v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    if-nez v2, :cond_3

    .line 905
    sget v2, Lcom/android/settings/R$drawable;->accessibility_qs_tooltip_illustration:I

    goto :goto_0

    .line 906
    :cond_3
    sget v2, Lcom/android/settings/R$drawable;->accessibility_auto_added_qs_tooltip_illustration:I

    .line 907
    :goto_0
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    .line 908
    invoke-virtual {v3, v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->setup(Ljava/lang/CharSequence;I)V

    .line 909
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->showAtTopCenter(Landroid/view/View;)V

    .line 910
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->optInValueToSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 912
    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipReshow:Z

    return-void
.end method

.method private updateEditShortcutDialogCheckBox()V
    .locals 3

    .line 610
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {v0, v2, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 614
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 618
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 619
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    .line 618
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 620
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 621
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    .line 620
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateEditShortcutDialogIfNeeded()V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 856
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedAccessibilityFloatingMenuEnabled:Z

    .line 857
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->updateSoftwareShortcutInDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePreferenceOrder()V
    .locals 4

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceOrderList()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeDefaultShortcutTargetServiceToSettingsIfNeeded(Landroid/content/Context;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x104030f

    .line 818
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 821
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 826
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 827
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 835
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    .line 834
    invoke-static {p1, p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 836
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 842
    :cond_3
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 844
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 845
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 844
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method protected callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 722
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    return-void

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result p1

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->saveNonEmptyUserShortcutType(I)V

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, p1, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    not-int v0, p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 731
    :goto_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p2, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 732
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 734
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->skipVolumeShortcutDialogTimeoutRestriction(Landroid/content/Context;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 740
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    :cond_3
    return-void
.end method

.method createFooterPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .line 578
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    .line 579
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;-><init>(Landroid/content/Context;)V

    .line 580
    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/FooterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 583
    new-instance p2, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 584
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 585
    invoke-virtual {p2, p3}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 586
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x712

    return p0

    :cond_1
    const/16 p0, 0x714

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getPreferenceOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "top_intro"

    .line 412
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "animated_image"

    .line 413
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "use_service"

    .line 414
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "general_categories"

    .line 415
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "html_description"

    .line 416
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getShortcutFeatureSettingsKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "accessibility_button_targets"

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shortcut_preference"

    return-object p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 344
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 647
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isSettingsEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 675
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 674
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 679
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x2

    .line 681
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_hardware_keyword:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 684
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x4

    .line 688
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 689
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_direct:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 691
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 697
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_5
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x0

    .line 701
    invoke-static {v2}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 700
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract getTileComponentName()Landroid/content/ComponentName;
.end method

.method abstract getTileTooltipContent(I)Ljava/lang/CharSequence;
.end method

.method abstract getUserShortcutTypes()I
.end method

.method protected initSettingsPreference()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    .line 530
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "general_categories"

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 535
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected initShortcutPreference()V
    .locals 3

    .line 513
    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ShortcutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference;->setOnClickCallback(Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "general_categories"

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 520
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method initTopIntroPreference()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    new-instance v0, Lcom/android/settingslib/widget/TopIntroPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/TopIntroPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroPreference:Lcom/android/settingslib/widget/TopIntroPreference;

    const-string/jumbo v1, "top_intro"

    .line 487
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroPreference:Lcom/android/settingslib/widget/TopIntroPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroPreference:Lcom/android/settingslib/widget/TopIntroPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected loadTileLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3

    .line 917
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 918
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 920
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 921
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 922
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 923
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "shortcut_type"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    :cond_0
    const-string v0, "qs_tooltip_reshow"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipReshow:Z

    :cond_1
    const-string v0, "qs_tooltip_type"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    if-gtz p1, :cond_3

    .line 163
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 168
    :cond_3
    new-instance p1, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getUserShortcutTypes()I

    move-result v0

    new-instance v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    .line 284
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createAccessibilityTutorialDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 287
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 289
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    .line 277
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setupEditShortcutDialog(Landroid/app/Dialog;)V

    .line 281
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initTopIntroPreference()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initAnimatedImagePreference()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initToggleServiceSwitchPreference()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initGeneralCategory()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initShortcutPreference()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initSettingsPreference()V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initHtmlTextPreference()V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initFooterPreference()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V

    .line 208
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    .line 317
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 318
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 251
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedAccessibilityFloatingMenuEnabled:Z

    .line 255
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    :cond_0
    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "preference_key"

    .line 382
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v0, "resolve_info"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "title"

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "summary"

    .line 393
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    :cond_2
    const-string v0, "html_description"

    .line 398
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    :cond_3
    const-string v0, "intro"

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroTitle:Ljava/lang/CharSequence;

    :cond_4
    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 239
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 240
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreferenceData()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreference()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateEditShortcutDialogIfNeeded()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "shortcut_type"

    .line 262
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const-string v1, "qs_tooltip_reshow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    iget v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    const-string v1, "qs_tooltip_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 2

    .line 799
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.accessibility.shortcut.action.EDIT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_SHORTCUT_COMPONENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method public onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 782
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 781
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 783
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 793
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 220
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updatePreferenceOrder()V

    .line 226
    iget-boolean p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->writeDefaultShortcutTargetServiceToSettingsIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method protected registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutFeatureSettingsKeys()Ljava/util/List;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 869
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 870
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setupEditShortcutDialog(Landroid/app/Dialog;)V
    .locals 3

    .line 591
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 592
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 593
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 595
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 596
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 597
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 599
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateEditShortcutDialogCheckBox()V

    return-void
.end method

.method protected showQuickSettingsTooltipIfNeeded(I)V
    .locals 0

    .line 881
    iput p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mNeedsQSTooltipType:I

    .line 882
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method protected updateShortcutPreference()V
    .locals 4

    .line 759
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 764
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 763
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v0, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    .line 765
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 749
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 753
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_1
    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 0

    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 4

    .line 338
    sget v0, Lcom/android/settings/R$string;->accessibility_service_primary_switch_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 339
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
