.class public final Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;
.super Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final changeDisplayModeToast(Z)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1401db

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140d26

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140d25

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final doChangeDisplayMode(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setBoldFontStatus(Landroid/content/Context;I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setHighLightButtonStatus(Landroid/content/Context;I)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setHightContrastFontStatus(Landroid/content/Context;I)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setHighContrastKeyboard(Landroid/content/Context;Z)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setRemoveAnimationStatus(Landroid/content/Context;I)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setReduceTransparency(Landroid/content/Context;I)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setScreenZoomSize(Landroid/content/Context;Z)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    sget-boolean v3, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->FEATURE_ACCESSIBILITY_SETTINGS_HOME_APPLIANCE_BACKUP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v3, :cond_0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setFontSize(Landroid/content/Context;I)V

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setColorInversionStatus(Landroid/content/Context;I)Z

    move-result p0

    :goto_1
    or-int/2addr p0, v0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setDarkModeStatus(Landroid/content/Context;I)Z

    move-result p0

    goto :goto_1

    :goto_2
    return p0
.end method
