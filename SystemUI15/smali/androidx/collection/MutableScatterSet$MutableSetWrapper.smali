.class public final Landroidx/collection/MutableScatterSet$MutableSetWrapper;
.super Landroidx/collection/ScatterSet$SetWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# instance fields
.field public final synthetic this$0:Landroidx/collection/MutableScatterSet;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableScatterSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, p1}, Landroidx/collection/ScatterSet$SetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    check-cast p1, Ljava/lang/Iterable;

    iget v0, p0, Landroidx/collection/ScatterSet;->_size:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object v1, v3, v2

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/collection/ScatterSet;->_size:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterSet;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1;-><init>(Landroidx/collection/MutableScatterSet;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    iget v1, v1, Landroidx/collection/ScatterSet;->_size:I

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const v8, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v7, v8

    shl-int/lit8 v8, v7, 0x10

    xor-int/2addr v7, v8

    and-int/lit8 v8, v7, 0x7f

    iget v9, v6, Landroidx/collection/ScatterSet;->_capacity:I

    ushr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    :goto_2
    iget-object v10, v6, Landroidx/collection/ScatterSet;->metadata:[J

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    aget-wide v13, v10, v11

    ushr-long/2addr v13, v12

    add-int/2addr v11, v4

    aget-wide v10, v10, v11

    rsub-int/lit8 v15, v12, 0x40

    shl-long/2addr v10, v15

    move v15, v5

    int-to-long v4, v12

    neg-long v4, v4

    const/16 v12, 0x3f

    shr-long/2addr v4, v12

    and-long/2addr v4, v10

    or-long/2addr v4, v13

    int-to-long v10, v8

    const-wide v12, 0x101010101010101L

    mul-long/2addr v10, v12

    xor-long/2addr v10, v4

    sub-long v12, v10, v12

    not-long v10, v10

    and-long/2addr v10, v12

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    :goto_3
    const-wide/16 v16, 0x0

    cmp-long v14, v10, v16

    if-eqz v14, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v14

    shr-int/lit8 v14, v14, 0x3

    add-int/2addr v14, v7

    and-int/2addr v14, v9

    iget-object v12, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aget-object v12, v12, v14

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    const-wide/16 v12, 0x1

    sub-long v12, v10, v12

    and-long/2addr v10, v12

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_3

    :cond_3
    not-long v10, v4

    const/4 v12, 0x6

    shl-long/2addr v10, v12

    and-long/2addr v4, v10

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v4, v10

    cmp-long v4, v4, v16

    if-eqz v4, :cond_4

    const/4 v14, -0x1

    :goto_4
    if-ltz v14, :cond_0

    invoke-virtual {v6, v14}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v5, v15, 0x8

    add-int/2addr v7, v5

    and-int/2addr v7, v9

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    iget v0, v0, Landroidx/collection/ScatterSet;->_size:I

    if-eq v1, v0, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    return v4
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 14

    iget-object p0, p0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableScatterSet;

    iget-object v0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    move v3, v2

    move v4, v3

    :goto_0
    aget-wide v5, v0, v3

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v3, v1

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v3, 0x3

    add-int/2addr v10, v9

    iget-object v11, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-interface {p1, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0, v10}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    const/4 v4, 0x1

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_5

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :cond_4
    move v4, v2

    :cond_5
    return v4
.end method
