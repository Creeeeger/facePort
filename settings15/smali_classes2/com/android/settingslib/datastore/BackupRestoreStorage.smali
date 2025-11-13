.class public abstract Lcom/android/settingslib/datastore/BackupRestoreStorage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# instance fields
.field public entities:Ljava/util/List;

.field public final entityStates:Landroidx/collection/MutableScatterMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/MutableScatterMap;

    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public static synthetic getEntities$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEntityStates$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract createBackupRestoreEntities()Ljava/util/List;
.end method

.method public defaultCodec()Lcom/android/settingslib/datastore/BackupCodec;
    .locals 0

    sget-object p0, Lcom/android/settingslib/datastore/BackupZipCodec;->BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;

    return-object p0
.end method

.method public enableBackup(Lcom/android/settingslib/datastore/BackupContext;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enableRestore()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public onRestoreFinished()V
    .locals 0

    return-void
.end method

.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "data"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->readEntityStates$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore(Landroid/os/ParcelFileDescriptor;Landroidx/collection/MutableScatterMap;)V

    new-instance v4, Lcom/android/settingslib/datastore/BackupContext;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->enableBackup(Lcom/android/settingslib/datastore/BackupContext;)Z

    move-result v0

    const-string v5, "["

    const-string v6, "BackupRestoreStorage"

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Backup disabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Backup start"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->createBackupRestoreEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/datastore/BackupRestoreEntity;

    invoke-interface {v0}, Lcom/android/settingslib/datastore/BackupRestoreEntity;->getKey()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    new-instance v11, Ljava/util/zip/CheckedOutputStream;

    invoke-direct {v11, v10, v7}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->defaultCodec()Lcom/android/settingslib/datastore/BackupCodec;

    move-result-object v12

    :try_start_0
    invoke-virtual {v1, v12, v11}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->wrapBackupOutputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0, v4, v11}, Lcom/android/settingslib/datastore/BackupRestoreEntity;->backup(Lcom/android/settingslib/datastore/BackupContext;Ljava/io/OutputStream;)Lcom/android/settingslib/datastore/EntityBackupResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    :try_start_2
    invoke-static {v11, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v11, "] Backup entity "

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    if-eq v0, v10, :cond_2

    const/4 v10, 0x2

    if-eq v0, v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v9}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-virtual {v2, v9, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, " deleted"

    invoke-static {v5, v0, v11, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, " intact"

    invoke-static {v5, v0, v11, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v12

    iget-object v0, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v9}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v15

    if-gez v15, :cond_4

    not-int v15, v15

    :cond_4
    move-object/from16 p1, v4

    iget-object v4, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v16, v4, v15

    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aput-object v9, v0, v15

    aput-object v14, v4, v15

    check-cast v16, Ljava/lang/Long;

    const-string v0, " bytes"

    if-nez v16, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v4, v14, v12

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v10, v4

    invoke-virtual {v2, v9, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v2, v4, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v12, ": "

    invoke-static {v5, v4, v11, v9, v12}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    const-string v12, " unchanged: "

    invoke-static {v5, v4, v11, v9, v12}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 p1, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 p1, v4

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_4
    invoke-static {v11, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Fail to backup entity "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->writeAndClearEntityStates(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Backup end"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final readEntityStates$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore(Landroid/os/ParcelFileDescriptor;Landroidx/collection/MutableScatterMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroidx/collection/MutableScatterMap;",
            ")V"
        }
    .end annotation

    const-string v0, "BackupRestoreStorage"

    const-string v1, "["

    const-string v2, "state"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/collection/MutableScatterMap;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Unexpected state version, read:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected:0"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :goto_2
    instance-of v2, p1, Ljava/io/EOFException;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Hit EOF when read state file"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Fail to read state file"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {p2}, Landroidx/collection/MutableScatterMap;->clear()V

    :cond_4
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->enableRestore()Z

    move-result v1

    const-string v2, "["

    const-string v3, "BackupRestoreStorage"

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Restore disabled, ignore entity "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entities:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->createBackupRestoreEntities()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entities:Ljava/util/List;

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/datastore/BackupRestoreEntity;

    invoke-interface {v5}, Lcom/android/settingslib/datastore/BackupRestoreEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/android/settingslib/datastore/BackupRestoreEntity;

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Cannot find handler for entity "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v5

    const-string v6, "] Restore "

    const-string v7, ": "

    invoke-static {v2, v1, v6, v0, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settingslib/datastore/RestoreContext;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->defaultCodec()Lcom/android/settingslib/datastore/BackupCodec;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/datastore/LimitedNoCloseInputStream;

    invoke-direct {v6, p1}, Lcom/android/settingslib/datastore/LimitedNoCloseInputStream;-><init>(Landroid/app/backup/BackupDataInputStream;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v7, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v7, v6, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    :try_start_0
    invoke-virtual {p0, v5, v7}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->wrapRestoreInputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/settingslib/datastore/BackupRestoreEntity;->restore(Lcom/android/settingslib/datastore/RestoreContext;Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Fail to restore entity "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public wrapBackupOutputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    const-string p0, "codec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outputStream"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/settingslib/datastore/BackupCodec;->getId()B

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1, p2}, Lcom/android/settingslib/datastore/BackupCodec;->encode(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public wrapRestoreInputStream(Lcom/android/settingslib/datastore/BackupCodec;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    const-string p0, "codec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-interface {p1}, Lcom/android/settingslib/datastore/BackupCodec;->getId()B

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-interface {p1, p2}, Lcom/android/settingslib/datastore/BackupCodec;->decode(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Expect codec id "

    const-string v1, " but got "

    const-string v2, "BackupRestoreStorage"

    invoke-static {p1, v1, v0, p0, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    int-to-byte p0, p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/settingslib/datastore/BackupNoOpCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/android/settingslib/datastore/BackupZipCodec;->BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;

    :goto_0
    invoke-interface {p0, p2}, Lcom/android/settingslib/datastore/BackupCodec;->decode(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown codec id "

    invoke-static {p0, p2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeAndClearEntityStates(Landroid/os/ParcelFileDescriptor;)V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    iget v3, v3, Landroidx/collection/MutableScatterMap;->_size:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    iget-object v4, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v5, v3, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_3

    move v7, v0

    :goto_0
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v0

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v14, v4, v13

    aget-object v13, v5, v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_2
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object/from16 v1, p0

    goto :goto_5

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Fail to write state file"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreStorage"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_5
    iget-object v0, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v0, v1, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entityStates:Landroidx/collection/MutableScatterMap;

    iget v1, v0, Landroidx/collection/MutableScatterMap;->_capacity:I

    iget v2, v0, Landroidx/collection/MutableScatterMap;->_size:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result v2

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result v2

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->resizeStorage(I)V

    :cond_4
    return-void
.end method

.method public final writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->enableRestore()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorage;->entities:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->writeAndClearEntityStates(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->onRestoreFinished()V

    return-void
.end method
