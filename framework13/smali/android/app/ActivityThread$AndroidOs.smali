.class Landroid/app/ActivityThread$AndroidOs;
.super Llibcore/io/ForwardingOs;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidOs"
.end annotation


# direct methods
.method private constructor blacklist <init>(Llibcore/io/Os;)V
    .locals 0
    .param p1, "os"    # Llibcore/io/Os;

    .line 8564
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    .line 8565
    return-void
.end method

.method private blacklist deleteDeprecatedDataPath(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8586
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8587
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8589
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 8590
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8592
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 8599
    nop

    .line 8600
    return-void

    .line 8593
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/ActivityThread$AndroidOs;
    .end local p1    # "path":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8597
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/ActivityThread$AndroidOs;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 8598
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 8595
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 8596
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public static blacklist install()V
    .locals 2

    .line 8557
    const/4 v0, 0x0

    .line 8559
    .local v0, "def":Llibcore/io/Os;
    :goto_0
    invoke-static {}, Llibcore/io/Os;->getDefault()Llibcore/io/Os;

    move-result-object v0

    .line 8560
    new-instance v1, Landroid/app/ActivityThread$AndroidOs;

    invoke-direct {v1, v0}, Landroid/app/ActivityThread$AndroidOs;-><init>(Llibcore/io/Os;)V

    invoke-static {v0, v1}, Llibcore/io/Os;->compareAndSetDefault(Llibcore/io/Os;Llibcore/io/Os;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8561
    return-void

    .line 8560
    :cond_0
    goto :goto_0
.end method

.method private blacklist openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8568
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8569
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8571
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 8572
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8574
    .local v1, "cr":Landroid/content/ContentResolver;
    :try_start_0
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 8575
    .local v2, "fd":Ljava/io/FileDescriptor;
    nop

    .line 8576
    invoke-static {p2}, Landroid/os/FileUtils;->translateModePosixToString(I)Ljava/lang/String;

    move-result-object v3

    .line 8575
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 8576
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    .line 8575
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8577
    return-object v2

    .line 8580
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v2

    .line 8581
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 8578
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 8579
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method


# virtual methods
.method public blacklist test-api access(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8604
    if-eqz p1, :cond_0

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8606
    nop

    .line 8607
    invoke-static {p2}, Landroid/os/FileUtils;->translateModeAccessToPosix(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8606
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8608
    const/4 v0, 0x1

    return v0

    .line 8610
    :cond_0
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8616
    if-eqz p1, :cond_0

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8617
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 8619
    :cond_0
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8648
    if-eqz p1, :cond_0

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8649
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$AndroidOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_0

    .line 8651
    :cond_0
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->remove(Ljava/lang/String;)V

    .line 8653
    :goto_0
    return-void
.end method

.method public blacklist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8658
    :try_start_0
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8680
    goto :goto_0

    .line 8659
    :catch_0
    move-exception v0

    .line 8667
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EXDEV:I

    if-ne v1, v2, :cond_0

    const-string v1, "/storage/emulated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8668
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovering failed rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8671
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8676
    nop

    .line 8681
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void

    .line 8673
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 8674
    .local v1, "e2":Ljava/io/IOException;
    const-string v3, "Rename recovery failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8675
    throw v0

    .line 8678
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_0
    throw v0
.end method

.method public blacklist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8625
    if-eqz p1, :cond_0

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8626
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8628
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8630
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8628
    return-object v1

    .line 8630
    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8631
    throw v1

    .line 8633
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api unlink(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8639
    if-eqz p1, :cond_0

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8640
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$AndroidOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_0

    .line 8642
    :cond_0
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->unlink(Ljava/lang/String;)V

    .line 8644
    :goto_0
    return-void
.end method
