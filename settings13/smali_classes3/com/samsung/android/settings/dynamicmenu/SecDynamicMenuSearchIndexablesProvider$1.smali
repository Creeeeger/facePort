.class Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecDynamicMenuSearchIndexablesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private buildSearchIndexableRaw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;)Lcom/android/settingslib/search/SearchIndexableRaw;
    .locals 1

    .line 219
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 220
    iput-object p3, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getScreenTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 222
    iput-object p2, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 223
    invoke-virtual {p4}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 224
    invoke-virtual {p4}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getSummaryOn()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 225
    invoke-virtual {p4}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getKeyword()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method private collectingRawDataFromSingleTile(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/search/SearchIndexableRaw;
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isValidKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SecDynamicMenuSearchIndexablesProvider"

    if-nez v1, :cond_1

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid key : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "(empty)"

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 173
    :cond_1
    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, ""

    if-eqz v1, :cond_2

    const-string v5, "com.android.settings.PREFERENCE_TYPE"

    .line 174
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 177
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isInvalidCategoryType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 182
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getIndexingDataFormTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;

    move-result-object v1

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getScreenTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-virtual {p3}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-interface {v6, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 187
    iget-object v6, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v6, p3, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 189
    invoke-virtual {v6}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v7

    if-nez v7, :cond_4

    return-object v2

    .line 193
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v7, p3, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getSearchData(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicSearchData;

    move-result-object p3

    .line 194
    invoke-direct {p0, v1, v6, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->migrationDynamicData(Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;Lcom/samsung/android/settings/external/DynamicMenuData;Lcom/samsung/android/settings/external/DynamicSearchData;)V

    .line 198
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getSearchTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 199
    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getSearchTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isValidIndexingData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 203
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->buildSearchIndexableRaw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object p0

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const-string p2, "(unknown)"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] added. key : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", title : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 208
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be added as dynamic menu. : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "title is empty. "

    goto :goto_2

    :cond_9
    move-object p1, v4

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->getSearchTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string v4, "screenTitle is empty. "

    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {v3, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private collectingRawDataFromTileList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 157
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->collectingRawDataFromSingleTile(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private collectionRawDataFromCategoryKeyList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->collectingRawDataFromTileList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getIndexingDataFormTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;
    .locals 3

    .line 234
    new-instance p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    invoke-virtual {p2, p1}, Lcom/android/settingslib/drawer/Tile;->getSearchTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/drawer/Tile;->getKeywords(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 112
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    .line 116
    sget-object v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 119
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->collectionRawDataFromCategoryKeyList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getScreenTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 250
    invoke-static {}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->-$$Nest$sfgetSCREEN_TITLE_MAP()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 251
    invoke-static {}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->-$$Nest$sfgetSCREEN_TITLE_MAP()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isInvalidCategoryType(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SecInsetCategoryPreference"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "PreferenceCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUsedDynamicRaw()Z
    .locals 0

    .line 84
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    return p0
.end method

.method private isValidIndexingData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->-$$Nest$sfgetSKIP_ITEMS()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 270
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, p0

    goto :goto_1

    :sswitch_0
    const-string v0, "key_find_my_mobile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "security_status_find_device"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "security_status_security_patch_level"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    .line 272
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 275
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 278
    :pswitch_2
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x3b3f5804 -> :sswitch_2
        -0x1bad31d2 -> :sswitch_1
        0x7fb0496f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private migrationDynamicData(Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;Lcom/samsung/android/settings/external/DynamicMenuData;Lcom/samsung/android/settings/external/DynamicSearchData;)V
    .locals 0

    .line 240
    invoke-virtual {p2}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p2}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->setSummaryOn(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 244
    invoke-virtual {p3}, Lcom/samsung/android/settings/external/DynamicSearchData;->getKeywords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->setKeyword(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Lcom/samsung/android/settings/external/DynamicSearchData;->getSearchTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->setSearchTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
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

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p2

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isUsedDynamicRaw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p2
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

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->isUsedDynamicRaw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$1;->getRawDataToDynamicMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p2
.end method
