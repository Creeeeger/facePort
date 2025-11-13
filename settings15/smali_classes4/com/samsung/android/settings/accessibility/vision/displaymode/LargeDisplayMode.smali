.class public final Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;
.super Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final changeDisplayModeToast(Z)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1414b4

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140d26

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

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
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setBoldFontStatus(Landroid/content/Context;I)Z

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setHighLightButtonStatus(Landroid/content/Context;I)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setScreenZoomSize(Landroid/content/Context;Z)Z

    move-result v1

    or-int/2addr p1, v1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    sget-boolean v1, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->FEATURE_ACCESSIBILITY_SETTINGS_HOME_APPLIANCE_BACKUP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->setFontSize(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int p0, p1, v0

    return p0
.end method
