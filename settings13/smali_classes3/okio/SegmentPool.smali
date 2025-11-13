.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n+ 2 -Platform.kt\nokio/-Platform\n*L\n1#1,62:1\n28#2:63\n28#2:64\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n*L\n37#1:63\n52#1:64\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field private static byteCount:J

.field private static next:Lokio/Segment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recycle(Lokio/Segment;)V
    .locals 10
    .param p1    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 50
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_1

    return-void

    .line 28
    :cond_1
    monitor-enter p0

    .line 53
    :try_start_0
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2000

    int-to-long v4, v0

    add-long v6, v2, v4

    const-wide/32 v8, 0x10000

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    add-long/2addr v2, v4

    .line 54
    :try_start_1
    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 55
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 56
    iput v1, p1, Lokio/Segment;->limit:I

    .line 57
    iput v1, p1, Lokio/Segment;->pos:I

    .line 58
    sput-object p1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    const-string p0, "Failed requirement."

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final take()Lokio/Segment;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 41
    sget-wide v1, Lokio/SegmentPool;->byteCount:J

    const/16 v3, 0x2000

    int-to-long v3, v3

    sub-long/2addr v1, v3

    sput-wide v1, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-object v0

    .line 43
    :cond_0
    monitor-exit p0

    .line 45
    new-instance p0, Lokio/Segment;

    invoke-direct {p0}, Lokio/Segment;-><init>()V

    return-object p0

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method
