.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;
.super Ljava/lang/Object;
.source "ApexManifest.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ApexManifest"


# instance fields
.field private queue_:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->version_:J

    return-void
.end method

.method public static getFromApex(Ljava/lang/String;)Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;
    .locals 7

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 28
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 33
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v5, "apex_manifest.pb"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v3, [B

    .line 37
    :goto_1
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    .line 44
    :try_start_2
    sget-object v5, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v4, v1

    .line 48
    :goto_3
    :try_start_4
    sget-object v5, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_3

    .line 53
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    if-ne v2, v3, :cond_4

    .line 60
    new-instance p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;-><init>(Ljava/util/Queue;)V

    return-object p0

    :cond_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_5

    .line 53
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :cond_5
    :goto_6
    throw p0
.end method

.method private handleVersion(I)J
    .locals 5

    if-eqz p1, :cond_0

    .line 67
    sget-object p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->TAG:Ljava/lang/String;

    const-string p1, "Field 2 is not varint type"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    :cond_2
    return-wide v0
.end method

.method private skipOtherFields(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 99
    sget-object p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->TAG:Ljava/lang/String;

    const-string p1, "Wire type is wrong"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x80

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_1
    if-ge v0, p1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public getVersion()J
    .locals 5

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->version_:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->handleVersion(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->version_:J

    return-wide v0

    .line 119
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->skipOtherFields(I)V

    goto :goto_0

    :cond_2
    return-wide v2
.end method
