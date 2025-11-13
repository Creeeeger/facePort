.class public Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;
.super Ljava/lang/Object;
.source "ParsedInstrumentationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v14, p4

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;-><init>()V

    move-object v15, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v0, 0x2

    const/16 v17, 0x8

    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v18, 0x6

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v11

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v19, v11

    move/from16 v11, v18

    move v12, v0

    move/from16 v13, v17

    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    move-object/from16 v7, v19

    :try_start_2
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetProcesses(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setHandleProfiling(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setFunctionalTest(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    nop

    nop

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v7, v19

    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
