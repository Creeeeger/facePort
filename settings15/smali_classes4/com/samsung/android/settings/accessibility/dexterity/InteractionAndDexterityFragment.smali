.class public Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment$1;

    const v1, 0x7f170010

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "A11y_Dexterity"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170010

    return p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "touch_hold_delay_tutorial"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "tap_duration_tutorial"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "ignore_repeated_tutorial"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "select_long_press_timeout_preference"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    const-class p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f142f4e

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;->setFragment(ILjava/lang/String;)V

    return v3

    :cond_0
    const-string/jumbo v1, "tap_duration_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    const-class p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TapDurationTutorialFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f142e54

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;->setFragment(ILjava/lang/String;)V

    return v3

    :cond_1
    const-string v1, "ignore_repeat_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    const-class p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesTutorialFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1400f8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;->setFragment(ILjava/lang/String;)V

    return v3

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final setFragment(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p2, 0x1388

    iput p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
