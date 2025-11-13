.class public Lkotlin/collections/ArraysKt__ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysJVMKt;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/ArraysKt__ArraysJVMKt;-><init>()V

    return-void
.end method

.method public static contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1b

    aget-object v4, p0, v3

    aget-object v5, p1, v3

    if-ne v4, v5, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz v4, :cond_1a

    if-nez v5, :cond_3

    goto/16 :goto_6

    :cond_3
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v4, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt__ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_4
    instance-of v6, v4, [B

    if-eqz v6, :cond_5

    instance-of v6, v5, [B

    if-eqz v6, :cond_5

    check-cast v4, [B

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_5
    instance-of v6, v4, [S

    if-eqz v6, :cond_6

    instance-of v6, v5, [S

    if-eqz v6, :cond_6

    check-cast v4, [S

    check-cast v5, [S

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_6
    instance-of v6, v4, [I

    if-eqz v6, :cond_7

    instance-of v6, v5, [I

    if-eqz v6, :cond_7

    check-cast v4, [I

    check-cast v5, [I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_7
    instance-of v6, v4, [J

    if-eqz v6, :cond_8

    instance-of v6, v5, [J

    if-eqz v6, :cond_8

    check-cast v4, [J

    check-cast v5, [J

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_8
    instance-of v6, v4, [F

    if-eqz v6, :cond_9

    instance-of v6, v5, [F

    if-eqz v6, :cond_9

    check-cast v4, [F

    check-cast v5, [F

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_9
    instance-of v6, v4, [D

    if-eqz v6, :cond_a

    instance-of v6, v5, [D

    if-eqz v6, :cond_a

    check-cast v4, [D

    check-cast v5, [D

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_a
    instance-of v6, v4, [C

    if-eqz v6, :cond_b

    instance-of v6, v5, [C

    if-eqz v6, :cond_b

    check-cast v4, [C

    check-cast v5, [C

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_b
    instance-of v6, v4, [Z

    if-eqz v6, :cond_c

    instance-of v6, v5, [Z

    if-eqz v6, :cond_c

    check-cast v4, [Z

    check-cast v5, [Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_c
    instance-of v6, v4, Lkotlin/UByteArray;

    const/4 v7, 0x0

    if-eqz v6, :cond_f

    instance-of v6, v5, Lkotlin/UByteArray;

    if-eqz v6, :cond_f

    check-cast v4, Lkotlin/UByteArray;

    iget-object v4, v4, Lkotlin/UByteArray;->storage:[B

    check-cast v5, Lkotlin/UByteArray;

    iget-object v5, v5, Lkotlin/UByteArray;->storage:[B

    if-nez v4, :cond_d

    move-object v4, v7

    :cond_d
    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    move-object v7, v5

    :goto_1
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_f
    instance-of v6, v4, Lkotlin/UShortArray;

    if-eqz v6, :cond_12

    instance-of v6, v5, Lkotlin/UShortArray;

    if-eqz v6, :cond_12

    check-cast v4, Lkotlin/UShortArray;

    iget-object v4, v4, Lkotlin/UShortArray;->storage:[S

    check-cast v5, Lkotlin/UShortArray;

    iget-object v5, v5, Lkotlin/UShortArray;->storage:[S

    if-nez v4, :cond_10

    move-object v4, v7

    :cond_10
    if-nez v5, :cond_11

    goto :goto_2

    :cond_11
    move-object v7, v5

    :goto_2
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_12
    instance-of v6, v4, Lkotlin/UIntArray;

    if-eqz v6, :cond_15

    instance-of v6, v5, Lkotlin/UIntArray;

    if-eqz v6, :cond_15

    check-cast v4, Lkotlin/UIntArray;

    iget-object v4, v4, Lkotlin/UIntArray;->storage:[I

    check-cast v5, Lkotlin/UIntArray;

    iget-object v5, v5, Lkotlin/UIntArray;->storage:[I

    if-nez v4, :cond_13

    move-object v4, v7

    :cond_13
    if-nez v5, :cond_14

    goto :goto_3

    :cond_14
    move-object v7, v5

    :goto_3
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_15
    instance-of v6, v4, Lkotlin/ULongArray;

    if-eqz v6, :cond_18

    instance-of v6, v5, Lkotlin/ULongArray;

    if-eqz v6, :cond_18

    check-cast v4, Lkotlin/ULongArray;

    iget-object v4, v4, Lkotlin/ULongArray;->storage:[J

    check-cast v5, Lkotlin/ULongArray;

    iget-object v5, v5, Lkotlin/ULongArray;->storage:[J

    if-nez v4, :cond_16

    move-object v4, v7

    :cond_16
    if-nez v5, :cond_17

    goto :goto_4

    :cond_17
    move-object v7, v5

    :goto_4
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_18
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    return v1

    :cond_19
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1a
    :goto_6
    return v1

    :cond_1b
    return v0

    :cond_1c
    :goto_7
    return v1
.end method
