.class public Landroid/os/RedactingFileDescriptor;
.super Ljava/lang/Object;
.source "RedactingFileDescriptor.java"


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "RedactingFileDescriptor"


# instance fields
.field private final blacklist mCallback:Landroid/os/ProxyFileDescriptorCallback;

.field private volatile blacklist mFreeOffsets:[J

.field private blacklist mInner:Ljava/io/FileDescriptor;

.field private blacklist mOuter:Landroid/os/ParcelFileDescriptor;

.field private volatile blacklist mRedactRanges:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFreeOffsets(Landroid/os/RedactingFileDescriptor;)[J
    .locals 0

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mFreeOffsets:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J
    .locals 0

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRedactRanges(Landroid/os/RedactingFileDescriptor;[J)V
    .locals 0

    iput-object p1, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/io/File;I[J[J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/os/RedactingFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RedactingFileDescriptor$1;-><init>(Landroid/os/RedactingFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-static {p4}, Landroid/os/RedactingFileDescriptor;->checkRangesArgument([J)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    iput-object p5, p0, Landroid/os/RedactingFileDescriptor;->mFreeOffsets:[J

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/RedactingFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, p3, v1}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static blacklist checkRangesArgument([J)[J
    .locals 5

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p0, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist open(Landroid/content/Context;Ljava/io/File;I[J[J)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Landroid/os/RedactingFileDescriptor;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/RedactingFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/File;I[J[J)V

    iget-object v0, v6, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public static blacklist removeRange([JJJ)[J
    .locals 5

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-gtz v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    aget-wide v3, p0, v1

    aput-wide v3, v0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    aput-wide p1, v0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aput-wide p3, v0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    aput-wide v3, v0, v2

    goto :goto_2

    :cond_2
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    aget-wide v2, p0, v1

    cmp-long v2, p3, v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p3, v2

    if-gtz v2, :cond_3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v3, p0, v1

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_1

    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v3, p0, v1

    aput-wide v3, v0, v2

    :goto_1
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_2

    :cond_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    aput-wide v3, v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
