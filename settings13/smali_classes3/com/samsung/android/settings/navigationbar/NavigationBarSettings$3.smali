.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    .line 484
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 485
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    .line 486
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDetailType(Landroid/content/Context;)I

    move-result v1

    .line 487
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_GESTURE()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_SIDE_AND_BOTTOM_GESTURE()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 489
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_BUTTON()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v2, "gesture_hint"

    .line 490
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "show_button_to_hide_keyboard"

    .line 491
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_BUTTON()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 495
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const/4 v4, -0x1

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string v2, "block_gestures_with_spen"

    .line 497
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "button_order"

    .line 500
    invoke-static {p1, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "button_order_category"

    .line 501
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_GESTURE()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 505
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_8

    :cond_7
    const-string v1, "button_position"

    .line 506
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$sfgetMODE_GESTURE()I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureHintOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const-string p1, "switch_apps_when_hint_hidden"

    .line 510
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 475
    const-class p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 476
    sget p1, Lcom/android/settings/R$xml;->samsung_navigationbar_settings:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 477
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 518
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
