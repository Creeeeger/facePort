.class public Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;-><init>()V

    move-object v4, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v20, 0x11

    const/16 v21, 0x14

    const/16 v10, 0xc

    const/4 v11, 0x7

    const/16 v12, 0xd

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, 0x6

    const/16 v19, 0xf

    move-object v1, v4

    move-object/from16 v22, v2

    move-object v2, v3

    move-object/from16 v23, v3

    move-object/from16 v3, p0

    move-object/from16 v24, v4

    move-object/from16 v4, p1

    move-object/from16 v25, v5

    move-object/from16 v5, v22

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-static/range {v1 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v1, :cond_0

    move-object/from16 v11, p7

    :try_start_1
    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    goto/16 :goto_a

    :cond_0
    move-object/from16 v11, p7

    const/4 v1, 0x5

    move-object/from16 v12, v22

    :try_start_2
    invoke-virtual {v12, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move v13, v2

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    :try_start_3
    invoke-virtual {v12, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v15, v24

    :try_start_4
    invoke-virtual {v15, v1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v15, v24

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_a

    :cond_1
    move-object/from16 v15, v24

    :goto_0
    const/4 v10, 0x3

    :try_start_5
    invoke-virtual {v12, v10, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v15, v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    const/16 v2, 0x13

    invoke-virtual {v12, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setForegroundServiceType(I)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v3

    const/16 v4, 0x9

    const/4 v9, 0x1

    invoke-static {v9, v4, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    const/4 v8, 0x2

    const/16 v5, 0xa

    invoke-static {v8, v5, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xe

    invoke-static {v5, v6, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x12

    invoke-static {v5, v6, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x15

    invoke-static {v5, v6, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v7, 0xb

    invoke-static {v6, v7, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x20000000

    const/16 v4, 0x16

    invoke-static {v3, v4, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :try_start_7
    invoke-virtual {v12, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v16, v2

    if-eqz v16, :cond_4

    :try_start_8
    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {v15, v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v7, p1

    :try_start_9
    invoke-interface {v7, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v14, p3

    move-object v1, v7

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v14, p3

    move-object v1, v7

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto/16 :goto_a

    :cond_4
    move-object/from16 v7, p1

    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v25

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Heavy-weight applications can not have services in main process"

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_5
    move-object/from16 v6, v25

    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    if-eq v1, v9, :cond_e

    if-ne v5, v10, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v14, p3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v18, v9

    move-object/from16 v2, v23

    goto/16 :goto_8

    :cond_8
    :goto_4
    if-eq v5, v8, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v1

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_b
    goto :goto_5

    :sswitch_0
    const-string/jumbo v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v8

    goto :goto_6

    :sswitch_1
    const-string/jumbo v2, "intent-filter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v14

    goto :goto_6

    :sswitch_2
    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v9

    goto :goto_6

    :goto_5
    const/4 v1, -0x1

    :goto_6
    packed-switch v1, :pswitch_data_0

    move-object v14, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v2, v1, v14, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto/16 :goto_7

    :pswitch_0
    nop

    move-object/from16 v3, p2

    invoke-static {v15, v7, v3, v4, v11}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v3, v1

    move-object v14, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v2, v23

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v3, p2

    invoke-static {v15, v7, v3, v4, v11}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v3, v1

    move-object v14, v4

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v2, v23

    goto :goto_7

    :pswitch_2
    move-object/from16 v3, p2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v14, v4

    move-object/from16 v4, p3

    move/from16 v22, v5

    move/from16 v5, v16

    move-object/from16 v24, v6

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v17, v8

    move/from16 v8, v19

    move/from16 v18, v9

    move/from16 v9, v20

    move/from16 v19, v10

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v2, v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getOrder()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getOrder()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v15, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    nop

    :cond_c
    move-object/from16 v1, p1

    move-object v3, v2

    move-object/from16 v2, v23

    :goto_7
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v11, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_d
    move-object v7, v1

    move-object/from16 v23, v2

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v6, v24

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v14, p3

    move/from16 v22, v5

    move-object/from16 v24, v6

    move-object v1, v7

    move/from16 v18, v9

    move-object/from16 v2, v23

    :goto_8
    if-nez v13, :cond_11

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    goto :goto_9

    :cond_f
    const/16 v18, 0x0

    :goto_9
    move/from16 v3, v18

    if-eqz v3, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Targeting S+ (version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x8f45e27

    invoke-interface {v11, v4, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v11, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_10
    invoke-virtual {v15, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_11
    invoke-interface {v11, v15}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catchall_5
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v24, v25

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v11, p7

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v25

    :goto_a
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4284098e -> :sswitch_2
        -0x3d616837 -> :sswitch_1
        -0x3b32222b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
