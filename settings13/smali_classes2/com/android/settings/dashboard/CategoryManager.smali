.class public Lcom/android/settings/dashboard/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static sInstance:Lcom/android/settings/dashboard/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ppgVV0-7kpqqZoqI_Jlmr_ZXmGc(Ljava/util/Map;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->lambda$getTileByComponentMap$0(Ljava/util/Map;Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/settings/dashboard/CategoryManager;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/CategoryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    .line 66
    :cond_0
    sget-object p0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    return-object p0
.end method

.method private static synthetic lambda$getTileByComponentMap$0(Ljava/util/Map;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3

    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logTiles(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;Z)V
    .locals 4

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz p2, :cond_0

    .line 149
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 156
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/core/SecTileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 159
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/dashboard/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    .line 162
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    .line 163
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V

    if-eqz v0, :cond_4

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->logTiles(Landroid/content/Context;)V

    .line 167
    iget-object p2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    const-string v0, "com.android.settings.category.ia.homepage"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 170
    monitor-exit p0

    return-void

    .line 172
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 173
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "CategoryManager"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key hint missing for homepage tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :cond_3
    invoke-static {v1}, Lcom/android/settings/homepage/HighlightableMenu;->addMenuKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 210
    sget-object v6, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 220
    sget-object v2, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    .line 221
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/Tile;->setCategory(Ljava/lang/String;)V

    .line 224
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v3, :cond_5

    .line 226
    new-instance v3, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v3, v2}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 233
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 258
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    .line 259
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 260
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 263
    instance-of v5, v4, Lcom/android/settingslib/drawer/ProviderTile;

    if-eqz v5, :cond_2

    .line 264
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_1

    .line 268
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 272
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_1

    .line 275
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 280
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTileByComponentMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "CategoryManager"

    const-string v2, "Category is null, no tiles"

    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-object v0

    .line 121
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/settings/dashboard/CategoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/CategoryManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCategoryFromDenylist(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, "CategoryManager"

    const-string v0, "Category is null, skipping denylist update"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 103
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move v3, v0

    .line 105
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 106
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 108
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
