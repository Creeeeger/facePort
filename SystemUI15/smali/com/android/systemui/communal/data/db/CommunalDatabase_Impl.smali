.class public final Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;
.super Lcom/android/systemui/communal/data/db/CommunalDatabase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile _communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/communal/data/db/CommunalDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final communalWidgetDao()Lcom/android/systemui/communal/data/db/CommunalWidgetDao;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;->_communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;->_communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;->_communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;->_communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;->_communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "communal_widget_table"

    const-string v4, "communal_item_rank_table"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 4

    new-instance v0, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl$1;

    const-string v1, "b2862f68d77dfea936ef93c715afb89d"

    const/4 v2, 0x1

    const-string v3, "38f223811a414587ee1b6445ae19385d"

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl$1;-><init>(Lcom/android/systemui/communal/data/db/CommunalDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAutoMigrations()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
