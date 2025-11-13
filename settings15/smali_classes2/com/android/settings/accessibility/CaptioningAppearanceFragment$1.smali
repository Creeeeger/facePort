.class public final Lcom/android/settings/accessibility/CaptioningAppearanceFragment$1;
.super Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result p1

    const/4 v1, -0x1

    const-string v2, "captioning_window_opacity"

    const-string v3, "captioning_edge_color"

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_0

    :cond_1
    const p1, 0xffffff

    :goto_0
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result p1

    if-nez p1, :cond_3

    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "captioning_typeface"

    const-string v1, "captioning_foreground_color"

    const-string v4, "captioning_foreground_opacity"

    const-string v5, "captioning_edge_type"

    invoke-static {p1, v0, v1, v4, v5}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "captioning_background_color"

    const-string v1, "captioning_background_opacity"

    const-string v4, "captioning_window_color"

    invoke-static {p1, v3, v0, v1, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object p0
.end method
