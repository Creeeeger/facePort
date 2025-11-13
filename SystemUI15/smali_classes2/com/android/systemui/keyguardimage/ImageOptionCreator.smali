.class public final Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_1
    new-instance v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    invoke-direct {v12}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    iget-object v13, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    new-array v14, v9, [Z

    aput-boolean v8, v14, v8

    aput-boolean v8, v14, v10

    aput-boolean v8, v14, v7

    aput-boolean v8, v14, v6

    const-string v15, "&"

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v0, v8

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v11, "ImageOptionCreator"

    if-eqz v16, :cond_25

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    if-eq v9, v7, :cond_2

    :goto_1
    const/4 v9, 0x4

    goto :goto_0

    :cond_2
    aget-object v9, v5, v8

    aget-object v5, v5, v10

    const-string v7, "createImageOption() key: "

    const-string v3, ", value: "

    invoke-static {v7, v9, v3, v5}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v11, v3, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "true"

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_2
    const/4 v7, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "display"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "color_main"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "colorClock"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "legibilityColor"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "paletteIndex"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_5
    const-string/jumbo v7, "type"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_6
    const-string/jumbo v7, "white_theme"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_7
    const-string v7, "color_bg_main"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    move v7, v4

    goto :goto_3

    :sswitch_8
    const-string v7, "coverClockColor"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_2

    :cond_b
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_9
    const-string v7, "fontColor"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    move v7, v6

    goto :goto_3

    :sswitch_a
    const-string/jumbo v7, "useScreenshot"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_2

    :cond_d
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_b
    const-string v7, "color_bg_second"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    :cond_e
    move v7, v10

    goto :goto_3

    :sswitch_c
    const-string v7, "color_second"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_2

    :cond_f
    move v7, v8

    :goto_3
    packed-switch v7, :pswitch_data_0

    :cond_10
    :goto_4
    const/16 v7, 0xa

    :cond_11
    :goto_5
    const/4 v9, 0x2

    goto/16 :goto_9

    :pswitch_0
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_12
    if-eqz v5, :cond_10

    const-string/jumbo v3, "virtual"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0x21

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    goto :goto_4

    :pswitch_1
    if-nez v0, :cond_10

    move v3, v0

    move v0, v8

    const/16 v7, 0xa

    const/4 v9, 0x2

    :goto_6
    const/4 v11, -0x1

    goto/16 :goto_a

    :pswitch_2
    iput-boolean v10, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_13
    invoke-static {v5}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput-object v5, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto :goto_4

    :pswitch_3
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_14
    invoke-static {v5}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    goto :goto_4

    :pswitch_4
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_15
    invoke-static {v5}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    goto :goto_4

    :pswitch_5
    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iput v10, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto :goto_4

    :cond_16
    const-string v3, "cover_wallpaper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iput v4, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/16 v3, 0x11

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    goto :goto_4

    :cond_17
    const-string v3, "all"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iput v6, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto/16 :goto_4

    :cond_18
    const-string v3, "clockColor"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    iput v9, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    iput-boolean v10, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    :cond_19
    invoke-static {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    iput-object v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1a
    const/16 v7, 0xa

    const-string v3, "clock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    iput v9, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_23

    :cond_1b
    invoke-static {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    iput-object v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_9

    :cond_1c
    const/4 v9, 0x2

    const-string v3, "cover"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x4

    iput v11, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_23

    :cond_1d
    invoke-static {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    iput-object v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_9

    :pswitch_6
    const/16 v7, 0xa

    const/4 v9, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "on"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_1e
    move v0, v8

    :goto_7
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1f

    const v3, -0xbababb

    aput v3, v13, v0

    add-int/2addr v0, v10

    goto :goto_7

    :cond_1f
    move v3, v10

    :goto_8
    const/4 v0, -0x1

    goto/16 :goto_6

    :pswitch_7
    const/16 v7, 0xa

    const/4 v9, 0x2

    if-nez v0, :cond_23

    move v3, v0

    move v0, v9

    goto/16 :goto_6

    :pswitch_8
    const/16 v7, 0xa

    const/4 v9, 0x2

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_20
    invoke-static {v5}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    goto :goto_9

    :pswitch_9
    const/16 v7, 0xa

    const/4 v9, 0x2

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    invoke-static {v5}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v3, :cond_22

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    goto :goto_9

    :cond_22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    goto :goto_9

    :pswitch_a
    const/16 v7, 0xa

    const/4 v9, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useScreenshot:Z

    goto :goto_9

    :pswitch_b
    const/16 v7, 0xa

    const/4 v9, 0x2

    if-nez v0, :cond_23

    move v3, v0

    move v0, v6

    goto/16 :goto_6

    :pswitch_c
    const/16 v7, 0xa

    const/4 v9, 0x2

    if-nez v0, :cond_23

    move v3, v0

    move v0, v10

    goto/16 :goto_6

    :cond_23
    :goto_9
    move v3, v0

    goto :goto_8

    :goto_a
    if-le v0, v11, :cond_24

    const/16 v4, 0x10

    :try_start_0
    invoke-static {v5, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v13, v0

    aput-boolean v10, v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_b
    move v0, v3

    move v7, v9

    const/4 v4, 0x5

    goto/16 :goto_1

    :cond_25
    if-nez v0, :cond_27

    move v0, v8

    :goto_c
    const/4 v3, 0x4

    if-ge v0, v3, :cond_27

    aget-boolean v3, v14, v0

    if-nez v3, :cond_26

    iput-boolean v10, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    goto :goto_d

    :cond_26
    add-int/2addr v0, v10

    goto :goto_c

    :cond_27
    :goto_d
    if-eqz p2, :cond_28

    return-object v12

    :cond_28
    iget v0, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_29

    move v3, v10

    goto :goto_e

    :cond_29
    move v3, v8

    :goto_e
    invoke-static {v1, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v3, :cond_2a

    iget v4, v0, Landroid/graphics/Point;->x:I

    :cond_2a
    if-eqz v3, :cond_2b

    iget v5, v0, Landroid/graphics/Point;->y:I

    :cond_2b
    iget v6, v0, Landroid/graphics/Point;->x:I

    iput v6, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realHeight:I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v10, :cond_2c

    goto :goto_f

    :cond_2c
    move v10, v8

    :goto_f
    iput-boolean v10, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, "/portrait"

    if-nez v1, :cond_35

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto/16 :goto_14

    :cond_2d
    const-string v1, "/landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iput v5, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v4, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto/16 :goto_15

    :cond_2e
    const-string v1, "/custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :try_start_1
    const-string/jumbo v0, "width"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "height"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    move v1, v8

    :goto_10
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v8

    :goto_11
    if-eqz v1, :cond_2f

    if-nez v0, :cond_30

    :cond_2f
    const/4 v2, 0x0

    goto :goto_13

    :cond_30
    const/4 v2, 0x0

    if-ge v1, v0, :cond_31

    if-gt v1, v4, :cond_31

    if-gt v0, v5, :cond_31

    int-to-float v5, v1

    int-to-float v6, v4

    div-float/2addr v5, v6

    iput v8, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    goto :goto_12

    :cond_31
    if-le v1, v0, :cond_32

    if-gt v1, v5, :cond_32

    if-gt v0, v4, :cond_32

    int-to-float v6, v1

    int-to-float v5, v5

    div-float v5, v6, v5

    goto :goto_12

    :cond_32
    move v5, v2

    :goto_12
    if-eqz v3, :cond_33

    const-string v3, "createImageOption(), scale for cover"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v11, v3, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v3, v1

    int-to-float v4, v4

    div-float v5, v3, v4

    :cond_33
    cmpl-float v2, v5, v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    return-object v2

    :cond_34
    iput v5, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    iput v1, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v0, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_15

    :goto_13
    return-object v2

    :cond_35
    :goto_14
    iput v4, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v5, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iput v8, v12, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    :cond_36
    :goto_15
    return-object v12

    :goto_16
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70ca7330 -> :sswitch_c
        -0x6d5ea82e -> :sswitch_b
        -0x6d16d5b3 -> :sswitch_a
        -0x5d5573ac -> :sswitch_9
        -0x536b0cf4 -> :sswitch_8
        -0x289da769 -> :sswitch_7
        -0x223bddcd -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x11487717 -> :sswitch_4
        0x483d5c5f -> :sswitch_3
        0x4b50e26b -> :sswitch_2
        0x4cdbb515 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v0, "isNumeric() return false - "

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ImageOptionCreator"

    invoke-static {v2, p0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
