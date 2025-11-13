.class public Landroid/app/ActivityThread$ReclaimerLog;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReclaimerLog"
.end annotation


# static fields
.field private static blacklist reclaimerLogPath:Ljava/lang/String;

.field private static blacklist sReclaimerLogSupport:Z

.field private static blacklist sReclaimerLogSupportChecked:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "/proc/reclaimer_log"

    sput-object v0, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupport:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupportChecked:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist reclaimerLogSupported()Z
    .locals 3

    sget-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupportChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupportChecked:Z

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupport:Z

    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1
    sget-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->sReclaimerLogSupport:Z

    return v0
.end method

.method public static blacklist write(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/ActivityThread$ReclaimerLog;->write(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist write(Ljava/lang/String;Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "UMR"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UMR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
