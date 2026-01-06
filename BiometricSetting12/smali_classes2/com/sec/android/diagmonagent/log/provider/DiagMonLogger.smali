.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;
.super Ljava/lang/Object;
.source "DiagMonLogger.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "diagmon.log"

.field private static diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static eventBuilder:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;


# instance fields
.field private final DIRECTORY:Ljava/lang/String;

.field private agree:Ljava/lang/String;

.field private application:Landroid/content/Context;

.field private defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private networkMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->networkMode:Z

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/exception/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p5, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->agree:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->networkMode:Z

    sput-object p3, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->setConfiguration()V

    return-void
.end method

.method private eventReport()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->eventBuilder:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    invoke-static {v0, v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;->eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V

    return-void
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private makeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->makeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private setConfiguration()V
    .locals 4

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "fatal exception"

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "diagmon.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    iget-object v3, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->networkMode:Z

    invoke-virtual {v1, v3}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setNetworkMode(Z)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setErrorCode(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    move-result-object v1

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->eventBuilder:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setLogPath(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->networkMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setNetworkMode(Z)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setErrorCode(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->eventBuilder:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private write(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Failed to write."

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_1
    :goto_3
    throw v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agreement for ueHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agreement for ueHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    const-string v1, "diagmon.log"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->makeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->write(Ljava/io/File;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->application:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->eventBuilder:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setLogPath(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->eventReport()V

    monitor-enter p0

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not agreed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;->diagmonConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
