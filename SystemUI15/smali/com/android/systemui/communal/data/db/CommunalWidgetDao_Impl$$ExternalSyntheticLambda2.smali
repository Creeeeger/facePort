.class public final synthetic Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    iput-object p2, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget p0, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, v1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__deleteAdapterOfCommunalWidgetItem:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$1;

    check-cast v0, [Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DELETE FROM `communal_widget_table` WHERE `uid` = ?"

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_0
    new-instance v4, Lkotlin/jvm/internal/ArrayIterator;

    invoke-direct {v4, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    iget-wide v5, v0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    invoke-interface {v1, v3, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    const-string v0, "SELECT changes()"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p0

    :pswitch_0
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    new-instance p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {p0, v3}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    iget-object p1, v1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p1, v2, v3, p0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, v2, v3, p0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/communal/nano/CommunalHubState;

    iget-object p0, v0, Lcom/android/systemui/communal/nano/CommunalHubState;->widgets:[Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;

    array-length p1, p0

    move v0, v2

    :goto_3
    if-ge v0, p1, :cond_3

    aget-object v4, p0, v0

    iget v5, v4, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->widgetId:I

    iget-object v6, v4, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->componentName:Ljava/lang/String;

    iget v4, v4, Lcom/android/systemui/communal/nano/CommunalHubState$CommunalWidgetItem;->rank:I

    new-instance v7, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v5, v6, v4}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;ILjava/lang/String;I)V

    iget-object v4, v1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v4, v2, v3, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    add-int/2addr v0, v3

    goto :goto_3

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v0, Ljava/util/Map;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v4, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda5;-><init>(II)V

    iget-object v0, v1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    if-eqz v4, :cond_4

    new-instance v5, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda7;

    iget-wide v6, v4, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    invoke-direct {v5, p1, v6, v7}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda7;-><init>(IJ)V

    invoke-static {v0, v2, v3, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
