.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE_SIZE:I = 0x4

.field private static final greylist-max-o CACHE_SIZE:I = 0xa

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArraySet"

.field static greylist-max-o sBaseCache:[Ljava/lang/Object;

.field private static final blacklist sBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sBaseCacheSize:I

.field static greylist-max-o sTwiceBaseCache:[Ljava/lang/Object;

.field private static final blacklist sTwiceBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sTwiceBaseCacheSize:I


# instance fields
.field greylist-max-p mArray:[Ljava/lang/Object;

.field private greylist-max-o mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field greylist-max-p mHashes:[I

.field private final greylist-max-o mIdentityHashCode:Z

.field greylist-max-p mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-nez p1, :cond_0

    sget-object v0, Landroid/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-p allocArrays(I)V
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    if-eqz v5, :cond_0

    aput-object v1, v4, v2

    aput-object v1, v4, v3

    sget v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v5

    :goto_0
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sput v3, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_4

    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    if-eqz v5, :cond_3

    aput-object v1, v4, v2

    aput-object v1, v4, v3

    sget v5, Landroid/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0

    return-void

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    sput v3, Landroid/util/ArraySet;->sBaseCacheSize:I

    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_5
    :goto_2
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private blacklist binarySearch([II)I
    .locals 2

    :try_start_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {p1, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static greylist-max-p freeArrays([I[Ljava/lang/Object;I)V
    .locals 7

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_1

    sget-object v1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-lt v1, v3, :cond_0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    if-ge v1, v5, :cond_4

    sget-object v1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    add-int/lit8 v1, p2, -0x1

    :goto_1
    if-lt v1, v3, :cond_3

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    sput-object p1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private blacklist getNewShrunkenSize()I
    .locals 2

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method private greylist-max-p indexOf(Ljava/lang/Object;I)I
    .locals 5

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-direct {p0, v1, p2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    not-int v3, v2

    return v3
.end method

.method private greylist-max-p indexOfNull()I
    .locals 5

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    not-int v3, v2

    return v3
.end method

.method private blacklist shouldShrink()Z
    .locals 2

    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    return v3

    :cond_2
    not-int v2, v2

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v0, v4, :cond_7

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    if-lt v0, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    nop

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v4}, Landroid/util/ArraySet;->allocArrays(I)V

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v7, :cond_6

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_5

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v8, v6

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-static {v5, v6, v0}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_9

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v1, v3, v2

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    return v4

    :cond_9
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist addAll(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_1

    if-lez v0, :cond_2

    iget-object v1, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public greylist-max-o append(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    nop

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    if-lez v1, :cond_2

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-le v3, v2, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v2, v3, v1

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v1

    return-void

    :cond_3
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api clear()V
    .locals 4

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    sget-object v3, Landroid/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    sget-object v3, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist ensureCapacity(I)V
    .locals 6

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v3}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_1
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    return v0

    :catch_0
    move-exception v0

    return v2

    :catch_1
    move-exception v0

    return v2

    :cond_4
    return v2
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public whitelist indexOf(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeAll(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist removeAt(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v3

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    if-lez p1, :cond_3

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-ge p1, v2, :cond_4

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    sub-int v8, v2, p1

    invoke-static {v4, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    sub-int v8, v2, p1

    invoke-static {v5, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    goto :goto_1

    :cond_5
    if-ge p1, v2, :cond_6

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    sub-int v6, v2, p1

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    sub-int v6, v2, p1

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :goto_1
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_7

    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    :goto_2
    return-object v1

    :cond_7
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eq v0, v3, :cond_2

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v5, v3

    aput-object v5, v4, v0

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v5, v5, v3

    aput v5, v4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return v4

    :cond_5
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v3

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    :goto_2
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return v4
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist valueAtUnchecked(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
