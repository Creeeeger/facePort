.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingProvider;


# static fields
.field static final FLOATING_BUTTON_KEY:Ljava/lang/String; = "floating_button"

.field static final FLOATING_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "floating_button_settings"


# instance fields
.field private floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->refresh()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getTitleResId()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getSupportedType(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f14005e

    return p0

    :cond_0
    const p0, 0x7f14005c

    return p0

    :cond_1
    const p0, 0x7f14005d

    return p0
.end method

.method private refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isAccessibilityButtonEmpty(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->getTitleResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
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

    const-string v1, "floating_button"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->floatingRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "floating_button_settings"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->floatingSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->setRadioButtonPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getSupportedType(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
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

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isAccessibilityButtonEmpty(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    if-eq p0, v0, :cond_1

    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "FloatingOverOtherApps"

    goto :goto_0

    :cond_2
    const-string p0, "3fingerGesture"

    goto :goto_0

    :cond_3
    const-string p0, "2fingerGesture"

    goto :goto_0

    :cond_4
    const-string p0, "NavigationBar"

    :goto_0
    const-string p1, "A11YS6004"

    invoke-static {p1, p0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p0

    return-object p0
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

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_button_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->refresh()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setRadioButtonPreference(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->navigationBarRadioButtonPreference:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonLocationNavigationBarPreferenceController;->refresh()V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070d98

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetDividerStartOffset(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
