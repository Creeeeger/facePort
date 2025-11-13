.class Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "BriefPopUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGtsResourceGroup()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-super {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p0

    .line 135
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_popup_style"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 111
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

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    const-string v3, "apps_to_view_as_brief_popup"

    .line 116
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "brief_popup_style_settings"

    .line 117
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "brief_popup_keyword_color_settings"

    .line 118
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "brief_popup_show_even_screen_off"

    .line 119
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "detailed_popup_style_description"

    .line 123
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "remove_animations"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    const-string p1, "brief_popup_style_settings_description"

    .line 127
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method
