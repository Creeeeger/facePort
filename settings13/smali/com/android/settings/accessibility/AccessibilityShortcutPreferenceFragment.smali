.class public abstract Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;


# instance fields
.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mNeedsQSTooltipReshow:Z

.field private mNeedsQSTooltipType:I

.field protected mSavedCheckBoxValue:I

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

.field protected mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$I7HfkfatRuwWwenoopQNoK2Abco(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->lambda$onCreate$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Or6vYsJYbVjD0KUD0NaFY6QFLvY(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->lambda$setDialogTextAreaClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rh8qJebthaxctaoLXny6ZPAB8Ag(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->lambda$onCreateView$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbii-VnwYIbuKO_4Xb2lgWO6tQ8(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method public static synthetic $r8$lambda$ubkvlx096e0PNLqSuvzFmt_2kWc(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->callOnTutorialDialogButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    .line 75
    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    return-void
.end method

.method private callOnTutorialDialogButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
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

.method private synthetic lambda$onCreate$0(Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreferenceData()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreference()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 387
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 443
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 444
    iput v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    return v0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 386
    sget p0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 387
    new-instance p1, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showQuickSettingsTooltipIfNeeded()V
    .locals 5

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getTileComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-nez v1, :cond_1

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->hasValueInSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 503
    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getTileTooltipContent(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 509
    :cond_2
    iget v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    if-nez v2, :cond_3

    .line 510
    sget v2, Lcom/android/settings/R$drawable;->accessibility_qs_tooltip_illustration:I

    goto :goto_0

    .line 511
    :cond_3
    sget v2, Lcom/android/settings/R$drawable;->accessibility_auto_added_qs_tooltip_illustration:I

    .line 512
    :goto_0
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    .line 513
    invoke-virtual {v3, v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->setup(Ljava/lang/CharSequence;I)V

    .line 514
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->showAtTopCenter(Landroid/view/View;)V

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->optInValueToSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    return-void
.end method

.method private updateEditShortcutDialogCheckBox()V
    .locals 3

    .line 427
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v0, v2, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 432
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 436
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 437
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    .line 436
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 439
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    .line 438
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->saveNonEmptyUserShortcutType(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    not-int v0, p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 330
    :goto_0
    iget-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p2, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 331
    iget-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->skipVolumeShortcutDialogTimeoutRestriction(Landroid/content/Context;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    :cond_3
    return-void
.end method

.method protected abstract getComponentName()Landroid/content/ComponentName;
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

.method protected getGeneralCategoryDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    .line 369
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 371
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_screen_option:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getLabelName()Ljava/lang/CharSequence;
.end method

.method protected getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shortcut_preference"

    return-object p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 215
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 289
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

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
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isSettingsEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 399
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    sget v3, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x2

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 410
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_hardware_keyword:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 412
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 417
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_4
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x0

    .line 421
    invoke-static {v2}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 420
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getTileComponentName()Landroid/content/ComponentName;
.end method

.method protected abstract getTileTooltipContent(I)Ljava/lang/CharSequence;
.end method

.method protected getUserShortcutTypes()I
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 299
    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method initGeneralCategory()V
    .locals 2

    .line 345
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "general_categories"

    .line 346
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getGeneralCategoryDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "shortcut_type"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    :cond_0
    const-string v0, "qs_tooltip_reshow"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    :cond_1
    const-string v0, "qs_tooltip_type"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result p1

    if-gtz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->showGeneralCategory()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->initGeneralCategory()V

    .line 118
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "accessibility_button_targets"

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    .line 122
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserShortcutTypes()I

    move-result v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    .line 205
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createAccessibilityTutorialDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0

    .line 210
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

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    .line 198
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setupEditShortcutDialog(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 131
    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ShortcutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference;->setOnClickCallback(Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 139
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 172
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 174
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 162
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreferenceData()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreference()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "shortcut_type"

    .line 181
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const-string v1, "qs_tooltip_reshow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    const-string v1, "qs_tooltip_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 0

    const/4 p1, 0x1

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 241
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 243
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 244
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    const/16 p1, 0x3f0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 248
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    iget-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method setupEditShortcutDialog(Landroid/app/Dialog;)V
    .locals 3

    .line 265
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 267
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 269
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateEditShortcutDialogCheckBox()V

    return-void
.end method

.method protected showGeneralCategory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected showQuickSettingsTooltipIfNeeded(I)V
    .locals 0

    .line 486
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    .line 487
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method protected updateShortcutPreference()V
    .locals 4

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 471
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 474
    invoke-static {v2, v0, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    .line 473
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 457
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_1
    return-void
.end method
