.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 190
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

    const/4 p0, 0x0

    .line 194
    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGtsResourceGroup()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-super {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p0

    .line 245
    sget-object v0, Lcom/samsung/android/settings/gts/GtsGroup;->GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onehand_operation_settings"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v0}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdr_settings"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 225
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const-string v0, "multi_window_setting"

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "applock"

    .line 233
    invoke-static {v0}, Lcom/android/settingslib/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.app.sprotect"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "key_applock"

    .line 235
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
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

    .line 200
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "applock"

    .line 202
    invoke-static {p2}, Lcom/android/settingslib/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    if-nez p2, :cond_1

    .line 203
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "key_applock"

    .line 204
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 205
    sget v0, Lcom/android/settings/R$string;->useful_feature_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget v0, Lcom/android/settings/R$string;->applockhide_app_name:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_0
    sget v0, Lcom/android/settings/R$string;->applock_app_name:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 211
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-$$Nest$smappendFunctionKeyRaw(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method
