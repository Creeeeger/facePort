.class public Lcom/samsung/android/wallpaperbackup/BnRFileHelper;
.super Ljava/lang/Object;
.source "BnRFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist REQ_MINIMUM_SIZE:I = 0xa00000

.field public static final blacklist SECURITY_LEVEL_HIGH:I = 0x1

.field public static final blacklist SECURITY_LEVEL_NORMAL:I

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkSaveAvailable(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xa00000

    sget-object v6, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v8

    sget-object v9, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file doesn\'t exists, Result of making the directory : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9

    move-wide v0, v9

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v9

    mul-long v4, v0, v2

    nop

    const-wide/32 v7, 0xa00000

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    sget-object v7, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StatFs : availableBlocks = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " blockSizeInBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " freeSpaceInBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    :cond_1
    return-object v6

    :catch_0
    move-exception v7

    sget-object v6, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method public static blacklist closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static blacklist copyAssets(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyAssets: to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".xml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    invoke-static {v4, v5, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyEncryptFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    invoke-static {v4, v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist copyDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDir: sourceFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDir: targetFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    sget-object v4, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copydir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist. create success = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    sget-object v6, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyDir: f = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v6, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyEncryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_6
    :goto_1
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDir: filePath is empty. source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static blacklist copyEncryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    invoke-static {v3, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    const/16 v7, 0x400

    new-array v8, v7, [B

    :goto_0
    invoke-virtual {v2, v8, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    move v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    invoke-virtual {v4, v8, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v5, 0x1

    return v5

    :cond_1
    nop

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static blacklist copyEncryptFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-static {v4, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7

    move-object v5, v7

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    const/16 v8, 0x400

    new-array v9, v8, [B

    :goto_0
    invoke-virtual {v3, v9, v6, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    move v7, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    invoke-virtual {v5, v9, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v6, 0x1

    return v6

    :cond_2
    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :goto_1
    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v6
.end method

.method public static blacklist copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyEncryptFile sourceImagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destImagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-static {v4, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7

    move-object v5, v7

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    const/16 v8, 0x400

    new-array v9, v8, [B

    :goto_0
    invoke-virtual {v3, v9, v6, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    move v7, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    invoke-virtual {v5, v9, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v6, 0x1

    return v6

    :cond_2
    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return v6

    :goto_1
    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v6
.end method

.method public static blacklist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v7, 0x0

    :try_start_3
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v4, v6

    move-object v5, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v6

    move-object v5, v11

    goto :goto_0

    :catchall_1
    move-exception v4

    move-wide v9, v0

    move-object v0, v4

    move-object v4, v6

    move-object v5, v11

    goto :goto_1

    :catch_1
    move-exception v4

    move-wide v9, v0

    move-object v0, v4

    move-object v4, v6

    move-object v5, v11

    goto :goto_0

    :catchall_2
    move-exception v4

    move-wide v9, v0

    move-object v0, v4

    move-object v4, v6

    goto :goto_1

    :catch_2
    move-exception v4

    move-wide v9, v0

    move-object v0, v4

    move-object v4, v6

    goto :goto_0

    :catchall_3
    move-exception v6

    move-wide v9, v0

    move-object v0, v6

    goto :goto_1

    :catch_3
    move-exception v6

    move-wide v9, v0

    move-object v0, v6

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    nop

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    :goto_1
    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static blacklist copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v8, 0x0

    :try_start_3
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v7}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    move-object v5, v7

    move-object v6, v12

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v7

    move-object v6, v12

    goto :goto_0

    :catchall_1
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    move-object v6, v12

    goto :goto_1

    :catch_1
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    move-object v6, v12

    goto :goto_0

    :catchall_2
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    goto :goto_1

    :catch_2
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    goto :goto_0

    :catchall_3
    move-exception v7

    move-wide v10, v1

    move-object v1, v7

    goto :goto_1

    :catch_3
    move-exception v7

    move-wide v10, v1

    move-object v1, v7

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    nop

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return v2

    :catchall_4
    move-exception v1

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static blacklist copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyEncryptFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v8, 0x0

    :try_start_3
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v7}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    move-object v5, v7

    move-object v6, v12

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v7

    move-object v6, v12

    goto :goto_0

    :catchall_1
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    move-object v6, v12

    goto :goto_1

    :catch_1
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    move-object v6, v12

    goto :goto_0

    :catchall_2
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    goto :goto_1

    :catch_2
    move-exception v5

    move-wide v10, v1

    move-object v1, v5

    move-object v5, v7

    goto :goto_0

    :catchall_3
    move-exception v7

    move-wide v10, v1

    move-object v1, v7

    goto :goto_1

    :catch_3
    move-exception v7

    move-wide v10, v1

    move-object v1, v7

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    nop

    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return v2

    :catchall_4
    move-exception v1

    :goto_1
    invoke-static {v5}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static blacklist copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "copyFile: sourceFilePath is empty."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    const-string v2, "copyFile: original image file exists."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_1
    invoke-static {p1, p0, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    sget-object v2, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    const-string v3, "copyFile: source file does not exists or can\'t read."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static blacklist decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    invoke-static {v4, p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static blacklist deleteFile(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static blacklist encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->TAG:Ljava/lang/String;

    const-string v1, "sessionKey is empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->generateEncryptSalt()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v4, p1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, p0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static blacklist generateEncryptSalt()[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static blacklist generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 10

    const/16 v0, 0x3e8

    const/16 v1, 0x100

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, v2, p0, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return-object v3
.end method

.method public static blacklist getBitmapFromPath(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    nop

    invoke-static {v1, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getInputStreamFromPath(Ljava/lang/String;ILjava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-static {v0, p2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :pswitch_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isExist(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
