.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r bidi(I[C[B)I
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-lt v1, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x7e

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x7f

    :goto_0
    new-instance v2, Landroid/icu/text/Bidi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/Bidi;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {v2, v3}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    :goto_2
    return v4

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 19

    move/from16 v0, p5

    if-nez v0, :cond_0

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_0
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    aget-byte v5, p1, p2

    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v8, p2, 0x1

    add-int v9, p2, v0

    :goto_1
    if-ge v8, v9, :cond_3

    aget-byte v10, p1, v8

    if-eq v10, v5, :cond_2

    move v5, v10

    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move/from16 v8, p5

    and-int/lit8 v9, v5, 0x1

    and-int/lit8 v10, v4, 0x1

    if-eq v9, v10, :cond_7

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_6

    add-int v9, p4, v8

    aget-char v9, p3, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v8, v2

    if-eq v8, v0, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    if-ne v7, v2, :cond_9

    if-ne v6, v4, :cond_9

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_8
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_9
    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    move v10, v6

    shl-int/lit8 v11, v6, 0x1a

    const/4 v12, 0x1

    move/from16 v13, p2

    move v5, v6

    move/from16 v14, p2

    add-int v15, p2, v8

    :goto_4
    if-ge v14, v15, :cond_d

    aget-byte v1, p1, v14

    if-eq v1, v5, :cond_c

    move v5, v1

    if-le v1, v10, :cond_a

    move v10, v1

    goto :goto_5

    :cond_a
    if-ge v1, v6, :cond_b

    move v6, v1

    :cond_b
    :goto_5
    add-int/lit8 v17, v12, 0x1

    sub-int v18, v14, v13

    or-int v18, v18, v11

    aput v18, v9, v12

    add-int/lit8 v12, v17, 0x1

    sub-int v18, v14, p2

    aput v18, v9, v17

    shl-int/lit8 v11, v5, 0x1a

    move v13, v14

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_d
    add-int v1, p2, v8

    sub-int/2addr v1, v13

    or-int/2addr v1, v11

    aput v1, v9, v12

    if-ge v8, v0, :cond_e

    add-int/2addr v12, v2

    aput v8, v9, v12

    add-int/2addr v12, v2

    sub-int v1, v0, v8

    shl-int/lit8 v14, v4, 0x1a

    or-int/2addr v1, v14

    aput v1, v9, v12

    :cond_e
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v4, :cond_10

    add-int/lit8 v6, v6, 0x1

    if-le v10, v6, :cond_f

    move v1, v2

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    goto :goto_7

    :cond_10
    if-le v7, v2, :cond_11

    move v1, v2

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_16

    add-int/lit8 v2, v10, -0x1

    :goto_8
    if-lt v2, v6, :cond_16

    const/4 v12, 0x0

    :goto_9
    array-length v13, v9

    if-ge v12, v13, :cond_15

    aget v13, v9, v12

    aget-byte v13, p1, v13

    if-lt v13, v2, :cond_14

    add-int/lit8 v13, v12, 0x2

    :goto_a
    array-length v14, v9

    if-ge v13, v14, :cond_12

    aget v14, v9, v13

    aget-byte v14, p1, v14

    if-lt v14, v2, :cond_12

    add-int/lit8 v13, v13, 0x2

    goto :goto_a

    :cond_12
    move v14, v12

    add-int/lit8 v15, v13, -0x2

    :goto_b
    if-ge v14, v15, :cond_13

    aget v16, v9, v14

    aget v17, v9, v15

    aput v17, v9, v14

    aput v16, v9, v15

    add-int/lit8 v17, v14, 0x1

    aget v16, v9, v17

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    aget v18, v9, v18

    aput v18, v9, v17

    add-int/lit8 v17, v15, 0x1

    aput v16, v9, v17

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, -0x2

    goto :goto_b

    :cond_13
    add-int/lit8 v12, v13, 0x2

    :cond_14
    add-int/lit8 v12, v12, 0x2

    goto :goto_9

    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_16
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v2
.end method
