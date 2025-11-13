.class public Lcom/samsung/android/knox/ddar/DualDARManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final DEBUG:Z

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_MGR_SERVICE:Ljava/lang/String; = "DUALDAR_MGR_SERVICE"

.field private static final DUAL_DAR_CLIENT:Ljava/lang/String; = "DUAL_DAR_CLIENT"

.field public static final FETCH_DUMPSTATE_REQUEST:Ljava/lang/String; = "FETCH_DUMPSTATE_REQUEST"

.field public static final GET_CLIENT_VERSION_REQUEST:Ljava/lang/String; = "GET_CLIENT_VERSION_REQUEST"

.field public static final GET_DUALDAR_USERS_REQUEST:Ljava/lang/String; = "GET_DUALDAR_USERS_REQUEST"

.field public static final INSTALL_CLIENT_LIBRARY_REQUEST:Ljava/lang/String; = "INSTALL_CLIENT_LIBRARY_REQUEST"

.field private static final LOAD_RETRY_COUNT:I = 0x5

.field public static final ON_AGENT_RECONNECTED:Ljava/lang/String; = "ON_AGENT_RECONNECTED"

.field public static final PUSH_SECRET_REQUEST:Ljava/lang/String; = "PUSH_SECRET_REQUEST"

.field private static final TAG:Ljava/lang/String; = "DualDarManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized fetchDumpState(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Exception at fetchDumpState - "

    const-string v1, "FS Log File fd="

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPathForWrite(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean p1, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "FSLOG_FILE_INFO"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "FETCH_DUMPSTATE_REQUEST"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "dual_dar_response"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    const-string p1, "DualDarManager"

    const-string v1, "Fetch DumpState Success"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    return v5

    :cond_4
    :try_start_4
    const-string p1, "DualDarManager"

    const-string v1, "Fetch DumpState failed !!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_5

    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :goto_2
    monitor-exit p0

    return v2

    :cond_6
    :goto_3
    :try_start_8
    const-string p1, "DualDarManager"

    const-string v1, "Error: Not able to open the Log files"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_7

    :try_start_9
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_3
    move-exception p1

    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_7
    :goto_4
    monitor-exit p0

    return v2

    :goto_5
    :try_start_c
    const-string v1, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_8

    :try_start_d
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz p1, :cond_8

    :try_start_e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :catch_4
    move-exception p1

    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_8
    :goto_6
    monitor-exit p0

    return v2

    :goto_7
    if-eqz v3, :cond_9

    :try_start_10
    iget-object v0, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_9

    :try_start_11
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_8
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :goto_9
    monitor-exit p0

    throw p1
.end method

.method private getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 11

    const-string v0, "DualDarManager"

    const-string v1, "Found FSRelay file: "

    const-string v2, "FileName: "

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p0, :cond_3

    return-object v3

    :cond_3
    new-instance v1, Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    const-string p1, "general exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    :catch_1
    const-string p0, "FSRelay file not found: "

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    return-object p0
.end method

.method private getFdFromPathForWrite(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ddar/DualDARManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "FSRelay fd="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_11

    :catch_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v3, :cond_3

    if-eqz v3, :cond_1

    :try_start_2
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_14

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :try_start_7
    iget-object v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_13

    iget-wide v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_13

    iget-wide v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    goto/16 :goto_b

    :cond_4
    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offset="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " len="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_6

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    sget-boolean p2, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz p2, :cond_8

    const-string p2, "DualDarManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load FSRelay "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from app"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move p1, v2

    move p2, p1

    :goto_4
    const/4 p3, 0x5

    const/4 v0, 0x1

    if-ge p1, p3, :cond_c

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "RELAY_FILE_INFO"

    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    const-string p3, "CRYPTO_FILE_INFO"

    new-array v4, v2, [Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {p2, p3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_9
    const-string p3, "INSTALL_CLIENT_LIBRARY_REQUEST"

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_a

    const-string p3, "dual_dar_response"

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    move p2, v0

    goto :goto_5

    :cond_a
    move p2, v2

    :goto_5
    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    const-string p3, "DualDarManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FSRelay loading failure: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    if-nez p2, :cond_f

    const-string p1, "DualDarManager"

    const-string p2, "FSRelay Load failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_d

    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catch_3
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez p1, :cond_e

    :try_start_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_8

    :catch_4
    move-exception p1

    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_e
    monitor-exit p0

    return v2

    :cond_f
    :try_start_d
    sget-boolean p1, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string p1, "DualDarManager"

    const-string p2, "FSRelay Loaded Successfully"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_10
    :try_start_e
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz p1, :cond_11

    :try_start_f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    :catch_5
    move-exception p1

    :try_start_10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-nez p1, :cond_12

    :try_start_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    :catch_6
    move-exception p1

    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_12
    monitor-exit p0

    return v0

    :cond_13
    :goto_b
    :try_start_13
    const-string p1, "DualDarManager"

    const-string p2, "pfd is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz p1, :cond_14

    :try_start_15
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_c

    :catch_7
    move-exception p1

    :try_start_16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-nez p1, :cond_15

    :try_start_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_d

    :catch_8
    move-exception p1

    :try_start_18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_15
    monitor-exit p0

    return v2

    :goto_e
    :try_start_19
    const-string p2, "DualDarManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception at installLibrary - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v3, :cond_16

    :try_start_1a
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz p1, :cond_16

    :try_start_1b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_f

    :catch_9
    move-exception p1

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-nez p1, :cond_17

    :try_start_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_10

    :catch_a
    move-exception p1

    :try_start_1e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_17
    monitor-exit p0

    return v2

    :goto_11
    if-eqz v3, :cond_18

    :try_start_1f
    iget-object p2, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    if-eqz p2, :cond_18

    :try_start_20
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto :goto_12

    :catch_b
    move-exception p2

    :try_start_21
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    if-nez p2, :cond_19

    :try_start_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object p3, p3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto :goto_13

    :catch_c
    move-exception p2

    :try_start_23
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    throw p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :goto_14
    monitor-exit p0

    throw p1
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const-string v0, "KNOXCORE_PROXY_AGENT"

    const-string v1, "DUALDAR_MGR_SERVICE"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private processCommandSecurely(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v1

    const-string v3, "DUALDAR_MGR_SERVICE"

    iget-object v6, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    const-string v2, "KNOXCORE_PROXY_AGENT"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessageSecurely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;

    move-result-object p0

    return-object p0
.end method

.method public establishSecureSession()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "DUAL_DAR_CLIENT"

    const-string v2, "KNOXCORE_PROXY_AGENT"

    const-string v3, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->initializeSecureSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DualDarManager"

    const-string v1, "Failed to establish secure connection from SDK to KnoxCore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized getDualDARUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GET_DUALDAR_USERS_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DualDarManager"

    const-string v2, "Failed to get service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "USERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileSystemLog(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->fetchDumpState(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInstalledClientLibraryVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "GET_CLIENT_VERSION_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "DualDarManager"

    const-string v0, "Failed to get service"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "CLIENT_VERSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized installLibrary(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARManager;->installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAgentReconnected()V
    .locals 2

    const-string v0, "ON_AGENT_RECONNECTED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public declared-synchronized setSecret(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DualDarManager"

    const-string/jumbo v1, "setSecret() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ddar/Secret;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    const-string v5, "DUALDAR_MGR_SERVICE"

    iget-object v6, v3, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->encryptMessageFor(Ljava/lang/String;[B)[B

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "DualDarManager"

    const-string v6, "PUSH_SECRET_REQUEST failed to encrypt secrets"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-static {v5}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    new-instance v5, Lcom/samsung/android/knox/ddar/Secret;

    iget-object v3, v3, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/knox/ddar/Secret;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const-string p2, "INNER_LAYER_SECRET"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PUSH_SECRET_REQUEST"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommandSecurely(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ddar/Secret;

    iget-object v0, v0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    const-string p2, "dual_dar_response"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    const-string p2, "DualDarManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUSH_SECRET_REQUEST response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public teardownSecureSession()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    const-string v2, "KNOXCORE_PROXY_AGENT"

    const-string v3, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->terminateSecureSession(Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DualDarManager"

    const-string v1, "Failed to teardown secure connection from SDK to KnoxCore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
