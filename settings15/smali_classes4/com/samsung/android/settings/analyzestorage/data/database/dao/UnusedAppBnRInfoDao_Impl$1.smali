.class public final Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppBnRInfo;

    iget-object p0, p2, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppBnRInfo;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `bnr_unused_apps` (`package_name`) VALUES (?)"

    return-object p0
.end method
