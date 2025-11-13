.class public Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;
.super Ljava/lang/Object;
.source "KernelMemoryProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kernelmemory/KernelMemoryProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReclaimerLog"
.end annotation


# static fields
.field private static blacklist RECLAIMER_LOG_SUPPORT:Z = false

.field private static blacklist RECLAIMER_LOG_SUPPORT_CHECKED:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "UMR"

.field private static blacklist reclaimerLogPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const-string v0, "/proc/reclaimer_log"

    sput-object v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist reclaimerLogSupported()Z
    .locals 3

    .line 37
    sget-boolean v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    .line 39
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 40
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    .line 44
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    sget-boolean v0, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    return v0
.end method

.method public static blacklist write(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public static blacklist write(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "writeLogcat"    # Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "UMR"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-static {}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->reclaimerLogSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    return-void

    .line 56
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 57
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 59
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v1, v2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UMR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    nop

    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_2
    :goto_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 70
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 61
    :catch_1
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 66
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 71
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    return-void

    .line 65
    :goto_2
    if-eqz v1, :cond_3

    .line 66
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 68
    :catch_2
    move-exception v3

    goto :goto_4

    .line 69
    :cond_3
    :goto_3
    nop

    .line 70
    :goto_4
    throw v2
.end method
