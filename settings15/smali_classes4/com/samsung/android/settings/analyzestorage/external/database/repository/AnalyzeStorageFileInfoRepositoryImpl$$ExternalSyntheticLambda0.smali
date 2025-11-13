.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    iput-boolean p4, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$3:Z

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    const-string v4, "getSizeOfCategory ] type - "

    const-wide/16 v5, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getCategorySizeKey(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSizeOfCategory ] need query - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " saved size - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "QueryHelper"

    invoke-static {v10, v9}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2

    cmp-long p0, v7, v5

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->getTypeFromOverViewItem(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    move-result-object p0

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getCursorForSizeOfCategory(Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;Z)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getCategorySizeKey(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
