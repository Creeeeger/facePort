.class public final Landroidx/compose/runtime/internal/ThreadMap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keys:[J

.field public final size:I

.field public final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[J[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/internal/ThreadMap;->size:I

    iput-object p2, p0, Landroidx/compose/runtime/internal/ThreadMap;->keys:[J

    iput-object p3, p0, Landroidx/compose/runtime/internal/ThreadMap;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final find(J)I
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/internal/ThreadMap;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object p0, p0, Landroidx/compose/runtime/internal/ThreadMap;->keys:[J

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v1, v2, v0

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v3, p0, v1

    sub-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0

    :cond_3
    aget-wide v3, p0, v2

    cmp-long p0, v3, p1

    if-nez p0, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    cmp-long p0, v3, p1

    if-lez p0, :cond_5

    const/4 v1, -0x2

    :cond_5
    :goto_1
    return v1
.end method

.method public final newWith(Ljava/lang/Object;J)Landroidx/compose/runtime/internal/ThreadMap;
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/internal/ThreadMap;->values:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v5, 0x1

    new-array v4, v2, [J

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x1

    if-le v2, v7, :cond_7

    move v7, v3

    :goto_1
    iget-object v8, v0, Landroidx/compose/runtime/internal/ThreadMap;->keys:[J

    iget v9, v0, Landroidx/compose/runtime/internal/ThreadMap;->size:I

    if-ge v3, v2, :cond_4

    if-ge v7, v9, :cond_4

    aget-wide v10, v8, v7

    aget-object v12, v1, v7

    cmp-long v13, v10, p2

    if-lez v13, :cond_2

    aput-wide p2, v4, v3

    aput-object p1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz v12, :cond_3

    aput-wide v10, v4, v3

    aput-object v12, v6, v3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v7, v9, :cond_5

    aput-wide p2, v4, v5

    aput-object p1, v6, v5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge v3, v2, :cond_8

    aget-wide v9, v8, v7

    aget-object v0, v1, v7

    if-eqz v0, :cond_6

    aput-wide v9, v4, v3

    aput-object v0, v6, v3

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    aput-wide p2, v4, v3

    aput-object p1, v6, v3

    :cond_8
    :goto_4
    new-instance v0, Landroidx/compose/runtime/internal/ThreadMap;

    invoke-direct {v0, v2, v4, v6}, Landroidx/compose/runtime/internal/ThreadMap;-><init>(I[J[Ljava/lang/Object;)V

    return-object v0
.end method
