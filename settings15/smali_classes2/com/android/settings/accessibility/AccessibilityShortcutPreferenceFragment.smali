.class public abstract Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;


# instance fields
.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public mDirectTypeCheckBox:Landroid/widget/CheckBox;

.field public mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field public mNeedsQSTooltipReshow:Z

.field public mNeedsQSTooltipType:I

.field public mPackageNameResourceId:I

.field public mQuickSettingsTypeCheckBox:Landroid/widget/CheckBox;

.field public mSavedCheckBoxValue:I

.field public mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

.field public mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

.field public mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field public mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mPackageNameResourceId:I

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    return-void
.end method

.method public static hasShortcutType$2(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f0

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2328

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x712

    return p0

    :cond_1
    const/16 p0, 0x714

    return p0
.end method

.method public abstract getLabelName()Ljava/lang/CharSequence;
.end method

.method public getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shortcut_preference"

    return-object p0
.end method

.method public getShortcutTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1401ac

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getShortcutTypeCheckBoxValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDirectTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    :cond_2
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mQuickSettingsTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    iget-boolean v1, v0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    if-nez v1, :cond_0

    const p0, 0x7f140185

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1400d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f1401aa

    if-eqz v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f1401a7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v2, 0x200

    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f1401a8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result p0

    if-eqz p0, :cond_7

    const p0, 0x7f1401a9

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserPreferredShortcutTypes()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public initGeneralCategory()V
    .locals 3

    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "general_categories"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "shortcut_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    :cond_0
    const-string v0, "qs_tooltip_reshow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    :cond_1
    const-string v0, "qs_tooltip_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_3
    instance-of p1, p0, Lcom/android/settings/gestures/OneHandedSettings;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->initGeneralCategory()V

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "accessibility_button_targets"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_qs_targets"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_direct_access_target_service"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2328

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isStartStopShortcut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f14020d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const p1, 0x7f140208

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance v5, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v7

    const/16 v3, 0x5a

    invoke-static/range {v2 .. v7}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setupEditShortcutDialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported dialogId "

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result v0

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createAccessibilityTutorialDialogForSetupWizard(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result v0

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createAccessibilityTutorialDialog(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_2
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;I)V

    invoke-static {p1, v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createDialog(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const v0, 0x7f0a0413

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->setScrollIndicators(II)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setupEditShortcutDialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ShortcutPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    iput-object p0, v0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/accessibility/ShortcutPreference;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getLabelName()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/accessibility/ShortcutPreference;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    iget v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mPackageNameResourceId:I

    iput v1, v0, Lcom/android/settings/accessibility/ShortcutPreference;->mResourceId:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    const-string v2, "A11Y0001"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mTouchExplorationStateChangeListener:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreferenceData()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreference()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f0a0413

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initQuickSettingsShortcutForSec(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSec(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f0a0530

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1401a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a030e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a070a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f14019f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "shortcut_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "qs_tooltip_reshow"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "qs_tooltip_type"

    iget v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x2328

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mNeedsQSTooltipReshow:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method public final setDialogTextAreaClickListener$2(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 1

    const v0, 0x7f0a0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupEditShortcutDialog(Landroid/app/Dialog;)V
    .locals 4

    const v0, 0x7f0a0ea0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener$2(Landroid/view/View;Landroid/widget/CheckBox;)V

    const v0, 0x7f0a070a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener$2(Landroid/view/View;Landroid/widget/CheckBox;)V

    const v0, 0x7f0a0530

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDirectTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener$2(Landroid/view/View;Landroid/widget/CheckBox;)V

    const v0, 0x7f0a0c20

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mQuickSettingsTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->setDialogTextAreaClickListener$2(Landroid/view/View;Landroid/widget/CheckBox;)V

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSavedCheckBoxValue:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_2

    move v2, p1

    :cond_2
    move p1, v2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1, v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mDirectTypeCheckBox:Landroid/widget/CheckBox;

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->hasShortcutType$2(II)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public final updateShortcutPreference()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getUserPreferredShortcutTypes()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateShortcutPreferenceData()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_1
    return-void
.end method
