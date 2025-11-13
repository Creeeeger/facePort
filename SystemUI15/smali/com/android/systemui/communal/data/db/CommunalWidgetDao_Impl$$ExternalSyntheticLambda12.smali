.class public final synthetic Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$0:I

    iget-wide v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$2:J

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "INSERT INTO communal_widget_table(widget_id, component_name, item_id) VALUES(?, ?, ?)"

    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    int-to-long v5, v0

    :try_start_0
    invoke-interface {v3, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    if-nez p0, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->bindNull()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v3, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    invoke-interface {v3, p0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p0

    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p0
.end method
