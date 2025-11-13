.class public Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final blacklist LOG_UNSAFE_BROADCASTS:Z = false

.field private static final blacklist RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final blacklist SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getActivityConfigChanges(II)I
    .locals 1

    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private static blacklist getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .locals 5

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    return v1

    :cond_2
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    return v1

    :cond_3
    const/16 v1, 0xe

    if-ne p2, v1, :cond_4

    const/4 v1, 0x7

    return v1

    :cond_4
    const/4 v1, 0x4

    return v1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    return v1

    :cond_7
    return v2
.end method

.method public static blacklist parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x7

    const/16 v1, 0x400

    :try_start_0
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_3

    :cond_0
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    invoke-static {v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    if-nez v0, :cond_1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :try_start_4
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    move-object v15, v2

    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v14, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v14, :cond_3

    :try_start_5
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v3

    move-object v13, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v13, v1

    :goto_1
    if-nez v13, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in manifest with activities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parsedActivities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_4
    :try_start_6
    invoke-static {v0, v13}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v20, -0x1

    const/16 v21, 0xc

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/16 v16, 0x4

    move-object/from16 v22, v13

    move/from16 v13, v16

    const/16 v16, 0x1

    move/from16 v23, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v24, v15

    move/from16 v15, v16

    const/16 v16, 0x8

    const/16 v17, 0x2

    const/16 v18, -0x1

    const/16 v19, 0xb

    move-object/from16 v25, v4

    move-object/from16 v4, p0

    move-object/from16 v26, v5

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    :try_start_7
    invoke-static/range {v1 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move-object v15, v3

    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v14, p5

    invoke-interface {v14, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_5
    move-object/from16 v14, p5

    :try_start_8
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    move v11, v3

    const/16 v16, 0x3

    const/16 v17, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0x9

    move-object v3, v1

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, v26

    move-object/from16 v12, p5

    move/from16 v14, v16

    move-object/from16 v16, v15

    move/from16 v15, v17

    invoke-static/range {v3 .. v15}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v26, v5

    :goto_3
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    move/from16 v13, p12

    const/16 v0, 0x400

    move/from16 v14, p10

    invoke-virtual {v11, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageParsing"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_1
    :goto_0
    const/4 v6, 0x0

    move/from16 v5, p11

    invoke-virtual {v11, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p7, :cond_2

    invoke-virtual {v7, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :goto_2
    nop

    if-eqz p7, :cond_4

    const/16 v0, 0xe

    goto :goto_3

    :cond_4
    const/16 v0, 0x3d

    :goto_3
    invoke-static {v11, v10, v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_5
    nop

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-virtual {v7, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_6
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_15

    const/4 v0, 0x3

    if-ne v1, v0, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v0, p2

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_9
    :goto_5
    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "intent-filter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    xor-int/lit8 v6, p6, 0x1

    move-object/from16 v0, p1

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move v2, v6

    move-object/from16 v20, v3

    move/from16 v3, p8

    move-object/from16 v21, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    const/16 v17, 0x0

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentFilter;->getOrder()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getOrder()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v7, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    :cond_c
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_6

    :cond_d
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_6

    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v7, v8, v10, v9, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v0, p2

    goto/16 :goto_6

    :cond_f
    if-nez p6, :cond_11

    if-nez p7, :cond_11

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_10
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_6

    :cond_11
    if-nez p6, :cond_13

    if-nez p7, :cond_13

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    nop

    invoke-static {v10, v9, v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_12
    nop

    move-object v1, v0

    move-object/from16 v0, p2

    goto :goto_6

    :cond_13
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_14
    move/from16 v5, p11

    move/from16 v6, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p2

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v17, 0x0

    :goto_7
    if-nez p7, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.activity.launch_mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string/jumbo v3, "singleInstancePerTask"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_16
    if-nez p7, :cond_18

    const/16 v1, 0x3b

    invoke-virtual {v11, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.can_display_on_remote_devices"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v1, 0x0

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_18
    nop

    invoke-static {v7, v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_19
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    if-nez v16, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    goto :goto_8

    :cond_1a
    move/from16 v6, v17

    :goto_8
    move v2, v6

    if-eqz v2, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Targeting S+ (version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x8f45e27

    invoke-interface {v12, v3, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v12, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_1b
    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_1c
    invoke-interface {v12, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 27
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
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
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

    move-object/from16 v8, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    move-object v6, v0

    const-string/jumbo v0, "receiver"

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    nop

    const/16 v10, 0x1e

    const/16 v11, 0x11

    const/16 v12, 0x2a

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x17

    const/16 v17, 0x3

    const/16 v18, 0x7

    const/16 v19, 0x2c

    const/16 v20, 0x30

    const/16 v21, 0x39

    move-object v1, v6

    move-object/from16 v2, v23

    move-object/from16 v24, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v24

    move-object/from16 v25, v6

    move/from16 v6, p4

    move-object/from16 v26, v7

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-static/range {v1 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v1, :cond_0

    move-object/from16 v14, p7

    :try_start_1
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v24

    move-object/from16 v20, v25

    move-object/from16 v15, v26

    goto/16 :goto_3

    :cond_0
    move-object/from16 v14, p7

    if-eqz v22, :cond_1

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v15, v26

    :try_start_3
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Heavy-weight applications can not have receivers in main process"

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v24

    move-object/from16 v20, v25

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v17, v24

    move-object/from16 v20, v25

    goto/16 :goto_3

    :cond_1
    move-object/from16 v15, v26

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v13, v24

    :try_start_4
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object/from16 v12, v25

    :try_start_5
    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v3

    const/16 v4, 0x1a

    invoke-virtual {v13, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isTaskReparentingAllowed()Z

    move-result v3

    const/16 v4, 0x40

    const/16 v5, 0x13

    invoke-static {v4, v5, v3, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v5, 0x8

    const/16 v6, 0x12

    invoke-static {v5, v6, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v3, v6

    const/4 v6, 0x4

    const/16 v7, 0xb

    invoke-static {v6, v7, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v3, v7

    const/16 v7, 0x20

    const/16 v8, 0xd

    invoke-static {v7, v8, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v3, v8

    const/16 v8, 0x100

    const/16 v9, 0x16

    invoke-static {v8, v9, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v3, v8

    const/4 v8, 0x2

    const/16 v9, 0xa

    invoke-static {v8, v9, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v3, v9

    const/16 v9, 0x800

    const/16 v10, 0x18

    invoke-static {v9, v10, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v3, v9

    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-static {v9, v10, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v3, v10

    const/16 v10, 0x80

    const/16 v11, 0x15

    invoke-static {v10, v11, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v3, v10

    const/16 v10, 0x400

    const/16 v11, 0x27

    invoke-static {v10, v11, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v3, v11

    const/16 v11, 0x1d

    invoke-static {v10, v11, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v3, v11

    const/16 v11, 0x10

    const/16 v5, 0xc

    invoke-static {v11, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v5

    or-int/2addr v3, v5

    const/high16 v5, 0x20000000

    invoke-static {v5, v4, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v22, :cond_7

    :try_start_6
    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v3

    const/16 v4, 0x200

    const/16 v5, 0x19

    invoke-static {v4, v5, v3, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v3

    const/high16 v4, -0x80000000

    const/16 v5, 0x1f

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x40000

    const/16 v5, 0x42

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x2000

    const/16 v5, 0x23

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x1000

    const/16 v5, 0x24

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/16 v4, 0x4000

    const/16 v5, 0x25

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x800000

    const/16 v5, 0x33

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x400000

    const/16 v5, 0x29

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1000000

    const/16 v5, 0x34

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x2000000

    const/16 v5, 0x38

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    const/high16 v3, 0x10000000

    const/16 v4, 0x3c

    invoke-static {v3, v4, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v2

    const/16 v3, 0x36

    invoke-static {v9, v3, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x3a

    invoke-static {v8, v4, v9, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0x31

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v13, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-virtual {v13, v7, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {v13, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    const/16 v4, 0x14

    invoke-virtual {v13, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-virtual {v13, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v5, 0x2f

    invoke-virtual {v13, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0xf

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v11, p1

    :try_start_7
    invoke-static {v11, v13, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v3

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v4, 0x32

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    nop

    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_3
    const/16 v4, 0x35

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    nop

    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    :cond_4
    const/16 v4, 0x3e

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v13, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v5

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v6, 0x8

    :goto_0
    or-int/2addr v5, v6

    invoke-virtual {v12, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_6
    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v11, p1

    :goto_1
    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto/16 :goto_3

    :cond_7
    move-object/from16 v11, p1

    :try_start_8
    invoke-virtual {v12, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x1c

    invoke-static {v4, v5, v13}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :goto_2
    const/16 v2, 0x8

    invoke-virtual {v13, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v10, v14}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v8, v2

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v2, :cond_8

    :try_start_9
    invoke-interface {v14, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_4
    move-exception v0

    goto :goto_1

    :cond_8
    :try_start_a
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0x2d

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v16, v2

    if-eqz v16, :cond_9

    :try_start_b
    invoke-virtual {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {v11, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_9
    const/16 v2, 0x3f

    :try_start_c
    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v9, v2

    if-eqz v9, :cond_a

    :try_start_d
    invoke-static {v9, v1, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string/jumbo v1, "requiredDisplayCategory attribute can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_a
    :try_start_e
    invoke-virtual {v12, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    const/16 v2, 0x41

    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/16 v17, 0x4

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v20, 0x1b

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move/from16 v7, v22

    move-object/from16 v21, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v16

    move-object/from16 v24, v10

    move-object/from16 v10, p7

    move/from16 v11, v20

    move-object/from16 v20, v12

    move/from16 v12, v17

    move-object/from16 v17, v13

    move/from16 v13, v18

    :try_start_f
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v17, v13

    move-object/from16 v20, v25

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v14, p7

    move-object/from16 v17, v24

    move-object/from16 v20, v25

    move-object/from16 v15, v26

    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v10, :cond_0

    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v4, v7

    goto :goto_0

    :cond_0
    if-ne v8, v11, :cond_1

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v0, v7

    :cond_1
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v14

    move v15, v14

    if-ne v15, v10, :cond_2

    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v6, v7

    goto :goto_1

    :cond_2
    if-ne v15, v11, :cond_3

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v5, v7

    :cond_3
    :goto_1
    const/16 v7, 0x11

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    invoke-virtual {v3, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    nop

    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    new-instance v7, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v7

    move v9, v15

    move v15, v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v14 .. v22}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p2

    :try_start_1
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-object v11

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v10, p2

    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v10, p1

    move-object/from16 v11, p6

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, p3

    move v7, p2

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_1
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2

    nop

    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_2
    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v11, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    move-object v2, v11

    move-object v10, v0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    move-object v1, v11

    goto :goto_0

    :cond_2
    iput-object v0, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method
