.class public Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;
.super Ljava/lang/Object;
.source "PackageHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_MOVE:Z = false

.field private static final blacklist MB_IN_BYTES:J

.field public static final blacklist OperationSucceeded:I

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 30
    const-string v0, "SamsungPackageHelper"

    sput-object v0, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->MB_IN_BYTES:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "inZipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "outZipStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 400
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .local v1, "newEntry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 405
    .end local v1    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v1    # "newEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 409
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 411
    .local v2, "data":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "num":I
    if-lez v3, :cond_1

    .line 412
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 414
    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    nop

    .line 418
    return-void

    .line 416
    .end local v4    # "num":I
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    throw v3
.end method

.method public static blacklist createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 10
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isExternal"    # Z

    .line 159
    long-to-double v0, p0

    const-wide v2, 0x3ff07ae147ae147bL    # 1.03

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->MB_IN_BYTES:J

    long-to-double v4, v2

    add-double/2addr v0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 161
    .local v0, "sizeMb":I
    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v1

    move-object v9, v1

    .line 167
    .local v9, "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "createSdDir with fat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v4, "fat"

    move-object v1, v9

    move-object v2, p2

    move v3, v0

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    .local v1, "rc":I
    goto :goto_1

    .line 168
    .end local v1    # "rc":I
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "createSdDir with ext4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "ext4"

    move-object v1, v9

    move-object v2, p2

    move v3, v0

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    .line 177
    .restart local v1    # "rc":I
    :goto_1
    if-eqz v1, :cond_2

    .line 178
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create secure container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v8

    .line 181
    :cond_2
    invoke-interface {v9, p2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v2, "cachePath":Ljava/lang/String;
    return-object v2

    .line 186
    .end local v1    # "rc":I
    .end local v2    # "cachePath":Ljava/lang/String;
    .end local v9    # "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "StorageManagerService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method public static blacklist destroySdDir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;

    .line 306
    const-string v0, "Failed to destroy container "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v2

    .line 307
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 308
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return v1

    .line 311
    :cond_0
    return v3

    .line 312
    .end local v2    # "rc":I
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public static blacklist extractPublicFiles(Ljava/io/File;Ljava/io/File;)J
    .locals 10
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "publicZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "fstr":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .local v1, "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 348
    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    .end local v1    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 349
    .restart local v0    # "fstr":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    .restart local v1    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    const-wide/16 v2, 0x0

    .line 356
    .local v2, "size":J
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    .local v4, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 360
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "zipEntryName":Ljava/lang/String;
    const-string v8, "AndroidManifest.xml"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "resources.arsc"

    .line 362
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "res/"

    .line 363
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 364
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 365
    if-eqz p1, :cond_2

    .line 366
    invoke-static {v6, v4, v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zipEntryName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 372
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    goto :goto_2

    .line 373
    :catch_0
    move-exception v5

    .line 376
    nop

    .line 378
    :goto_2
    if-eqz p1, :cond_4

    .line 379
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 380
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 381
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 382
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 383
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a4

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    nop

    .line 390
    return-wide v2

    .line 371
    .restart local v4    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v5

    .line 372
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    goto :goto_3

    .line 373
    :catch_1
    move-exception v6

    .line 376
    :goto_3
    nop

    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    .end local v1    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    .end local v2    # "size":J
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "publicZipFile":Ljava/io/File;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    .end local v4    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "size":J
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "publicZipFile":Ljava/io/File;
    :catchall_1
    move-exception v4

    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    throw v4
.end method

.method public static blacklist finalizeSdDir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;

    .line 288
    const-string v0, "Failed to finalize container "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v2

    .line 289
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 290
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return v1

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 294
    .end local v2    # "rc":I
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public static blacklist fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "gid"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .line 422
    const-string v0, "Failed to fixperms container "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v2

    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 423
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 424
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    return v1

    .line 427
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 428
    .end local v2    # "rc":I
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public static blacklist getSdDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .line 267
    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get container path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .line 277
    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get container file system path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSecureContainerList()[Ljava/lang/String;
    .locals 4

    .line 320
    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get secure container list with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 144
    :cond_0
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$1;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$1;-><init>()V

    return-object v0
.end method

.method public static blacklist isContainerMounted(Ljava/lang/String;)Z
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .line 329
    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find out if container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mounted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 209
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "readOnly"    # Z

    .line 214
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v1

    .line 215
    .local v1, "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v2

    .line 216
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 217
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v0

    .line 220
    :cond_0
    invoke-interface {v1, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    .end local v1    # "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    .end local v2    # "rc":I
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "StorageManagerService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public static blacklist renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldId"    # Ljava/lang/String;
    .param p1, "newId"    # Ljava/lang/String;

    .line 252
    const-string v0, " to "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 254
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    return v1

    .line 257
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v2    # "rc":I
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public static blacklist resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;

    .line 194
    sget-wide v0, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->MB_IN_BYTES:J

    add-long v2, p0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 196
    .local v0, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v2

    .line 197
    .local v2, "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    invoke-interface {v2, p2, v0, p3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .local v3, "rc":I
    if-nez v3, :cond_0

    .line 199
    return v1

    .line 203
    .end local v2    # "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    .end local v3    # "rc":I
    :cond_0
    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "StorageManagerService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create secure container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist unMountSdDir(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .line 236
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object v1

    .line 237
    .local v1, "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v2

    .line 238
    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 239
    sget-object v3, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return v0

    .line 242
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 243
    .end local v1    # "sm":Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;
    .end local v2    # "rc":I
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "StorageManagerService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method
