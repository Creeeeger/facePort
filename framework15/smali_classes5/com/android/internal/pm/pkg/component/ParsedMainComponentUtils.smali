.class Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
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

    move-object/from16 v7, p9

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p8, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageParsing"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p7, :cond_3

    invoke-static {v1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->isImplicitlyExposedIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v7, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5
.end method

.method static blacklist parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIIIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v12, p8

    move/from16 v11, p11

    move/from16 v10, p12

    move/from16 v9, p17

    move/from16 v8, p19

    move/from16 v7, p20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move v15, v8

    move/from16 v8, p13

    move v15, v9

    move/from16 v9, p14

    move v15, v10

    move/from16 v10, p15

    move v15, v11

    move/from16 v11, p16

    move/from16 v12, p18

    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v15, v8, :cond_2

    invoke-virtual {v14, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->isDirectBootAware()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v9, p3

    invoke-interface {v9, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    :cond_1
    move-object/from16 v9, p3

    goto :goto_0

    :cond_2
    move-object/from16 v9, p3

    :goto_0
    move/from16 v1, p12

    if-eq v1, v8, :cond_3

    invoke-virtual {v14, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_3
    move/from16 v10, p17

    if-eq v10, v8, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    const/16 v0, 0x400

    invoke-virtual {v14, v10, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v14, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_1
    nop

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v11

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_5
    move-object/from16 v1, p8

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_2

    :cond_6
    move-object/from16 v1, p8

    :goto_2
    move/from16 v0, p19

    if-eq v0, v8, :cond_7

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_7
    move-object/from16 v0, p7

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getSplitName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v13, v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_8
    move/from16 v2, p20

    if-eq v2, v8, :cond_9

    invoke-virtual {v14, v2, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setAttributionTags([Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_9
    invoke-interface {v1, v13}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method
