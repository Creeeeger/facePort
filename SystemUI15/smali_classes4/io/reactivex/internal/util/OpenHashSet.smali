.class public final Lio/reactivex/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public keys:[Ljava/lang/Object;

.field public final loadFactor:F

.field public mask:I

.field public maxSize:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float v0, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x61c88647

    mul-int/2addr v2, v3

    ushr-int/lit8 v4, v2, 0x10

    xor-int/2addr v2, v4

    and-int/2addr v2, v1

    aget-object v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v1

    aget-object v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_2
    :goto_0
    aput-object p1, v0, v2

    iget p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    if-lt p1, v0, :cond_7

    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v2, -0x1

    new-array v5, v2, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, p1, -0x1

    if-eqz p1, :cond_6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    aget-object p1, v0, v1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/2addr p1, v3

    ushr-int/lit8 v7, p1, 0x10

    xor-int/2addr p1, v7

    and-int/2addr p1, v4

    aget-object v7, v5, p1

    if-eqz v7, :cond_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v4

    aget-object v7, v5, p1

    if-nez v7, :cond_4

    :cond_5
    aget-object v7, v0, v1

    aput-object v7, v5, p1

    move p1, v6

    goto :goto_1

    :cond_6
    iput v4, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float p1, v2

    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    iput-object v5, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final removeEntry(II[Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    :goto_0
    add-int/lit8 p0, p1, 0x1

    :goto_1
    and-int/2addr p0, p2

    aget-object v0, p3, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    aput-object p0, p3, p1

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x61c88647

    mul-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/2addr v1, p2

    if-gt p1, p0, :cond_1

    if-ge p1, v1, :cond_2

    if-le v1, p0, :cond_3

    goto :goto_2

    :cond_1
    if-lt p1, v1, :cond_3

    if-le v1, p0, :cond_3

    :cond_2
    :goto_2
    aput-object v0, p3, p1

    move p1, p0

    goto :goto_0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1
.end method
