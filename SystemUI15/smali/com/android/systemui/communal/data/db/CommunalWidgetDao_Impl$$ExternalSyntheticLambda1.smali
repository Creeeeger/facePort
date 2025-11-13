.class public final synthetic Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    const-string v1, "DELETE FROM communal_item_rank_table"

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v2

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    const-string v1, "DELETE FROM communal_widget_table"

    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v2

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    const-string/jumbo v1, "uid"

    const-string v2, "SELECT * FROM communal_widget_table JOIN communal_item_rank_table ON communal_item_rank_table.uid = communal_widget_table.item_id ORDER BY communal_item_rank_table.rank DESC"

    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "rank"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "widget_id"

    const-string v6, "component_name"

    const-string v7, "item_id"

    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/room/AmbiguousColumnResolver;->resolve(Ljava/util/List;[[Ljava/lang/String;)[[I

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v0, v4

    aget v3, v3, v4

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    aget-object v3, v0, v4

    const/4 v7, 0x1

    aget v3, v3, v7

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    new-instance v8, Lcom/android/systemui/communal/data/db/CommunalItemRank;

    invoke-direct {v8, v5, v6, v3}, Lcom/android/systemui/communal/data/db/CommunalItemRank;-><init>(JI)V

    aget-object v3, v0, v7

    aget v3, v3, v4

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    aget-object v3, v0, v7

    aget v3, v3, v7

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v7

    aget v3, v3, v9

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v7

    aget v3, v3, v6

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_2
    aget-object v3, v0, v7

    aget v3, v3, v4

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    aget-object v3, v0, v7

    aget v3, v3, v7

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    aget-object v3, v0, v7

    aget v3, v3, v9

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move-object v14, v5

    goto :goto_3

    :cond_3
    aget-object v3, v0, v7

    aget v3, v3, v9

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :goto_3
    aget-object v3, v0, v7

    aget v3, v3, v6

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v15

    new-instance v3, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;-><init>(JILjava/lang/String;J)V

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :cond_4
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v1

    :goto_4
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
