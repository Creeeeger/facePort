.class public final Landroidx/room/RoomConnectionManager$SupportPooledConnection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/room/Transactor;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# instance fields
.field public final delegate:Landroidx/room/driver/SupportSQLiteConnection;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    return-void
.end method


# virtual methods
.method public final getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    return-object p0
.end method

.method public final inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;

    iget v1, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;-><init>(Landroidx/room/RoomConnectionManager$SupportPooledConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object p1, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/room/RoomConnectionManager$SupportPooledConnection$RollbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p3, p3, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    sget-object v2, Landroidx/room/RoomConnectionManager$SupportPooledConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v3, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_1

    :cond_5
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionReadOnly()V

    :goto_1
    :try_start_1
    new-instance p1, Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;

    invoke-direct {p1, p0}, Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;-><init>(Landroidx/room/RoomConnectionManager$SupportPooledConnection;)V

    iput-object p0, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$transaction$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroidx/room/RoomConnectionManager$SupportPooledConnection$RollbackException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, v4

    :goto_2
    :try_start_2
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroidx/room/RoomConnectionManager$SupportPooledConnection$RollbackException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    return-object p3

    :catchall_1
    move-exception p2

    move-object p1, p0

    move-object p0, p3

    goto :goto_4

    :catch_1
    move-exception p2

    move-object p1, p0

    move-object p0, p3

    :goto_3
    :try_start_3
    invoke-virtual {p2}, Landroidx/room/RoomConnectionManager$SupportPooledConnection$RollbackException;->getResult()Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    return-object p2

    :goto_4
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    throw p2
.end method

.method public final usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    invoke-virtual {p0, p1}, Landroidx/room/driver/SupportSQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/room/driver/SupportSQLiteStatement;

    move-result-object p0

    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method public final withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
