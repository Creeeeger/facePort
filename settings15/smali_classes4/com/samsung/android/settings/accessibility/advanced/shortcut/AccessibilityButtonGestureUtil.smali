.class public abstract Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    if-nez p0, :cond_0

    const-string p0, "AccessibilityButtonMode"

    const-string v1, "context is null."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->FLOATING_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    sget-object v0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->hasNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    return-object v0
.end method

.method public static getSupportedType(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_UNSUPPORTED:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    if-nez p0, :cond_0

    const-string p0, "AccessibilityNavBarSupportedType"

    const-string v1, "context is null."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    sget-object v0, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->hasNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-object p0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "bool"

    const-string v1, "android"

    const-string v2, "config_showNavigationBar"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
