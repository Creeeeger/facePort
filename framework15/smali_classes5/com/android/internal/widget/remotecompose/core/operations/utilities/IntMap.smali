.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist findKey(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist hash(I)I
    .locals 0

    return p1
.end method

.method private blacklist insert(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput p1, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private blacklist resize()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v3, v3

    const/high16 v4, -0x80000000

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    if-eq v3, v4, :cond_2

    aget v3, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return-void
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->findKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->resize()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be NOT_PRESENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return v0
.end method
