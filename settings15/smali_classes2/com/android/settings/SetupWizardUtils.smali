.class public abstract Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "glif_light"

    const-string v3, "glif_v4"

    const-string v5, "glif_v3"

    const/4 v6, 0x4

    const-string v7, "glif_v2"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-string v10, "glif_v4_light"

    const/4 v11, 0x1

    const-string v12, "glif_v3_light"

    const-string v13, "glif_v2_light"

    const/4 v14, -0x1

    const/4 v15, 0x0

    const-string v2, "theme"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_18

    const-string v4, "isSetupFlow"

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v4, 0x7f150276

    const v16, 0x7f15027e

    const v17, 0x7f150288

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static/range {p0 .. p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v2, v14

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_1

    :sswitch_4
    const-string v0, "glif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v8

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v9

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v11

    goto :goto_1

    :sswitch_7
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v15

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const v0, 0x7f150274

    return v0

    :pswitch_1
    const v0, 0x7f150289

    return v0

    :pswitch_2
    const v0, 0x7f15027f

    return v0

    :pswitch_3
    const v0, 0x7f150277

    return v0

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_2
    move v2, v14

    goto :goto_3

    :sswitch_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    move v2, v6

    goto :goto_3

    :sswitch_b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    move v2, v8

    goto :goto_3

    :sswitch_c
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    move v2, v9

    goto :goto_3

    :sswitch_d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    move v2, v11

    goto :goto_3

    :sswitch_e
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    move v2, v15

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_4
    const v0, 0x7f150275

    return v0

    :pswitch_5
    return v17

    :pswitch_6
    return v16

    :pswitch_7
    return v4

    :pswitch_8
    const v0, 0x7f15028a

    return v0

    :pswitch_9
    const v0, 0x7f150283

    return v0

    :pswitch_a
    const v0, 0x7f150279

    return v0

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    goto :goto_4

    :sswitch_f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_4

    :cond_12
    const/4 v14, 0x5

    goto :goto_4

    :sswitch_10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    move v14, v6

    goto :goto_4

    :sswitch_11
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    move v14, v8

    goto :goto_4

    :sswitch_12
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    move v14, v9

    goto :goto_4

    :sswitch_13
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    move v14, v11

    goto :goto_4

    :sswitch_14
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    move v14, v15

    :goto_4
    packed-switch v14, :pswitch_data_2

    goto :goto_5

    :pswitch_b
    return v17

    :pswitch_c
    return v16

    :pswitch_d
    return v4

    :cond_18
    :goto_5
    const v0, 0x7f150273

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x49f8f44f -> :sswitch_6
        -0x1512b90e -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x6e4af1b -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_e
        -0x49f8f44f -> :sswitch_d
        -0x1512b90e -> :sswitch_c
        0x6e4af19 -> :sswitch_b
        0x6e4af1a -> :sswitch_a
        0x6e4af1b -> :sswitch_9
        0x2dc1f359 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7edf2f90 -> :sswitch_14
        -0x49f8f44f -> :sswitch_13
        -0x1512b90e -> :sswitch_12
        0x6e4af19 -> :sswitch_11
        0x6e4af1a -> :sswitch_10
        0x6e4af1b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
