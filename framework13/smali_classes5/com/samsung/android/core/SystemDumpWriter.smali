.class public Lcom/samsung/android/core/SystemDumpWriter;
.super Ljava/lang/Object;
.source "SystemDumpWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist FILE_DUMPSYS:Ljava/lang/String; = "log/dumpsys_"

.field private static final blacklist MAX_COUNT_SAVED:I = 0x3

.field private static final blacklist TAG_WM:Ljava/lang/String; = "WindowManager"

.field private static blacklist sTagCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDumpRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFileTitle:Ljava/lang/String;

.field private blacklist mFormat:Ljava/text/SimpleDateFormat;

.field private blacklist mOutputFile:Ljava/io/File;

.field private blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "savedFileNameDate"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "SystemDumpWriter_"

    iput-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFormat:Ljava/text/SimpleDateFormat;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mDumpRequests:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "log/dumpsys_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "WindowManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_0
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFileTitle:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFileTitle:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/core/SystemDumpWriter;->deleteOutputFileIfNeeded(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/core/SystemDumpWriter;->addDateFormat(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private blacklist addDateFormat(Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 85
    const-string v0, "close exception, "

    const/4 v1, 0x0

    .line 86
    .local v1, "fos":Ljava/io/OutputStreamWriter;
    iget-object v2, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 88
    .local v2, "exists":Z
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 89
    .local v3, "out":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v1, v4

    .line 90
    if-eqz v2, :cond_0

    .line 91
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 92
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 94
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 95
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "startContent":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "startContent":Ljava/lang/String;
    nop

    .line 102
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :cond_1
    :goto_0
    goto :goto_1

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 100
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 97
    :catch_1
    move-exception v3

    .line 98
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 102
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 108
    :goto_1
    return-void

    .line 101
    :goto_2
    if-eqz v1, :cond_2

    .line 102
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 104
    :catch_2
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 106
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 107
    :goto_4
    throw v3
.end method

.method private blacklist deleteOutputFileIfNeeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_0
    return-void
.end method

.method public static blacklist saveDumpsysFiles(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "savedFileNameDate"    # Z

    .line 126
    invoke-static {p0}, Lcom/samsung/android/core/SystemDumpWriter;->updateCount(Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v0, Lcom/samsung/android/core/SystemDumpWriter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/core/SystemDumpWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v0, "writer":Lcom/samsung/android/core/SystemDumpWriter;
    :try_start_1
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/SystemDumpWriter;->requestDump(Ljava/lang/String;)V

    .line 129
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/SystemDumpWriter;->requestDump(Ljava/lang/String;)V

    .line 130
    const-string v1, "input"

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/SystemDumpWriter;->requestDump(Ljava/lang/String;)V

    .line 131
    const-string v1, "SurfaceFlinger"

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/SystemDumpWriter;->requestDump(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/core/SystemDumpWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .end local v0    # "writer":Lcom/samsung/android/core/SystemDumpWriter;
    goto :goto_1

    .line 127
    .restart local v0    # "writer":Lcom/samsung/android/core/SystemDumpWriter;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/samsung/android/core/SystemDumpWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "savedFileNameDate":Z
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    .end local v0    # "writer":Lcom/samsung/android/core/SystemDumpWriter;
    .restart local p0    # "tag":Ljava/lang/String;
    .restart local p1    # "savedFileNameDate":Z
    :catch_0
    move-exception v0

    .line 135
    :goto_1
    return-void
.end method

.method private static blacklist updateCount(Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    sget-object v0, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 144
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_1
    sget-object v1, Lcom/samsung/android/core/SystemDumpWriter;->sTagCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "creationStartTime":J
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/core/SystemDumpWriter;->mOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/core/SystemDumpWriter;->mDumpRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "service":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const-string v6, "-a"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 116
    nop

    .end local v4    # "service":Ljava/lang/String;
    goto :goto_0

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successful to save dumpsys to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/core/SystemDumpWriter;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 113
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "creationStartTime":J
    .end local p0    # "this":Lcom/samsung/android/core/SystemDumpWriter;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "creationStartTime":J
    .restart local p0    # "this":Lcom/samsung/android/core/SystemDumpWriter;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/core/SystemDumpWriter;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save dumpsys, duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public blacklist requestDump(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/core/SystemDumpWriter;->mDumpRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
