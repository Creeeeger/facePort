.class public Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.super Ljava/lang/Object;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$HistoryVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$IdentitySetVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$CollectionVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$Prefix;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x2000

.field private static final blacklist FILE_MAGIC:I = 0x414e4554

.field public static final blacklist PREFIX_UID:Ljava/lang/String; = "uid"

.field public static final blacklist PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field public static final blacklist PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final blacklist sPrefixLegacyFileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    const-string/jumbo v4, "uid_tag"

    const-string/jumbo v5, "netstats_uid.bin"

    const-string/jumbo v0, "xt"

    const-string/jumbo v1, "netstats_xt.bin"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "netstats_uid.bin"

    invoke-static/range {v0 .. v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCollapsedLegacyType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return p0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getPlatformBaseDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private static blacklist getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static blacklist getPlatformSystemDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist readFullLongArray(Ljava/io/DataInput;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x414e4554

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/net/ProtocolException;

    goto :goto_4

    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-lt v1, v8, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_2

    :cond_0
    move v8, v9

    :goto_2
    nop

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v10

    new-instance v11, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v11, v4, v7, v8, v10}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v12

    if-nez v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    if-eq v9, p2, :cond_2

    invoke-virtual {p0, v11, v12}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    goto :goto_3

    :pswitch_1
    goto :goto_3

    :pswitch_2
    nop

    :goto_3
    goto :goto_5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p0, v1, p2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static blacklist readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readPlatformCollection(Ljava/lang/String;J)Landroid/net/NetworkStatsCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/net/NetworkStatsCollection$Builder;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStatsCollection$Builder;-><init>(J)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "uid_tag"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V

    :cond_1
    :goto_2
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0, v3}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V

    :cond_2
    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkStatsCollection$Builder;->build()Landroid/net/NetworkStatsCollection;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x19ebf4d5 -> :sswitch_1
        0x1c450 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x414e4554

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    new-instance v10, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    return-void

    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/android/internal/util/ArtFastDataInput;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/ArtFastDataInput;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static blacklist readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    const/4 v5, 0x3

    if-lt v1, v5, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    goto :goto_0

    :cond_0
    array-length v5, v4

    new-array v5, v5, [J

    :goto_0
    move-object v0, v5

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v6

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v8

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v9

    array-length v10, v4

    goto :goto_1

    :pswitch_1
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v4

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    array-length v6, v4

    new-array v6, v6, [J

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    array-length v8, v4

    new-array v8, v8, [J

    array-length v9, v4

    new-array v9, v9, [J

    array-length v10, v4

    nop

    :goto_1
    new-instance v11, Landroid/net/NetworkStatsHistory$Builder;

    invoke-direct {v11, v2, v3, v10}, Landroid/net/NetworkStatsHistory$Builder;-><init>(JI)V

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_1

    new-instance v28, Landroid/net/NetworkStatsHistory$Entry;

    aget-wide v14, v4, v12

    aget-wide v16, v0, v12

    aget-wide v18, v5, v12

    aget-wide v20, v6, v12

    aget-wide v22, v7, v12

    aget-wide v24, v8, v12

    aget-wide v26, v9, v12

    move-object/from16 v13, v28

    invoke-direct/range {v13 .. v27}, Landroid/net/NetworkStatsHistory$Entry;-><init>(JJJJJJJ)V

    invoke-virtual {v11, v13}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory$Builder;->build()Landroid/net/NetworkStatsHistory;

    move-result-object v12

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    if-lt v0, v8, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x2

    if-lt v0, v9, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x4

    if-lt v0, v10, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const/4 v10, 0x5

    if-lt v0, v10, :cond_5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v10

    goto :goto_4

    :cond_5
    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x6

    if-lt v0, v11, :cond_6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x7

    if-lt v0, v12, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    goto :goto_6

    :cond_7
    const/4 v12, -0x1

    :goto_6
    invoke-static {v5}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getCollapsedLegacyType(I)I

    move-result v13

    new-instance v14, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v14}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    invoke-virtual {v14, v13}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/net/NetworkIdentity$Builder;->setOemManaged(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v14

    if-nez v5, :cond_8

    const/4 v15, -0x1

    if-eq v6, v15, :cond_8

    invoke-virtual {v14, v6}, Landroid/net/NetworkIdentity$Builder;->setRatType(I)Landroid/net/NetworkIdentity$Builder;

    :cond_8
    invoke-virtual {v14}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v2
.end method

.method private static blacklist readVarLong(Ljava/io/DataInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    return-wide v1

    :cond_0
    nop

    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "malformed var long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist readVarLongArray(Ljava/io/DataInput;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-ltz v0, :cond_2

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLong(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
