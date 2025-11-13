.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

.field public final synthetic f$1:Landroid/database/MatrixCursor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;Landroid/database/MatrixCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;->f$1:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;->f$1:Landroid/database/MatrixCursor;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [J

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->getTypeFromOverViewItem(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getCursorForSizeOfCategory(Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;Z)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aget-wide v0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method
