.class public abstract Landroidx/compose/ui/res/PainterResources_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 50

    move/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/res/ResourceIdCache;

    monitor-enter v8

    :try_start_0
    iget-object v9, v8, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v9, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/TypedValue;

    if-nez v9, :cond_0

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7, v0, v9, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v10, v8, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v10, v0}, Landroidx/collection/MutableIntObjectMap;->findAbsoluteInsertIndex(I)I

    move-result v11

    iget-object v12, v10, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v13, v12, v11

    iget-object v10, v10, Landroidx/collection/IntObjectMap;->keys:[I

    aput v0, v10, v11

    aput-object v9, v12, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_0
    :goto_0
    monitor-exit v8

    iget-object v8, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v8, :cond_31

    const-string v10, ".xml"

    invoke-static {v8, v10}, Lkotlin/text/StringsKt__StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v10, v4, :cond_31

    const v8, -0x2fdd6c65

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    iget v8, v9, Landroid/util/TypedValue;->changingConfigurations:I

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/res/ImageVectorCache;

    new-instance v10, Landroidx/compose/ui/res/ImageVectorCache$Key;

    invoke-direct {v10, v5, v0}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    iget-object v11, v9, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    if-nez v11, :cond_30

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    :goto_2
    if-eq v11, v1, :cond_2

    if-eq v11, v4, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_2

    :cond_2
    if-ne v11, v1, :cond_2f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vector"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    new-instance v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    invoke-direct {v12, v0, v2, v1, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v13, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    invoke-static {v7, v5, v11, v13}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED:I

    iget-object v15, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "autoMirrored"

    invoke-static {v15, v3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move/from16 v25, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v13, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move/from16 v25, v3

    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {v12, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH:I

    const-string/jumbo v14, "viewportWidth"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v3, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v20

    sget v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT:I

    const-string/jumbo v14, "viewportHeight"

    invoke-virtual {v12, v13, v14, v3, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v21

    cmpg-float v3, v20, v15

    if-lez v3, :cond_2d

    cmpg-float v3, v21, v15

    if-lez v3, :cond_2c

    sget v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_WIDTH:I

    invoke-virtual {v13, v3, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v14, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_HEIGHT:I

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT:I

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_6

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v13, v2, v15}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v15, v15, Landroid/util/TypedValue;->type:I

    if-ne v15, v1, :cond_4

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    :goto_4
    move-wide/from16 v22, v16

    goto :goto_5

    :cond_4
    iget-object v15, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v13, v15, v5, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v15

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v16

    goto :goto_4

    :cond_5
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_4

    :cond_6
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_4

    :goto_5
    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT_MODE:I

    const/4 v15, -0x1

    invoke-virtual {v13, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v12, v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v1, 0x3

    if-eq v2, v15, :cond_a

    if-eq v2, v1, :cond_9

    const/4 v15, 0x5

    if-eq v2, v15, :cond_8

    const/16 v15, 0x9

    if-eq v2, v15, :cond_7

    packed-switch v2, :pswitch_data_0

    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    :goto_6
    move/from16 v24, v2

    goto :goto_7

    :pswitch_0
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->Plus:I

    goto :goto_6

    :pswitch_1
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->Screen:I

    goto :goto_6

    :pswitch_2
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->Modulate:I

    goto :goto_6

    :cond_7
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->SrcAtop:I

    goto :goto_6

    :cond_8
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    goto :goto_6

    :cond_9
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    goto :goto_6

    :cond_a
    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    goto :goto_6

    :goto_7
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v18, v3, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v19, v14, v2

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v17, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-eq v13, v4, :cond_b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v4, :cond_c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-ne v13, v1, :cond_c

    :cond_b
    move-object/from16 v29, v6

    move/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v30, v10

    goto/16 :goto_1f

    :cond_c
    iget-object v13, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    const-string v14, "group"

    const/4 v15, 0x2

    if-eq v13, v15, :cond_10

    if-eq v13, v1, :cond_d

    move-object/from16 v33, v0

    move-object v1, v5

    move-object/from16 v29, v6

    move/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v30, v10

    goto/16 :goto_a

    :cond_d
    iget-object v13, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    add-int/2addr v3, v4

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v3, :cond_e

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    iget-object v14, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v15, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-static {v15, v4}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v15, v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v4, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    move/from16 v28, v3

    iget-object v3, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    move-object/from16 v29, v6

    iget-object v6, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    move-object/from16 v30, v10

    iget v10, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    move-object/from16 v31, v9

    iget v9, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    move/from16 v32, v8

    iget v8, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    move-object/from16 v33, v0

    iget v0, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    move-object/from16 v34, v2

    iget v2, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    move-object/from16 v35, v5

    iget v5, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    iget v14, v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v9

    move/from16 v20, v8

    move/from16 v21, v0

    move/from16 v22, v2

    move/from16 v23, v5

    move/from16 v24, v14

    move-object/from16 v25, v3

    move-object/from16 v26, v6

    invoke-direct/range {v16 .. v26}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move v4, v0

    move/from16 v3, v28

    move-object/from16 v6, v29

    move-object/from16 v10, v30

    move-object/from16 v9, v31

    move/from16 v8, v32

    move-object/from16 v0, v33

    move-object/from16 v2, v34

    move-object/from16 v5, v35

    const/4 v1, 0x3

    goto :goto_9

    :cond_e
    move-object/from16 v33, v0

    move-object/from16 v29, v6

    move/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v30, v10

    move-object v1, v5

    const/4 v3, 0x0

    :goto_a
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v13, -0x1

    goto/16 :goto_1e

    :cond_f
    move-object/from16 v33, v0

    move-object/from16 v29, v6

    move/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v30, v10

    move-object v1, v5

    goto :goto_a

    :cond_10
    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v35, v5

    move-object/from16 v29, v6

    move/from16 v32, v8

    move-object/from16 v31, v9

    move-object/from16 v30, v10

    iget-object v0, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x624e8b7e

    const-string v4, ""

    iget-object v5, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/compose/ui/graphics/vector/PathParser;

    if-eq v1, v2, :cond_28

    const v2, 0x346425

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_15

    const v2, 0x5e0f67f

    if-eq v1, v2, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_b
    move-object/from16 v2, v34

    move-object/from16 v1, v35

    :goto_c
    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    move-object/from16 v1, v35

    invoke-static {v7, v1, v11, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION:I

    const-string v5, "rotation"

    const/4 v8, 0x0

    invoke-virtual {v12, v0, v5, v2, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v37

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X:I

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y:I

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X:I

    const-string v5, "scaleX"

    invoke-virtual {v12, v0, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v40

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y:I

    const-string v5, "scaleY"

    invoke-virtual {v12, v0, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v41

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X:I

    const-string/jumbo v5, "translateX"

    const/4 v6, 0x0

    invoke-virtual {v12, v0, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v42

    sget v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y:I

    const-string/jumbo v5, "translateY"

    invoke-virtual {v12, v0, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v43

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v5, :cond_14

    move-object/from16 v36, v4

    goto :goto_d

    :cond_14
    move-object/from16 v36, v5

    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v44, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v45, 0x0

    const/16 v46, 0x200

    const/16 v47, 0x0

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v47}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v34

    iget-object v4, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_15
    move-object/from16 v2, v34

    move-object/from16 v1, v35

    const-string v8, "path"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_c

    :cond_16
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {v7, v1, v11, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    iget-object v8, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v9, "pathData"

    invoke-static {v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v9, :cond_17

    move-object/from16 v35, v4

    goto :goto_e

    :cond_17
    move-object/from16 v35, v9

    :goto_e
    sget v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v4, :cond_18

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    move-object/from16 v36, v4

    goto :goto_f

    :cond_18
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v8}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v36, v8

    :goto_f
    sget v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR:I

    iget-object v5, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "fillColor"

    invoke-static {v0, v5, v1, v8, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v12, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA:I

    const-string v8, "fillAlpha"

    invoke-virtual {v12, v0, v8, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v39

    sget v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP:I

    iget-object v8, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v9, "strokeLineCap"

    const/4 v10, -0x1

    invoke-static {v0, v8, v9, v5, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_1b

    const/4 v8, 0x1

    if-eq v5, v8, :cond_1a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_19

    :goto_10
    const/16 v43, 0x0

    goto :goto_12

    :cond_19
    sget v5, Landroidx/compose/ui/graphics/StrokeCap;->Square:I

    :goto_11
    move/from16 v43, v5

    goto :goto_12

    :cond_1a
    const/4 v8, 0x2

    sget v5, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    goto :goto_11

    :cond_1b
    const/4 v8, 0x2

    goto :goto_10

    :goto_12
    sget v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN:I

    iget-object v9, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v10, "strokeLineJoin"

    const/4 v13, -0x1

    invoke-static {v0, v9, v10, v5, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    if-eqz v5, :cond_1d

    const/4 v10, 0x1

    if-eq v5, v10, :cond_1c

    move/from16 v44, v9

    goto :goto_13

    :cond_1c
    sget v5, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    move/from16 v44, v5

    goto :goto_13

    :cond_1d
    const/16 v44, 0x0

    :goto_13
    sget v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT:I

    const-string/jumbo v9, "strokeMiterLimit"

    invoke-virtual {v12, v0, v9, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v45

    sget v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR:I

    iget-object v9, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v10, "strokeColor"

    invoke-static {v0, v9, v1, v10, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    sget v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA:I

    const-string/jumbo v10, "strokeAlpha"

    invoke-virtual {v12, v0, v10, v9, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v41

    sget v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH:I

    const-string/jumbo v10, "strokeWidth"

    invoke-virtual {v12, v0, v10, v9, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v42

    sget v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END:I

    const-string/jumbo v10, "trimPathEnd"

    invoke-virtual {v12, v0, v10, v9, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v47

    sget v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET:I

    const-string/jumbo v9, "trimPathOffset"

    const/4 v10, 0x0

    invoke-virtual {v12, v0, v9, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v48

    sget v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START:I

    const-string/jumbo v9, "trimPathStart"

    invoke-virtual {v12, v0, v9, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v46

    sget v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE:I

    iget-object v9, v12, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v14, "fillType"

    const/4 v15, 0x0

    invoke-static {v0, v9, v14, v6, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v4, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_1e

    goto :goto_14

    :cond_1e
    iget v9, v4, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v9, :cond_1f

    :goto_14
    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    :goto_15
    if-eqz v9, :cond_21

    if-eqz v0, :cond_20

    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v38, v4

    goto :goto_16

    :cond_20
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    iget v4, v4, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v14

    const/4 v4, 0x0

    invoke-direct {v0, v14, v15, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v38, v0

    goto :goto_16

    :cond_21
    const/16 v38, 0x0

    :goto_16
    iget-object v0, v5, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_22

    goto :goto_17

    :cond_22
    iget v4, v5, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v4, :cond_23

    :goto_17
    const/4 v4, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_25

    if-eqz v0, :cond_24

    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v40, v4

    goto :goto_19

    :cond_24
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    iget v4, v5, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v4

    const/4 v9, 0x0

    invoke-direct {v0, v4, v5, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v40, v0

    goto :goto_19

    :cond_25
    const/16 v40, 0x0

    :goto_19
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_26

    const/16 v37, 0x0

    goto :goto_1a

    :cond_26
    sget v0, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    move/from16 v37, v0

    :goto_1a
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    iget-object v0, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    new-instance v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    const/16 v49, 0x0

    move-object/from16 v34, v4

    invoke-direct/range {v34 .. v49}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    const/4 v4, 0x1

    goto/16 :goto_1e

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v2, v34

    move-object/from16 v1, v35

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v13, -0x1

    const-string v6, "clip-path"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1b

    :cond_29
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {v7, v1, v11, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v12, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v12, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v9, :cond_2a

    move-object/from16 v35, v4

    goto :goto_1c

    :cond_2a
    move-object/from16 v35, v9

    :goto_1c
    sget v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v12, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    if-nez v4, :cond_2b

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    move-object/from16 v43, v4

    goto :goto_1d

    :cond_2b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v43, v6

    :goto_1d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v44, 0x0

    const/16 v45, 0x200

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v39, 0x3f800000    # 1.0f

    const/high16 v40, 0x3f800000    # 1.0f

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v46, 0x0

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v2, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v3, v4

    :goto_1e
    invoke-interface/range {v33 .. v33}, Landroid/content/res/XmlResourceParser;->next()I

    move-object v5, v1

    move-object/from16 v6, v29

    move-object/from16 v10, v30

    move-object/from16 v9, v31

    move/from16 v8, v32

    move-object/from16 v0, v33

    const/4 v1, 0x3

    goto/16 :goto_8

    :goto_1f
    new-instance v11, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    move/from16 v1, v32

    invoke-direct {v11, v0, v1}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    move-object/from16 v9, v31

    iget-object v0, v9, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, v30

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_2c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object/from16 v29, v6

    :goto_20
    iget-object v0, v11, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_22

    :cond_31
    move-object v1, v6

    const v2, -0x2fdb0c43

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v5, p2, 0xe

    xor-int/lit8 v5, v5, 0x6

    const/4 v6, 0x4

    if-le v5, v6, :cond_32

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_32
    and-int/lit8 v5, p2, 0x6

    if-ne v5, v6, :cond_33

    goto :goto_21

    :cond_33
    const/4 v4, 0x0

    :cond_34
    :goto_21
    or-int/2addr v3, v4

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_35

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_36

    :cond_35
    :try_start_1
    sget v2, Landroidx/compose/ui/graphics/ImageBitmap;->$r8$clinit:I

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v3, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_36
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/graphics/ImageBitmap;

    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_22
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/compose/ui/res/ResourceResolutionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error attempting to load resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/res/ResourceResolutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_23
    monitor-exit v8

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
