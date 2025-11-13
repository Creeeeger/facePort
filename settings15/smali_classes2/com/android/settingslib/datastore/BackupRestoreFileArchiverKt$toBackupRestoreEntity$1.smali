.class public final Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/BackupRestoreEntity;


# instance fields
.field public final synthetic $this_toBackupRestoreEntity:Lcom/android/settingslib/datastore/BackupRestoreFileStorage;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/datastore/BackupRestoreFileStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;->$this_toBackupRestoreEntity:Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    return-void
.end method


# virtual methods
.method public final backup(Lcom/android/settingslib/datastore/BackupContext;Ljava/io/OutputStream;)Lcom/android/settingslib/datastore/EntityBackupResult;
    .locals 11

    const-string p1, "outputStream"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;->$this_toBackupRestoreEntity:Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->getBackupFile()Ljava/io/File;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    iget-object v1, v0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    const-string v5, "getAll(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Backup"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->mergeSharedPreferences$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    const-string v4, "BackupRestoreStorage"

    const-string v5, "["

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to commit"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v6, "] "

    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    const-string p2, " not exist"

    invoke-static {v5, p1, v6, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/settingslib/datastore/EntityBackupResult;->DELETE:Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object p0

    :cond_1
    sget-object v1, Lcom/android/settingslib/datastore/BackupZipCodec;->BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;

    invoke-virtual {p0, v1, p2}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->wrapBackupOutputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v7, p2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :try_start_2
    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v7, p0

    check-cast v7, Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    iget-object v7, v7, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settingslib/datastore/BackupZipCodec;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " backup "

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes with "

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object p0, v0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->delete(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sget-object p0, Lcom/android/settingslib/datastore/EntityBackupResult;->UPDATE:Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-static {v7, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;->$this_toBackupRestoreEntity:Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final restore(Lcom/android/settingslib/datastore/RestoreContext;Ljava/io/InputStream;)V
    .locals 0

    const-string p0, "inputStream"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
