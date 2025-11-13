.class public final Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;

    const-string v1, "apps_to_view_as_brief_popup"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;

    const-string v1, "brief_popup_style_settings"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;

    const-string v1, "brief_popup_keyword_color_settings"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;

    const-string v1, "brief_popup_show_even_screen_off"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpConditionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;

    const-string v1, "brief_popup_style_settings_description"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpStyleDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;

    const-string v1, "detailed_popup_style_description"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/notification/brief/DetailedPopUpStyleDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getGtsResourceGroup()Ljava/util/HashMap;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notification_popup_style"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isEdgeLightingDefaultOff()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "edge_lighting"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "apps_to_view_as_brief_popup"

    const-string v4, "brief_popup_style_settings"

    const-string v5, "brief_popup_keyword_color_settings"

    const-string v6, "brief_popup_show_even_screen_off"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "detailed_popup_style_description"

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "remove_animations"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "brief_popup_style_settings_description"

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method
