.class public Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    if-eqz v5, :cond_1

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v8}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    if-eqz v5, :cond_2

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v7}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v5, :cond_3

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v5, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    if-eqz v5, :cond_4

    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {p0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_1

    :cond_5
    const-string v3, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <path-permission>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static blacklist parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v7

    :cond_0
    const/4 v10, 0x2

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    move-object v11, v7

    :cond_1
    const/4 v12, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    const/4 v12, 0x1

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v13

    const/4 v12, 0x1

    :cond_3
    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParsing"

    if-nez v12, :cond_4

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_4
    const/16 v16, 0x0

    const/4 v8, 0x7

    :try_start_2
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    if-eqz v8, :cond_5

    new-instance v6, Landroid/content/pm/PathPermission;

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_0

    :cond_5
    const/4 v10, 0x5

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    if-eqz v8, :cond_6

    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x2

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_0

    :cond_6
    const/4 v10, 0x4

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    if-eqz v8, :cond_7

    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x1

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_0

    :cond_7
    const/4 v10, 0x6

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    if-eqz v8, :cond_8

    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_0

    :cond_8
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    if-eqz v8, :cond_9

    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v8, v6, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v10

    move-object/from16 v6, v16

    goto :goto_0

    :cond_9
    move-object/from16 v6, v16

    :goto_0
    if-eqz v6, :cond_a

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_1

    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static blacklist parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v9, p7

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>()V

    move-object v6, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    nop

    const/16 v10, 0x11

    const/16 v11, 0xe

    const/16 v12, 0x12

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x2

    const/16 v18, 0x8

    const/16 v19, 0x13

    const/16 v20, 0x15

    const/16 v21, 0x17

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v23, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v23

    move-object/from16 v24, v6

    move/from16 v6, p4

    move-object/from16 v25, v7

    move/from16 v7, p5

    move/from16 v26, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-static/range {v1 .. v21}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v1, :cond_0

    move-object/from16 v8, p7

    :try_start_1
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    goto/16 :goto_5

    :cond_0
    move-object/from16 v8, p7

    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v9, v23

    :try_start_2
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    const/16 v1, 0xb

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v11, v24

    :try_start_3
    invoke-virtual {v11, v1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v3, 0x11

    const/4 v4, 0x1

    move/from16 v12, v26

    if-ge v12, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v5, 0x7

    :try_start_4
    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    const/4 v1, 0x3

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    if-nez v3, :cond_3

    :try_start_5
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    :goto_1
    move-object/from16 v15, v25

    goto/16 :goto_5

    :cond_3
    :try_start_6
    invoke-virtual {v11, v3}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    :goto_2
    const/4 v5, 0x5

    invoke-virtual {v9, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v5, :cond_4

    move-object v5, v1

    :cond_4
    if-nez v5, :cond_5

    :try_start_7
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :cond_5
    :try_start_8
    invoke-virtual {v11, v5}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    :goto_3
    nop

    const/16 v6, 0xd

    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0x16

    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v9, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v7

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v14, 0x10

    invoke-static {v13, v14, v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v7, v13

    invoke-virtual {v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000000

    const/16 v13, 0x18

    invoke-static {v7, v13, v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v11, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    const/16 v6, 0x14

    :try_start_a
    invoke-virtual {v9, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move v13, v2

    if-eqz v13, :cond_7

    :try_start_b
    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v2

    const/high16 v6, 0x100000

    or-int/2addr v2, v6

    invoke-virtual {v11, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v14, p1

    :try_start_c
    invoke-interface {v14, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v14, p1

    :goto_4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v25

    invoke-static {v0, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Heavy-weight applications can not have providers in main process"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v15, v25

    :cond_9
    if-nez v10, :cond_a

    const-string v0, "<provider> does not include authorities attribute"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    const-string v0, "<provider> has empty authorities attribute"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {v11, v10}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v13

    move-object v6, v11

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, v25

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, v25

    move/from16 v12, v26

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v8, p7

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    move/from16 v12, v26

    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static blacklist parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x3

    if-ne v9, v0, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    move/from16 v16, v9

    goto/16 :goto_5

    :cond_1
    :goto_1
    const/4 v2, 0x2

    if-eq v9, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string/jumbo v0, "path-permission"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v0, "property"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :sswitch_2
    const-string/jumbo v0, "intent-filter"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v0, "meta-data"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :sswitch_4
    const-string/jumbo v1, "grant-uri-permission"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_3

    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    invoke-static {v0, v10, v12, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto/16 :goto_4

    :pswitch_1
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_4

    :pswitch_2
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_4

    :pswitch_3
    invoke-static {v13, v10, v11, v12, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v0, p1

    goto :goto_4

    :pswitch_4
    nop

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v17, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentFilter;->getOrder()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getOrder()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v13, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    nop

    :cond_5
    move-object/from16 v0, p1

    :goto_4
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_6
    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    move/from16 v16, v9

    :goto_5
    invoke-interface {v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6c28de5f -> :sswitch_4
        -0x4284098e -> :sswitch_3
        -0x3d616837 -> :sswitch_2
        -0x3b32222b -> :sswitch_1
        0x25eb3477 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
