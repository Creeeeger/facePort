.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final FLOATING_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "floating_button_settings"

.field static final LOCATION_CATEGORY_KEY:Ljava/lang/String; = "accessibility_button_location"

.field static final NAVIGATION_BAR_KEY:Ljava/lang/String; = "navigation_bar"


# instance fields
.field private floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private locationCategory:Landroidx/preference/PreferenceCategory;

.field private navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getButtonLocationCategoryVisibility()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->hasNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private refresh()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isAccessibilityButtonEmpty(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->locationCategory:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->locationCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->getButtonLocationCategoryVisibility()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method private setRadioButtonPreference(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "floating_button_settings"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "accessibility_button_location"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->locationCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "navigation_bar"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->setRadioButtonPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_button_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->refresh()V

    return v1
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationFloatingPreferenceController;->refresh()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
