.class public final synthetic Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;->__insertAdapterOfUnusedAppBnRInfo:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "connection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [J

    goto :goto_2

    :cond_0
    const-string v2, "INSERT OR REPLACE INTO `bnr_unused_apps` (`package_name`) VALUES (?)"

    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v4, v3, [J

    :goto_0
    if-ge v1, v3, :cond_2

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->reset()V

    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-wide/16 v5, -0x1

    :goto_1
    aput-wide v5, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    move-object p0, v4

    :goto_2
    return-object p0

    :goto_3
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p0
.end method
