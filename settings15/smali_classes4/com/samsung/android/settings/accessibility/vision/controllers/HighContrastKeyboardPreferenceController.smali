.class public Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;
.implements Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;


# static fields
.field private static final HAS_HIGH_CONTRAST_THEME_PICKER:Ljava/lang/String; = "has_high_contrast_theme_picker"

.field private static final HIGH_CONTRAST_KEYBOARD:Ljava/lang/String; = "high_contrast_keyboard"

.field private static final HIGH_CONTRAST_KEYBOARD_URI:Ljava/lang/String; = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider/highcontrast"

.field private static final HIGH_CONTRAST_THEME_NAME:Ljava/lang/String; = "high_contrast_theme_name"

.field private static final TAG:Ljava/lang/String; = "HighContrastKeyboardPreferenceController"

.field private static final USE_ONE_HAND_OPERATION:Ljava/lang/String; = "use_one_hand_operation"


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static bridge synthetic -$$Nest$menableHighContrastKeyboard(Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->enableHighContrastKeyboard(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method private enableHighContrastKeyboard(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "high_contrast_keyboard"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/accessibility/SIPUtils;->putValueToSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getPreferenceSummary(Z)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1401de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getSummaryFromKeyboard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSummaryFromKeyboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "high_contrast_theme_name"

    invoke-static {p1, p0, p0}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getValueFromSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private showExclusiveDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1401e0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v1, 0x7f1401df

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f060af9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/SIPUtils;->HONEYBOARD_HIGH_CONTRAST_KEYBOARD_SETTING_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getActionButtonDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getCurrentInputMethodType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "has_high_contrast_theme_picker"

    const/4 v3, 0x0

    invoke-static {p0, v0, v0, v3}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getIntFromSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected value: "

    invoke-static {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v2, 0x5

    :cond_2
    :goto_0
    return v2
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.VisibilityEnhancementsFragment"

    return-object p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "HighContrastKeyboard"

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const p0, 0x7f08018d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLearnMoreButtonIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getPreferenceSummary(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUriList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getCurrentInputMethodType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "enabled_accessibility_services"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider/highcontrast"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getUsingFunctionHighlightKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUsingFunctionTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f1401e2

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUsingFunctionType()I
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "high_contrast_keyboard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getIntFromSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "use_one_hand_operation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/samsung/android/settings/accessibility/SIPUtils;->getIntFromSIPProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "High Contrast Keyboard is toggled value : "

    const-string v4, ", oneHandInputKeyboard : "

    const-string v5, "HighContrastKeyboardPreferenceController"

    invoke-static {v3, p1, v4, v0, v5}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    sget-object v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Settings"

    goto :goto_1

    :cond_1
    const-string v5, "SetupWizard"

    :goto_1
    const-string v6, "From"

    invoke-static {v6, v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "A11Y3031"

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->showExclusiveDialog()V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->enableHighContrastKeyboard(Z)V

    return v1

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public updateSummary(Landroidx/preference/Preference;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/vision/controllers/HighContrastKeyboardPreferenceController;->getPreferenceSummary(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
