.class public Lcom/samsung/android/transcode/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getExternalSdCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/transcode/util/FileHelper;->isManagedProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    nop

    .line 60
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 61
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 63
    .local v1, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 65
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 67
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "subsystem":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "storagePath":Ljava/lang/String;
    const-string/jumbo v7, "sd"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    return-object v6

    .line 65
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v5    # "subsystem":Ljava/lang/String;
    .end local v6    # "storagePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v1    # "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_1
    const-string v0, "/NoSdCard/"

    return-object v0
.end method

.method public static blacklist getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "editPath":Ljava/lang/String;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 26
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1, p0}, Lcom/samsung/android/transcode/util/FileHelper;->getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 28
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    const-string v3, "_data"

    .line 31
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 30
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_2

    .line 27
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3

    .line 33
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 27
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_3

    .line 37
    :cond_5
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 40
    :cond_6
    move-object v0, v1

    .line 43
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_7
    :goto_3
    return-object v0
.end method

.method private static blacklist getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "_data"

    const-string v1, "duration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "cols":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "c":Landroid/database/Cursor;
    nop

    .line 54
    return-object v0

    .line 51
    .end local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist isManagedProfile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/transcode/util/FileHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 91
    return v0
.end method

.method public static blacklist isSdcardPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lcom/samsung/android/transcode/util/FileHelper;->getExternalSdCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "removalSdPath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
