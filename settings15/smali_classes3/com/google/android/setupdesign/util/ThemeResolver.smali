.class public final Lcom/google/android/setupdesign/util/ThemeResolver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;


# instance fields
.field public final defaultTheme:I

.field public final oldestSupportedTheme:Ljava/lang/String;

.field public final useDayNight:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    return-void
.end method

.method public static getThemeRes(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "material"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "glif_v4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "glif_v4_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "material_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p0, 0x7f150494

    return p0

    :pswitch_1
    const p0, 0x7f15049e

    return p0

    :pswitch_2
    const p0, 0x7f15049b

    return p0

    :pswitch_3
    const p0, 0x7f150498

    return p0

    :pswitch_4
    const p0, 0x7f150495

    return p0

    :pswitch_5
    const p0, 0x7f150492

    return p0

    :pswitch_6
    const p0, 0x7f15049d

    return p0

    :pswitch_7
    const p0, 0x7f15049a

    return p0

    :pswitch_8
    const p0, 0x7f1504a0

    return p0

    :pswitch_9
    const p0, 0x7f150497

    return p0

    :cond_a
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;Z)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v3, "glif_light"

    const-string v5, "material"

    const/4 v6, 0x7

    const-string v7, "glif_v4"

    const/4 v8, 0x6

    const-string v9, "glif_v3"

    const-string v10, "glif_v2"

    const-string v11, "glif"

    const-string v12, "glif_v4_light"

    const-string v13, "glif_v3_light"

    const-string v14, "material_light"

    const-string v15, "glif_v2_light"

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    iget-boolean v2, v0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    if-eqz v2, :cond_b

    if-nez p2, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move/from16 v2, v22

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v2, v16

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v2, v17

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v2, v18

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v2, v19

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v2, v20

    goto :goto_1

    :sswitch_9
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v2, v21

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v2, 0x7f150493

    goto :goto_3

    :pswitch_1
    const v2, 0x7f15049c

    goto :goto_3

    :pswitch_2
    const v2, 0x7f150499

    goto :goto_3

    :pswitch_3
    const v2, 0x7f15049f

    goto :goto_3

    :pswitch_4
    const v2, 0x7f150496

    goto :goto_3

    :cond_a
    :goto_2
    move/from16 v2, v21

    goto :goto_3

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    move-result v2

    :goto_3
    iget v4, v0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    if-nez v2, :cond_c

    if-nez v2, :cond_c

    return v4

    :cond_c
    iget-object v0, v0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    if-eqz v0, :cond_22

    if-eqz v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    :goto_4
    move/from16 v1, v22

    goto/16 :goto_5

    :sswitch_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const/16 v1, 0x9

    goto/16 :goto_5

    :sswitch_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_5

    :sswitch_c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_f
    move v1, v6

    goto :goto_5

    :sswitch_d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_4

    :cond_10
    move v1, v8

    goto :goto_5

    :sswitch_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    move/from16 v1, v16

    goto :goto_5

    :sswitch_f
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    move/from16 v1, v17

    goto :goto_5

    :sswitch_10
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    move/from16 v1, v18

    goto :goto_5

    :sswitch_11
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    move/from16 v1, v19

    goto :goto_5

    :sswitch_12
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    move/from16 v1, v20

    goto :goto_5

    :sswitch_13
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    move/from16 v1, v21

    :goto_5
    packed-switch v1, :pswitch_data_1

    goto :goto_6

    :pswitch_5
    move/from16 v1, v19

    goto :goto_7

    :pswitch_6
    move/from16 v1, v16

    goto :goto_7

    :pswitch_7
    move/from16 v1, v17

    goto :goto_7

    :pswitch_8
    move/from16 v1, v20

    goto :goto_7

    :pswitch_9
    move/from16 v1, v18

    goto :goto_7

    :cond_17
    :goto_6
    move/from16 v1, v22

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_2

    :goto_8
    move/from16 v21, v22

    goto/16 :goto_9

    :sswitch_14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_8

    :cond_18
    const/16 v21, 0x9

    goto/16 :goto_9

    :sswitch_15
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_8

    :cond_19
    const/16 v21, 0x8

    goto :goto_9

    :sswitch_16
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_8

    :cond_1a
    move/from16 v21, v6

    goto :goto_9

    :sswitch_17
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_8

    :cond_1b
    move/from16 v21, v8

    goto :goto_9

    :sswitch_18
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_8

    :cond_1c
    move/from16 v21, v16

    goto :goto_9

    :sswitch_19
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_8

    :cond_1d
    move/from16 v21, v17

    goto :goto_9

    :sswitch_1a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_8

    :cond_1e
    move/from16 v21, v18

    goto :goto_9

    :sswitch_1b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_8

    :cond_1f
    move/from16 v21, v19

    goto :goto_9

    :sswitch_1c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_8

    :cond_20
    move/from16 v21, v20

    goto :goto_9

    :sswitch_1d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_8

    :cond_21
    :goto_9
    packed-switch v21, :pswitch_data_2

    move/from16 v16, v22

    goto :goto_a

    :pswitch_a
    move/from16 v16, v19

    goto :goto_a

    :pswitch_b
    move/from16 v16, v17

    goto :goto_a

    :pswitch_c
    move/from16 v16, v20

    goto :goto_a

    :pswitch_d
    move/from16 v16, v18

    :goto_a
    :pswitch_e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-gez v0, :cond_22

    return v4

    :cond_22
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_13
        -0x4bb9bc02 -> :sswitch_12
        -0x49f8f44f -> :sswitch_11
        -0x1512b90e -> :sswitch_10
        0x3074c2 -> :sswitch_f
        0x6e4af19 -> :sswitch_e
        0x6e4af1a -> :sswitch_d
        0x6e4af1b -> :sswitch_c
        0x11d36527 -> :sswitch_b
        0x2dc1f359 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7edf2f90 -> :sswitch_1d
        -0x4bb9bc02 -> :sswitch_1c
        -0x49f8f44f -> :sswitch_1b
        -0x1512b90e -> :sswitch_1a
        0x3074c2 -> :sswitch_19
        0x6e4af19 -> :sswitch_18
        0x6e4af1a -> :sswitch_17
        0x6e4af1b -> :sswitch_16
        0x11d36527 -> :sswitch_15
        0x2dc1f359 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method
