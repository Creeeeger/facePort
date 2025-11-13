.class public abstract Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    invoke-direct {v4, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    sget-object v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    invoke-static {v1, v0, v3, v5}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v6, "autoMirrored"

    invoke-static {v2, v6}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-nez v6, :cond_0

    move/from16 v18, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move/from16 v18, v6

    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v6, "viewportWidth"

    const/4 v15, 0x7

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v6, v15, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v13

    const-string/jumbo v6, "viewportHeight"

    const/16 v12, 0x8

    invoke-virtual {v4, v5, v6, v12, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v6

    cmpg-float v9, v13, v14

    if-lez v9, :cond_2a

    cmpg-float v9, v6, v14

    if-lez v9, :cond_29

    const/4 v11, 0x3

    invoke-virtual {v5, v11, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v10, 0x2

    invoke-virtual {v5, v10, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    invoke-virtual {v4, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_3

    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5, v12, v14}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v14, v14, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_1

    sget-wide v20, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v21, v20

    goto :goto_1

    :cond_1
    invoke-static {v5, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-static {v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v21

    goto :goto_1

    :cond_2
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_1

    :cond_3
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_1
    const/4 v14, 0x6

    const/4 v10, -0x1

    invoke-virtual {v5, v14, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v4, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/16 v14, 0xd

    const/16 v8, 0x9

    if-eq v12, v10, :cond_4

    if-eq v12, v11, :cond_6

    if-eq v12, v7, :cond_4

    if-eq v12, v8, :cond_5

    packed-switch v12, :pswitch_data_0

    :cond_4
    move/from16 v23, v7

    goto :goto_2

    :pswitch_0
    const/16 v23, 0xc

    goto :goto_2

    :pswitch_1
    const/16 v12, 0xe

    move/from16 v23, v12

    goto :goto_2

    :pswitch_2
    move/from16 v23, v14

    goto :goto_2

    :cond_5
    move/from16 v23, v8

    goto :goto_2

    :cond_6
    move/from16 v23, v11

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    div-float v12, v9, v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v16, v9

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object v9, v5

    const/4 v8, 0x2

    move-object/from16 v10, v24

    move v7, v11

    move v11, v12

    const/4 v8, 0x1

    move/from16 v12, v16

    move v14, v6

    move v6, v15

    move-wide/from16 v15, v21

    move/from16 v17, v23

    move/from16 v19, v25

    invoke-direct/range {v9 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    const/4 v9, 0x0

    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v8, :cond_28

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v8, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-ne v10, v7, :cond_7

    goto/16 :goto_1f

    :cond_7
    iget-object v10, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const-string v11, "group"

    const/4 v12, 0x2

    if-eq v10, v12, :cond_b

    if-eq v10, v7, :cond_8

    move-object v2, v0

    :goto_4
    move v6, v8

    goto/16 :goto_6

    :cond_8
    iget-object v10, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_9

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    iget-object v11, v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v12, v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-static {v8, v12}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v12, v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    new-instance v13, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v14, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    iget-object v15, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    iget-object v6, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    iget v7, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    iget v8, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    iget v2, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    move/from16 v18, v9

    iget v9, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    move-object/from16 v19, v5

    iget v5, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    iget v0, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    iget v11, v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v2

    move/from16 v33, v9

    move/from16 v34, v5

    move/from16 v35, v0

    move/from16 v36, v11

    move-object/from16 v37, v15

    move-object/from16 v38, v6

    invoke-direct/range {v28 .. v38}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v9, v18

    move-object/from16 v5, v19

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v2, p0

    move v6, v8

    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x0

    const/4 v12, 0x6

    :goto_7
    const/4 v13, 0x5

    const/16 v14, 0xd

    const/4 v15, -0x1

    goto/16 :goto_1e

    :cond_a
    move-object/from16 v2, p0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v19, v5

    iget-object v0, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x624e8b7e

    const-string v6, ""

    iget-object v7, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/compose/ui/graphics/vector/PathParser;

    if-eq v2, v5, :cond_24

    const v5, 0x346425

    const/4 v8, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v2, v5, :cond_10

    const v5, 0x5e0f67f

    if-eq v2, v5, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v5, v19

    const/4 v11, 0x0

    const/4 v12, 0x6

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move-object/from16 v2, p0

    move-object/from16 v5, v19

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    move-object/from16 v2, p0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v5, "rotation"

    const/4 v7, 0x5

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v5, v7, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v30

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v5, "scaleX"

    const/4 v7, 0x3

    invoke-virtual {v4, v0, v5, v7, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v33

    const-string v5, "scaleY"

    invoke-virtual {v4, v0, v5, v8, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v34

    const-string/jumbo v5, "translateX"

    const/4 v12, 0x6

    invoke-virtual {v4, v0, v5, v12, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v35

    const-string/jumbo v5, "translateY"

    const/4 v7, 0x7

    invoke-virtual {v4, v0, v5, v7, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v36

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v7, :cond_f

    move-object/from16 v29, v6

    goto :goto_8

    :cond_f
    move-object/from16 v29, v7

    :goto_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v37, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v38, 0x200

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v38}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v5, v19

    iget-object v6, v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_10
    move-object/from16 v2, p0

    move-object/from16 v5, v19

    const/4 v11, 0x0

    const/4 v12, 0x6

    const-string v13, "path"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    iget-object v13, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v14, "pathData"

    invoke-static {v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_23

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v14, :cond_12

    move-object/from16 v29, v6

    :goto_a
    const/4 v6, 0x2

    goto :goto_b

    :cond_12
    move-object/from16 v29, v14

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v13, :cond_13

    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    :goto_c
    move-object/from16 v30, v6

    goto :goto_d

    :cond_13
    invoke-static {v7, v13}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes$default(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_c

    :goto_d
    iget-object v6, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "fillColor"

    const/4 v13, 0x1

    invoke-static {v0, v6, v2, v7, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string v7, "fillAlpha"

    const/16 v13, 0xc

    invoke-virtual {v4, v0, v7, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v33

    iget-object v7, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v14, "strokeLineCap"

    invoke-static {v7, v14}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, -0x1

    const/16 v14, 0x8

    const/4 v15, -0x1

    goto :goto_e

    :cond_14
    const/16 v14, 0x8

    const/4 v15, -0x1

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v7, :cond_17

    const/4 v13, 0x1

    if-eq v7, v13, :cond_16

    const/4 v13, 0x2

    if-eq v7, v13, :cond_15

    :goto_f
    const/16 v37, 0x0

    goto :goto_10

    :cond_15
    move/from16 v37, v13

    goto :goto_10

    :cond_16
    const/4 v13, 0x2

    const/16 v37, 0x1

    goto :goto_10

    :cond_17
    const/4 v13, 0x2

    goto :goto_f

    :goto_10
    iget-object v7, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "strokeLineJoin"

    invoke-static {v7, v13}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    move v7, v15

    goto :goto_11

    :cond_18
    const/16 v13, 0x9

    invoke-virtual {v0, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v7, :cond_1a

    const/4 v13, 0x1

    if-eq v7, v13, :cond_19

    const/16 v38, 0x2

    goto :goto_12

    :cond_19
    const/16 v38, 0x1

    goto :goto_12

    :cond_1a
    const/16 v38, 0x0

    :goto_12
    const-string/jumbo v7, "strokeMiterLimit"

    const/16 v13, 0xa

    invoke-virtual {v4, v0, v7, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v39

    iget-object v7, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v13, "strokeColor"

    const/4 v14, 0x3

    invoke-static {v0, v7, v2, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v4, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const-string/jumbo v13, "strokeAlpha"

    const/16 v14, 0xb

    invoke-virtual {v4, v0, v13, v14, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v35

    const-string/jumbo v13, "strokeWidth"

    invoke-virtual {v4, v0, v13, v8, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v36

    const-string/jumbo v8, "trimPathEnd"

    invoke-virtual {v4, v0, v8, v12, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v41

    const-string/jumbo v8, "trimPathOffset"

    const/4 v10, 0x7

    invoke-virtual {v4, v0, v8, v10, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v42

    const-string/jumbo v8, "trimPathStart"

    const/4 v13, 0x5

    invoke-virtual {v4, v0, v8, v13, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v40

    iget-object v8, v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v14, "fillType"

    invoke-static {v8, v14}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    const/16 v14, 0xd

    const/16 v16, 0x0

    goto :goto_13

    :cond_1b
    const/4 v8, 0x0

    const/16 v14, 0xd

    invoke-virtual {v0, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v4, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v6, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_1c

    goto :goto_14

    :cond_1c
    iget v8, v6, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v8, :cond_1e

    :goto_14
    if-eqz v0, :cond_1d

    new-instance v6, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v6, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v32, v6

    goto :goto_15

    :cond_1d
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    iget v6, v6, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object/from16 v32, v0

    goto :goto_15

    :cond_1e
    const/16 v32, 0x0

    :goto_15
    iget-object v0, v7, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_1f

    goto :goto_16

    :cond_1f
    iget v6, v7, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v6, :cond_21

    :goto_16
    if-eqz v0, :cond_20

    new-instance v6, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v6, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v34, v6

    goto :goto_17

    :cond_20
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    iget v6, v7, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object/from16 v34, v0

    goto :goto_17

    :cond_21
    const/16 v34, 0x0

    :goto_17
    if-nez v16, :cond_22

    const/16 v31, 0x0

    goto :goto_18

    :cond_22
    const/16 v31, 0x1

    :goto_18
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    iget-object v0, v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static {v6, v0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    new-instance v6, Landroidx/compose/ui/graphics/vector/VectorPath;

    move-object/from16 v28, v6

    invoke-direct/range {v28 .. v42}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1e

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v2, p0

    move-object/from16 v5, v19

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/16 v14, 0xd

    const/4 v15, -0x1

    const-string v10, "clip-path"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_19

    :cond_25
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v4, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v11, :cond_26

    move-object/from16 v27, v6

    :goto_1a
    const/4 v6, 0x1

    goto :goto_1b

    :cond_26
    move-object/from16 v27, v11

    goto :goto_1a

    :goto_1b
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    invoke-virtual {v4, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v8, :cond_27

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    :goto_1c
    move-object/from16 v35, v7

    goto :goto_1d

    :cond_27
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes$default(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v36, 0x200

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v36}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    iget-object v7, v5, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :goto_1e
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-object v0, v2

    move v8, v6

    const/4 v6, 0x7

    const/4 v7, 0x3

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_28
    :goto_1f
    new-instance v0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    return-object v0

    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final vectorResource(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/Composer;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_2

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    :goto_0
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-eq v4, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_1
    if-ne v4, v5, :cond_3

    iget v2, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/ui/res/VectorResources_androidKt;->loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    move-result-object p1

    iget-object v3, p1, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v3

    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
