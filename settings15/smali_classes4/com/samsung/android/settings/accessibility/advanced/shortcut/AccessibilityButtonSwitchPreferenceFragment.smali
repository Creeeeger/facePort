.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonSwitchPreferenceFragment;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDbKey()Ljava/lang/String;
    .locals 0

    const-string p0, "accessibility_button_targets"

    return-object p0
.end method

.method public final getDescriptionResId()I
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v1, "LARGESCREEN"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Rune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140168

    return p0

    :cond_0
    const p0, 0x7f140167

    return p0

    :cond_1
    const p0, 0x7f140166

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessibilityButtonSwitchPreferenceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1778

    return p0
.end method

.method public final getShortcutType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    const p0, 0x7f140070

    return p0
.end method
