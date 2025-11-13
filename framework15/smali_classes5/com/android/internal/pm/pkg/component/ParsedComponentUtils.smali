.class Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;
.super Ljava/lang/Object;
.source "ParsedComponentUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v4, "<meta-data>"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method static blacklist addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    const-string v4, "<property>"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)V

    :cond_1
    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method static blacklist parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p7

    const/4 v5, 0x0

    move/from16 v6, p11

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " does not specify android:name"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " invalid android:name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-virtual {v0, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    move/from16 v10, p12

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    goto :goto_0

    :cond_2
    move/from16 v10, p12

    move v11, v5

    :goto_0
    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-virtual {v0, v11}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move/from16 v13, p8

    goto :goto_1

    :cond_3
    move/from16 v13, p8

    invoke-virtual {v2, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v0, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_4
    :goto_1
    move/from16 v12, p10

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v0, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_5
    move/from16 v15, p6

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_6
    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_7
    move/from16 v5, p9

    move/from16 v16, v1

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_8
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method
