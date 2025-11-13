.class public Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LegacyRuntimeManifestParseUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getReplacementForApplicationSalescode(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;-><init>()V

    const-string v1, "<application-salescode>"

    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "LegacyRuntimeManifestParseUtils"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " No sales code, skip it"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not specify android:name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    nop

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-nez v8, :cond_3

    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setCoercedLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setLabelRes(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setCoercedLabel(Ljava/lang/CharSequence;)V

    iget v4, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setLabelRes(I)V

    :cond_4
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setIconRes(I)V

    :cond_5
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public static blacklist modifyParsingPackageWithReplacement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;)V
    .locals 1

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getLabelRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getIconRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getEnabled()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method static blacklist parseMainOverlayComponentAndModify(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not specify android:name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_1
    invoke-virtual {p2, p6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_2
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p5

    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "LegacyRuntimeManifestParseUtils"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " No sales code, skip it"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v0, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v13, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not specify android:name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Sales code mismatch"

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    const/4 v2, 0x7

    const/16 v3, 0x400

    :try_start_2
    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not specify android:targetActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    :try_start_3
    invoke-static {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    if-nez v14, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Empty class name in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    move v15, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v15, :cond_6

    move-object/from16 v8, p1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v2, v4

    move-object v7, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v8, p1

    move-object v7, v2

    :goto_1
    if-nez v7, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v6, 0x2

    move-object v2, v7

    move-object/from16 v3, p5

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v18, v7

    move/from16 v7, v16

    move/from16 v8, v17

    :try_start_5
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/core/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseMainOverlayComponentAndModify(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got error while parsing overlay components"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_8
    nop

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->isEnabled()Z

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v13, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v4, v18

    invoke-virtual {v4, v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
