.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/PointerSizeColorTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getFragmentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.inputmethod.MousePointerSettingsFragment"

    return-object p0
.end method

.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "PointerSizeAndColor"

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 0

    const-string p0, "auto_action_preference_screen"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f141865

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const-string p0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
