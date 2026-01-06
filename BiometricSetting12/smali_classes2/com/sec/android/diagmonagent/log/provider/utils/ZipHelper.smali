.class public Lcom/sec/android/diagmonagent/log/provider/utils/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    nop

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-static {v1, v4}, Lcom/sec/android/diagmonagent/log/provider/utils/ZipHelper;->unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto :goto_0

    :cond_2
    nop

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    nop

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v3
.end method

.method protected static unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    const/16 v1, 0x800

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v1
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "not found"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-static {v1, p0, v4}, Lcom/sec/android/diagmonagent/log/provider/utils/ZipHelper;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    nop

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v5
.end method

.method private static zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".metadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2, p1, p2}, Lcom/sec/android/diagmonagent/log/provider/utils/ZipHelper;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v5

    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v6, 0x800

    new-array v7, v6, [B

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    move v8, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    invoke-virtual {p2, v7, v9, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :goto_3
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    throw v1
.end method
