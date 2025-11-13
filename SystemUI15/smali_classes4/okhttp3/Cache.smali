.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final Companion:Lokhttp3/Cache$Companion;


# instance fields
.field public final cache:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem$Companion$SystemFileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lokhttp3/internal/cache/DiskLruCache;

    const/4 v4, 0x2

    sget-object v7, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    const v3, 0x31191

    move-object v0, v8

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V

    iput-object v8, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method public final remove$okhttp(Lokhttp3/Request;)V
    .locals 4

    iget-object p0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    iget-object p1, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    iget-object p1, p1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    const-string v0, "MD5"

    invoke-virtual {p1, v0}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :cond_1
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
