.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mDialogDelegate:Lcom/android/settings/DialogCreatable;

.field private mFollowTypingPreferenceController:Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

.field protected mFollowingTypingSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mTripleTapTypeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public static synthetic $r8$lambda$O65K5sl6hNjwcVwNovDcFFncr8k(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->lambda$setDialogTextAreaClickListener$1(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9xpuW122TzLvvIwtWahGbZj130(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->lambda$registerKeysToObserverCallback$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eWu3W_d2u-oIKTirXT0CgflmTUs(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->lambda$onCreateView$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method public static getServiceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 656
    invoke-static {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget v0, Lcom/android/settings/R$string;->accessibility_summary_shortcut_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 659
    :cond_0
    sget v0, Lcom/android/settings/R$string;->accessibility_summary_shortcut_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 294
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software_gesture:I

    goto :goto_0

    .line 299
    :cond_1
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    .line 301
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getUserShortcutTypeFromSettings(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    .line 637
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x2

    .line 640
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v1, 0x8

    .line 643
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method

.method private static hasMagnificationValueInSettings(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_magnification_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 608
    :cond_1
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 616
    :cond_2
    sget-object p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 617
    :cond_3
    sget-object p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 618
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.server.accessibility.MagnificationController"

    .line 619
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_4
    return v1
.end method

.method static hasMagnificationValuesInSettings(Landroid/content/Context;I)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 590
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 593
    invoke-static {p0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 596
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
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

.method private synthetic lambda$onCreateView$0(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$registerKeysToObserverCallback$2(Ljava/lang/String;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateFollowTypingState()V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$1(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method static optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 509
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_1
    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 512
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInMagnificationValueToSettings(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private static optInMagnificationValueToSettings(Landroid/content/Context;I)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 524
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValueInSettings(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 528
    :cond_1
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    new-instance v1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 536
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 545
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 548
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_1
    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 551
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutMagnificationValueFromSettings(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private static optOutMagnificationValueFromSettings(Landroid/content/Context;I)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 563
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->convertKeyFromSettings(I)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 571
    :cond_1
    new-instance v1, Ljava/util/StringJoiner;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 573
    sget-object v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 574
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 575
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 582
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 283
    iget v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 284
    iput v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    return v0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 259
    sget p0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 260
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateFollowTypingState()V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowTypingPreferenceController:Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;->updateState()V

    return-void
.end method

.method private updateFooterPreference()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_screen_magnification_about_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->accessibility_screen_magnification_footer_learn_more_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getHelpResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setupHelpLink(ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private updateMagnificationEditShortcutDialogCheckBox()V
    .locals 3

    .line 266
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.server.accessibility.MagnificationController"

    .line 268
    invoke-static {v0, v2, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 270
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 275
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    .line 274
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 277
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result v2

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    .line 279
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    .line 278
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result p1

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->saveNonEmptyUserShortcutType(I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    not-int v0, p1

    invoke-static {p2, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V

    .line 366
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 367
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->skipVolumeShortcutDialogTimeoutRestriction(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mDialogDelegate:Lcom/android/settings/DialogCreatable;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1}, Lcom/android/settings/DialogCreatable;->getDialogMetricsCategory(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_1

    .line 403
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getDialogMetricsCategory(I)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x70a

    return p0

    :cond_2
    const/16 p0, 0x709

    return p0

    :cond_3
    const/16 p0, 0x715

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 377
    sget p0, Lcom/android/settings/R$string;->help_url_magnification:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x7

    return p0
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

    .line 321
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutFeatureSettingsKeys()Ljava/util/List;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    .line 322
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getShortcutTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 480
    sget v0, Lcom/android/settings/R$string;->accessibility_screen_magnification_shortcut_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.android.server.accessibility.MagnificationController"

    const/4 v1, 0x1

    .line 332
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x2

    .line 339
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_hardware_keyword:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v1, 0x8

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 345
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_triple_tap_keyword:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 347
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 352
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getSoftwareShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
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

    .line 356
    invoke-static {v2}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 355
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTileComponentName()Landroid/content/ComponentName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getTileTooltipContent(I)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getUserShortcutTypes()I
    .locals 0

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected initSettingsPreference()V
    .locals 4

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.window_magnification"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    .line 176
    sget v2, Lcom/android/settings/R$string;->accessibility_magnification_mode_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    const-string v2, "screen_magnification_mode"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const-string v0, "general_categories"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 181
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 183
    new-instance v1, Lcom/android/settings/accessibility/MagnificationModePreferenceController;

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->setDialogHelper(Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 188
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 190
    new-instance v1, Landroidx/preference/SwitchPreference;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowingTypingSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 192
    sget v2, Lcom/android/settings/R$string;->accessibility_screen_magnification_follow_typing_title:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowingTypingSwitchPreference:Landroidx/preference/SwitchPreference;

    sget v2, Lcom/android/settings/R$string;->accessibility_screen_magnification_follow_typing_summary:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowingTypingSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v2, "magnification_follow_typing"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowingTypingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 200
    new-instance v0, Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowTypingPreferenceController:Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

    .line 202
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowTypingPreferenceController:Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mFollowTypingPreferenceController:Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/MagnificationFollowTypingPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method protected initShortcutPreference()V
    .locals 3

    .line 467
    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ShortcutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference;->setOnClickCallback(Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "general_categories"

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 475
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_screen_magnification_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mDialogDelegate:Lcom/android/settings/DialogCreatable;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_1

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->showAccessibilityGestureTutorialDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    invoke-static {v1, v0, p1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->setupMagnificationEditShortcutDialog(Landroid/app/Dialog;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 94
    sget v0, Lcom/android/settings/R$string;->accessibility_screen_magnification_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 95
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$raw;->accessibility_magnification_banner:I

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    .line 99
    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateFooterPreference()V

    return-object p1
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 434
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 132
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 134
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 424
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f0

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 0

    const/16 p1, 0x3e9

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 3

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.server.accessibility.MagnificationController"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 441
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V

    const/16 p1, 0x3f0

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V

    .line 447
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->registerKeysToObserverCallback(Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "accessibility_magnification_follow_typing_enabled"

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 498
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method public setDialogDelegate(Lcom/android/settings/DialogCreatable;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mDialogDelegate:Lcom/android/settings/DialogCreatable;

    return-void
.end method

.method setupMagnificationEditShortcutDialog(Landroid/app/Dialog;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 238
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 239
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 241
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 243
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 245
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 249
    sget v1, Lcom/android/settings/R$id;->advanced_shortcut:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 250
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mTripleTapTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 252
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateMagnificationEditShortcutDialogCheckBox()V

    return-void
.end method

.method public showDialog(I)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method protected updateShortcutPreference()V
    .locals 3

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.server.accessibility.MagnificationController"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->hasMagnificationValuesInSettings(Landroid/content/Context;I)Z

    move-result v0

    .line 487
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getUserShortcutTypeFromSettings(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_0
    return-void
.end method
