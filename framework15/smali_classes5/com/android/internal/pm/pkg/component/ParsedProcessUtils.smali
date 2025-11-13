.class public Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p6

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;-><init>()V

    move-object v11, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11, v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    :cond_0
    const/4 v0, 0x1

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {v12, v13, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v11, v5, v7}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v9, 0x3

    invoke-virtual {v12, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    const/4 v14, 0x4

    invoke-virtual {v12, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setMemtagMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    nop

    if-eqz v15, :cond_2

    move v8, v0

    goto :goto_0

    :cond_2
    move v8, v13

    :goto_0
    invoke-virtual {v11, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    :cond_3
    invoke-static {}, Lcom/android/internal/pm/pkg/component/flags/Flags;->enablePerProcessUseEmbeddedDexAttr()Z

    move-result v8

    if-eqz v8, :cond_4

    nop

    const/4 v8, 0x2

    invoke-virtual {v12, v8, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v13}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :goto_2
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    if-eq v5, v0, :cond_c

    if-ne v6, v9, :cond_6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v8, p2

    goto/16 :goto_8

    :cond_6
    :goto_3
    if-eq v6, v9, :cond_b

    if-ne v6, v14, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_8
    goto :goto_4

    :sswitch_0
    const-string v7, "deny-permission"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v13

    goto :goto_5

    :sswitch_1
    const-string v7, "allow-permission"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v0

    goto :goto_5

    :goto_4
    const/4 v7, -0x1

    :goto_5
    packed-switch v7, :pswitch_data_0

    const-string v7, "<process>"

    move-object/from16 v8, p2

    invoke-static {v7, v8, v3, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    goto :goto_7

    :pswitch_0
    nop

    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7, v2, v3, v10}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v8, v7

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v11, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_6

    :pswitch_1
    nop

    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7, v2, v3, v10}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v8, v7

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v11, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    :cond_9
    :goto_6
    move-object v7, v8

    move-object/from16 v8, p2

    :goto_7
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v10, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_a
    goto/16 :goto_2

    :cond_b
    move-object/from16 v8, p2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v8, p2

    :goto_8
    invoke-interface {v10, v11}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49dc292d -> :sswitch_1
        0x62d33430 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    move-object v12, v0

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_1
    :goto_1
    if-eq v13, v0, :cond_9

    const/4 v0, 0x4

    if-ne v13, v0, :cond_2

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v0, "deny-permission"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_1
    const-string/jumbo v0, "process"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_2
    const-string v0, "allow-permission"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_0

    const-string v0, "<processes>"

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_0
    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<process> specified existing name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :cond_4
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_4

    :cond_5
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_4

    :pswitch_1
    invoke-static {v12, v7, v8, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    move-object/from16 v1, p1

    goto :goto_4

    :cond_6
    move-object v0, v1

    move-object/from16 v1, p1

    goto :goto_4

    :pswitch_2
    invoke-static {v12, v7, v8, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v0, v1

    move-object v12, v2

    move-object/from16 v1, p1

    goto :goto_4

    :cond_7
    move-object v0, v1

    move-object/from16 v1, p1

    :goto_4
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_8
    goto/16 :goto_0

    :cond_9
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v1, p1

    :goto_5
    invoke-interface {v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49dc292d -> :sswitch_2
        -0x1272e191 -> :sswitch_1
        0x62d33430 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
