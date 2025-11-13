.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/DarkModeTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getFragmentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.DisplaySettings"

    return-object p0
.end method

.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "DarkMode"

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 2

    const-string p0, "high_keyboard_contrast_preference_screen"

    const-string/jumbo v0, "toggle_inversion_preference"

    const-string/jumbo v1, "toggle_high_text_contrast_preference"

    invoke-static {v1, p0, v0}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f140b3f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
