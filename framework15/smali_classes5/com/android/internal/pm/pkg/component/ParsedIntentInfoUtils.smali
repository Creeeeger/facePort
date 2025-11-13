.class public Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field private static final blacklist sRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_0
    :goto_0
    const/16 v4, 0xb

    :try_start_3
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_3
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    if-nez p3, :cond_5

    const-string/jumbo v2, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_5
    :try_start_4
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_6
    const/16 v6, 0xf

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    const/4 v6, 0x3

    if-eqz v3, :cond_8

    if-nez p3, :cond_7

    const-string/jumbo v2, "sspAdvancedPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_7
    :try_start_5
    invoke-virtual {v0, v3, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_8
    const/16 v7, 0xd

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const/4 v7, 0x4

    if-eqz v3, :cond_9

    invoke-virtual {v0, v3, v7}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_9
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_a

    invoke-virtual {v0, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    if-eqz v3, :cond_b

    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_b
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    if-eqz v3, :cond_c

    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_c
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_e

    if-nez p3, :cond_d

    const-string/jumbo v2, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_d
    :try_start_6
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_e
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_10

    if-nez p3, :cond_f

    const-string/jumbo v2, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_f
    :try_start_7
    invoke-virtual {v0, v3, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_10
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v2, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_11
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method public static blacklist parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v7, v8, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    nop

    const/4 v0, 0x2

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const/4 v14, 0x3

    invoke-virtual {v12, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->setOrder(I)V

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    :cond_0
    sget-boolean v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    invoke-virtual {v12, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v2

    const/4 v15, 0x1

    if-nez v2, :cond_2

    nop

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    :cond_2
    if-eqz p5, :cond_3

    const/4 v2, 0x6

    invoke-virtual {v12, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v4, v1

    if-eq v1, v15, :cond_10

    if-ne v4, v14, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v5, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v2, p1

    move/from16 v1, p4

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v3, v6

    goto/16 :goto_6

    :cond_5
    :goto_1
    if-eq v4, v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_8
    goto :goto_2

    :sswitch_0
    const-string v1, "category"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v15

    goto :goto_3

    :sswitch_1
    const-string v1, "data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_3

    :sswitch_2
    const-string/jumbo v1, "uri-relative-filter-group"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v14

    goto :goto_3

    :sswitch_3
    const-string v1, "action"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_3

    :goto_2
    const/4 v1, -0x1

    :goto_3
    const-wide/32 v13, 0x9029125

    const-string/jumbo v0, "name"

    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string v2, "No value supplied for <android:name>"

    packed-switch v1, :pswitch_data_0

    move/from16 v1, p4

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v3, v6

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object/from16 v3, p2

    move/from16 v17, v4

    move-object/from16 v4, p3

    move/from16 v18, v5

    move/from16 v5, p4

    move-object v0, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    move/from16 v1, p4

    goto/16 :goto_5

    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v0, v6

    move/from16 v1, p4

    move-object v3, v0

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v0, v6

    move/from16 v1, p4

    invoke-static {v10, v7, v8, v1, v9}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v3, v0

    move-object v0, v2

    move-object/from16 v2, p1

    goto/16 :goto_5

    :pswitch_2
    move/from16 v1, p4

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v3, v6

    invoke-interface {v8, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-interface {v9, v2, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_5

    :pswitch_3
    move/from16 v1, p4

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v3, v6

    invoke-interface {v8, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-interface {v9, v2, v13, v14}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_5

    :cond_d
    sget-object v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    if-eqz v2, :cond_e

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    invoke-virtual {v5, v2, v0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->filterReceiver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;

    invoke-direct {v5, v0, v2, v4}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_5

    :goto_4
    const-string v0, "<intent-filter>"

    move-object/from16 v2, p1

    invoke-static {v0, v2, v8, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_f
    move-object v6, v3

    move/from16 v5, v18

    const/4 v0, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v2, p1

    move/from16 v1, p4

    move/from16 v17, v4

    move/from16 v18, v5

    move-object v3, v6

    :goto_6
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;

    const/4 v5, 0x1

    iget-object v6, v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isPackageXXXIntent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v11}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->hasPackageSSP(Landroid/content/IntentFilter;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v5, 0x0

    :cond_11
    if-eqz v5, :cond_12

    iget-object v6, v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v11, v6}, Landroid/content/IntentFilter;->removeAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->sRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    iget-object v13, v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mPackageName:Ljava/lang/String;

    iget-object v14, v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mCodePath:Ljava/lang/String;

    iget-object v15, v4, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v13, v14, v15}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    goto :goto_7

    :cond_13
    invoke-interface {v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v1, p4

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_3
        -0x472f1456 -> :sswitch_2
        0x2eefaa -> :sswitch_1
        0x302bcfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUriRelativeFilterGroup:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v5, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v5, v2}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    if-eq v6, v3, :cond_6

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_6

    :cond_1
    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_4
    goto :goto_1

    :pswitch_0
    const-string v8, "data"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_1

    const-string v8, "<uri-relative-filter-group>"

    invoke-static {v8, p1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    goto :goto_3

    :pswitch_1
    invoke-static {v2, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    nop

    :goto_3
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {p5, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_5
    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    :cond_7
    const/4 v3, 0x0

    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2eefaa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriRelativeFilterGroup;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v2, v2, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v4, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_1
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    if-nez p3, :cond_2

    const-string/jumbo v1, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_2
    :try_start_1
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v2, v5, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_3
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    const/4 v6, 0x3

    if-eqz v3, :cond_5

    if-nez p3, :cond_4

    const-string/jumbo v1, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_4
    :try_start_2
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v2, v6, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_5
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_6

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v2, v1, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_6
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_7

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v5, v2, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_7
    const/16 v7, 0x15

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_8

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v5, v4, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_8
    const/16 v7, 0x16

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_a

    if-nez p3, :cond_9

    const-string/jumbo v1, "fragmentPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_9
    :try_start_3
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v5, v5, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_a
    const/16 v7, 0x17

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_c

    if-nez p3, :cond_b

    const-string/jumbo v1, "fragmentAdvancedPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_b
    :try_start_4
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v5, v6, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_c
    const/16 v7, 0x18

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_d

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v5, v1, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_d
    const/16 v7, 0x10

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_e

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v2, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_e
    const/16 v7, 0x11

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_f

    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v4, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_f
    const/16 v7, 0x12

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_11

    if-nez p3, :cond_10

    const-string/jumbo v1, "queryPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_10
    :try_start_5
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v5, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_11
    const/16 v5, 0x13

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_13

    if-nez p3, :cond_12

    const-string/jumbo v1, "queryAdvancedPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_12
    :try_start_6
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v4, v6, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_13
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, v4, v1, v2}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    :cond_14
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method
