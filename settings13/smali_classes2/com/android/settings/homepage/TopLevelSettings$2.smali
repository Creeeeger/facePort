.class Lcom/android/settings/homepage/TopLevelSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TopLevelSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/TopLevelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 950
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 1042
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 1044
    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;

    const-string/jumbo v1, "top_level_samsung_account_for_search"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelTipsPreferenceController;

    const-string/jumbo v1, "top_level_tips_for_search"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelTipsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelUserManualPreferenceController;

    const-string/jumbo v1, "top_level_user_manual_for_search"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelUserManualPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1056
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_2
    new-instance v0, Lcom/samsung/android/settings/homepage/TopLevelWallpaperPreferenceController;

    const-string/jumbo v1, "top_level_wallpaper_for_search"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/homepage/TopLevelWallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1061
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 982
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 984
    invoke-static {p1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    .line 986
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 989
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "top_level_samsung_account_for_search"

    .line 990
    iput-object v2, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 991
    invoke-static {}, Lcom/android/settings/Utils;->getSamsungAccountTitleRes()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 992
    sget v2, Lcom/android/settings/R$drawable;->sec_ic_samsung_account:I

    iput v2, v1, Landroid/provider/SearchIndexableData;->iconResId:I

    const-string v2, "android.intent.action.MAIN"

    .line 993
    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 994
    sget v3, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_package:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 995
    sget v3, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_class:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 996
    invoke-static {}, Lcom/android/settings/Utils;->getSamsungAccountTitleRes()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 997
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "top_level_tips_for_search"

    .line 1001
    iput-object v3, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1002
    invoke-static {p1}, Lcom/android/settings/Utils;->getTipAndUserManualTitleRes(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1003
    sget v3, Lcom/android/settings/R$drawable;->sec_ic_settings_tips:I

    iput v3, v1, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 1004
    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 1005
    sget v3, Lcom/android/settings/R$string;->config_sec_toplevel_tips_package:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 1006
    sget v3, Lcom/android/settings/R$string;->config_sec_toplevel_tips_class:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 1007
    sget v3, Lcom/android/settings/R$string;->keyword_sec_user_manual_for_search:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1008
    invoke-static {p1}, Lcom/android/settings/Utils;->getTipAndUserManualTitleRes(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1009
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "top_level_user_manual_for_search"

    .line 1014
    iput-object v4, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1015
    iget v4, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1016
    iget v4, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    iput v4, v1, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 1017
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1018
    iput-object v2, v1, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const-string v3, "com.android.settings"

    .line 1019
    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 1020
    const-class v3, Lcom/android/settings/Settings$UserManualLaunchActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 1021
    iget v0, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1022
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_0
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "top_level_wallpaper_for_search"

    .line 1027
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1028
    sget p1, Lcom/android/settings/R$string;->keywords_sec_wallpaper_settings:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1029
    sget p1, Lcom/android/settings/R$string;->wallpaper_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1030
    sget v1, Lcom/android/settings/R$drawable;->sec_ic_settings_wallpaper:I

    iput v1, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 1031
    iput-object v2, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 1032
    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_wallpaper_package:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 1033
    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_wallpaper_class:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 1034
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1035
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 960
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 965
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 967
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 972
    sget p1, Lcom/android/settings/R$xml;->sec_top_level_settings_prokiosk:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 975
    :cond_1
    sget p1, Lcom/android/settings/R$xml;->sec_top_level_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    aput-object p0, p1, p2

    .line 977
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
