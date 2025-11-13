.class public Lcom/samsung/android/fontutil/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final blacklist NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final blacklist SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field private static final blacklist TAG:Ljava/lang/String; = "FontWriter"

.field private static final blacklist TTF_FILE_COPY_BUF_SIZE:I = 0x2000


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist deleteFolder(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, "newDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "tmp":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 133
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "FontWriter"

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 134
    .local v5, "temp":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t delete Folder Dir : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while delete directory : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist setFileProperties(Ljava/io/File;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "needMakeDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const-string v0, "FontWriter"

    if-eqz p2, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "IOException while createNewFile"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SecurityException while setFileProperties"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 102
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 103
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t give Writable permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 11
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .line 154
    const-string v0, " , "

    const-string v1, "Couldn\'t delete file "

    const-string v2, "FontWriter"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v3, "dest":Ljava/io/File;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/fontutil/FontWriter;->setFileProperties(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    nop

    .line 169
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x2000

    :try_start_3
    new-array v8, v8, [B

    .line 173
    .local v8, "buf":[B
    :goto_0
    invoke-virtual {p2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "readCount":I
    if-lez v9, :cond_0

    .line 174
    invoke-virtual {v7, v8, v5, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    .end local v8    # "buf":[B
    .end local v10    # "readCount":I
    :cond_0
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 183
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    return v4

    .line 192
    :cond_2
    return v5

    .line 169
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "dest":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "is":Ljava/io/InputStream;
    .end local p3    # "destination":Ljava/lang/String;
    :goto_1
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "is":Ljava/io/InputStream;
    .restart local p3    # "destination":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    :try_start_9
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "dest":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "is":Ljava/io/InputStream;
    .end local p3    # "destination":Ljava/lang/String;
    :goto_2
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 176
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "is":Ljava/io/InputStream;
    .restart local p3    # "destination":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while copy FontFile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_3
    return v4

    .line 157
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_a
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Directory traversal attack!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "dest":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "is":Ljava/io/InputStream;
    .end local p3    # "destination":Ljava/lang/String;
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 160
    .restart local v3    # "dest":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "is":Ljava/io/InputStream;
    .restart local p3    # "destination":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while make destination File : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5
    return v4
.end method

.method public blacklist createFontDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "fontName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "fontFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app_fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "newFontDir":Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/fontutil/FontWriter;->setFileProperties(Ljava/io/File;Z)V

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 81
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/fontutil/FontWriter;->setFileProperties(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "newFontDir":Ljava/io/File;
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FontWriter"

    const-string v3, "IOException while CreatFontDirectory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public blacklist deleteFontDirectory(Ljava/lang/String;)V
    .locals 6
    .param p1, "keepfolder"    # Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/app_fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "newFontDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "tmp":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 119
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 120
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/fontutil/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .end local v4    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    return-void
.end method

.method public blacklist writeLoc(Ljava/lang/String;)V
    .locals 8
    .param p1, "directory"    # Ljava/lang/String;

    .line 49
    const-string v0, "Cannot create the loc file : "

    const-string v1, "FontWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app_fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "sFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sans.loc"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v3, "dest":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "canonicalPath":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/fontutil/FontWriter;->setFileProperties(Ljava/io/File;Z)V

    .line 60
    .end local v4    # "canonicalPath":Ljava/lang/String;
    goto :goto_0

    .line 55
    .restart local v4    # "canonicalPath":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Directory traversal attack!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "sFile":Ljava/lang/String;
    .end local v3    # "dest":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v4    # "canonicalPath":Ljava/lang/String;
    .restart local v2    # "sFile":Ljava/lang/String;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 62
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "sFile":Ljava/lang/String;
    .end local v3    # "dest":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/lang/String;
    :goto_1
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "sFile":Ljava/lang/String;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v6

    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "sFile":Ljava/lang/String;
    .end local v3    # "dest":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .end local p1    # "directory":Ljava/lang/String;
    :goto_2
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 65
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "sFile":Ljava/lang/String;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/fontutil/FontWriter;
    .restart local p1    # "directory":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v0, "persist.sys.flipfontpath"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
