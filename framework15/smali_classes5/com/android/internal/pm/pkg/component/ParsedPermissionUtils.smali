.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateFootprint(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .locals 3

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method public static blacklist declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .locals 9

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-static {v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x534e4554

    const-string v8, "213323615"

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/4 v7, 0x1

    return v7

    :cond_0
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static blacklist getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static blacklist isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 22
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
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    move-object v4, v0

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

    move-result-object v21

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v3, p2

    invoke-virtual {v7, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v19, 0x2

    const/16 v20, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x7

    move-object v8, v4

    move-object/from16 v9, v21

    move-object/from16 v10, p0

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_0
    invoke-static/range {v8 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v8, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_5

    :cond_1
    const/4 v2, 0x6

    const/4 v8, -0x1

    :try_start_2
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v2, v8, :cond_3

    :try_start_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_2
    return-object v8

    :cond_3
    const/16 v8, 0xc

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v10, "PackageParsing"

    const-string v11, "android"

    if-eqz v9, :cond_5

    :try_start_5
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_0
    const/4 v8, 0x4

    :try_start_6
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v9

    const/4 v12, 0x0

    const/16 v13, 0xd

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v9

    const/4 v13, 0x3

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v9

    const/16 v13, 0x8

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    const/16 v9, 0xb

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v12, :cond_a

    :try_start_7
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v14, "array"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v4, v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    :cond_6
    goto :goto_1

    :cond_7
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v4, v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    goto :goto_2

    :cond_a
    :try_start_8
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v9, :cond_b

    :try_start_9
    invoke-virtual {v4, v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_b
    :goto_2
    :try_start_a
    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v9, :cond_e

    :try_start_b
    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v9

    and-int/2addr v9, v13

    if-nez v9, :cond_d

    goto :goto_4

    :cond_d
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_3
    :try_start_c
    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, -0x5

    invoke-virtual {v4, v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, -0x9

    invoke-virtual {v4, v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_f
    :goto_4
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_10
    nop

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v1

    and-int/lit16 v9, v1, -0x3041

    if-eqz v9, :cond_11

    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v1

    if-eq v1, v8, :cond_11

    const-string v1, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v8, v4

    move-object/from16 v4, v21

    move-object v10, v5

    move-object v5, v8

    move-object v11, v6

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_12
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v11, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v0

    move-object v8, v4

    move-object v10, v5

    move-object v11, v6

    move-object v2, v0

    :goto_5
    if-eqz v1, :cond_13

    :try_start_d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_6
    throw v2
.end method

.method public static blacklist parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
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

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

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

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v0, 0x2

    const/16 v17, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v18, 0x5

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
    const/16 v1, 0xc

    const/4 v2, 0x0

    move-object/from16 v7, v19

    :try_start_2
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

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

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

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

.method public static blacklist parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19
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
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
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

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

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

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    const/4 v0, 0x2

    const/16 v18, 0x5

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v12, v0

    move/from16 v13, v18

    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    if-gez v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

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

    if-eqz v1, :cond_3

    invoke-interface {v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v14, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
