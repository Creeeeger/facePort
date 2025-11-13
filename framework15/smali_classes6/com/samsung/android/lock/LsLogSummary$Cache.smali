.class Lcom/samsung/android/lock/LsLogSummary$Cache;
.super Ljava/lang/Object;
.source "LsLogSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lock/LsLogSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final blacklist mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCacheKey:Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetVersion(Lcom/samsung/android/lock/LsLogSummary$Cache;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lock/LsLogSummary$Cache;->getVersion()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;-><init>(Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey-IA;)V

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCacheKey:Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/lock/LsLogSummary$Cache-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lock/LsLogSummary$Cache;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist contains(ILjava/lang/String;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCacheKey:Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist copyOf([B)[B
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized blacklist getVersion()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist peek(ILjava/lang/String;I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCacheKey:Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist put(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;-><init>(Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey-IA;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/lock/LsLogSummary$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;-><init>(Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey-IA;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist remove(ILjava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCacheKey:Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized blacklist clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist hasFile(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method blacklist isFetched(I)Z
    .locals 2

    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method blacklist peekFile(Ljava/io/File;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/lock/LsLogSummary$Cache;->copyOf([B)[B

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized blacklist purgePath(Ljava/io/File;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    iget v4, v3, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->type:I

    if-ne v4, v2, :cond_0

    iget-object v4, v3, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist putFile(Ljava/io/File;[B)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/lock/LsLogSummary$Cache;->copyOf([B)[B

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/android/lock/LsLogSummary$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method blacklist putFileIfUnchanged(Ljava/io/File;[BI)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/android/lock/LsLogSummary$Cache;->copyOf([B)[B

    move-result-object v3

    const/4 v4, -0x1

    const/4 v1, 0x1

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/lock/LsLogSummary$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    return-void
.end method

.method blacklist setFetched(I)V
    .locals 3

    const-string v0, ""

    const-string v1, "true"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
