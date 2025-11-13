.class public Landroid/sec/clipboard/util/CompatabilityHelper;
.super Ljava/lang/Object;
.source "CompatabilityHelper.java"


# static fields
.field private static final blacklist MAX_SECOND_USER_ID:I = 0xc8

.field private static final blacklist MIN_SECOND_USER_ID:I = 0xa

.field public static final blacklist OLD_CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    const-class v0, Landroid/sec/clipboard/util/CompatabilityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "process":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "targetDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "srcDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 83
    .local v3, "srcDirlistFiles":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {v2, v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 86
    invoke-static {v2}, Landroid/sec/clipboard/util/CompatabilityHelper;->recursiveDelete(Ljava/io/File;)V

    .line 90
    .end local v3    # "srcDirlistFiles":[Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    sget-object v3, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migration progressed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    return-void
.end method

.method private static blacklist copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 103
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 107
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 109
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_2
    new-array v4, v4, [B

    .line 111
    .local v4, "buf":[B
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    if-lez v5, :cond_3

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v4    # "buf":[B
    .end local v6    # "len":I
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "out":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    .end local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 107
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 115
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDir failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method public static blacklist getRootPathForMultiUser(I)Ljava/lang/String;
    .locals 2
    .param p0, "cat"    # I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/semclipboard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist migrationClipboard()V
    .locals 5

    .line 46
    const-string v0, "/data/clipboard"

    const-string v1, "/data/semclipboard"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/semclipboard/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "rootDir"    # Ljava/io/File;

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "childDirs":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 58
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    sget-object v2, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    :cond_0
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/sec/clipboard/util/CompatabilityHelper;->recursiveDelete(Ljava/io/File;)V

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/semclipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    sget-object v1, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to delete root ."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    return-void
.end method

.method public static blacklist replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, ""

    .line 32
    .local v0, "result":Ljava/lang/String;
    const-string v1, "/data/clipboard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const-string v2, "/data/clipboard/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "/data/semclipboard"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/semclipboard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 40
    :cond_2
    return-object p0
.end method
