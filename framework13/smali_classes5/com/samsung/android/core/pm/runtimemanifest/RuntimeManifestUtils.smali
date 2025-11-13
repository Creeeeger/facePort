.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestUtils.java"


# static fields
.field public static final blacklist ATTR_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final blacklist ATTR_PROPERTY_VALUE:Ljava/lang/String; = "propertyValue"

.field public static final blacklist ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final blacklist COUNTRYCODE:Ljava/lang/String;

.field public static final blacklist DEBUG:Z = true

.field public static final blacklist META_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime.manifest.overlay"

.field public static final blacklist SALESCODE:Ljava/lang/String;

.field public static final blacklist TAG:Ljava/lang/String; = "RuntimeManifestUtils"

.field public static final blacklist TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_POLICY:Ljava/lang/String; = "policy"

.field public static final blacklist TAG_PROVIDER:Ljava/lang/String; = "provider"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime-manifest"

.field public static final blacklist TAG_SERVICE:Ljava/lang/String; = "service"

.field private static blacklist sCountryCodeForTest:Ljava/lang/String;

.field private static blacklist sIsTest:Z

.field private static blacklist sSalesCodeForTest:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;

    .line 267
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "cls":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "c":C
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 275
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 281
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_2
    return-object v0

    .line 268
    .end local v0    # "cls":Ljava/lang/String;
    .end local v1    # "c":C
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCountryCode()Ljava/lang/String;
    .locals 1

    .line 54
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static blacklist getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;"
        }
    .end annotation

    .line 227
    .local p0, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 228
    .local v1, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    goto :goto_0

    .line 232
    :cond_0
    const-string v3, "SALESCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "RuntimeManifestUtils"

    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(salescode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v1

    .line 243
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "COUNTRYCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    goto :goto_0

    .line 248
    :cond_4
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(countrycode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v1

    .line 254
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    goto :goto_1

    :cond_6
    const-string v3, "SYSTEMPROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 257
    .end local v1    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v2    # "type":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 258
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .locals 1

    .line 50
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static blacklist parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 19
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 76
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    const/4 v0, -0x1

    .line 77
    .local v0, "parserType":I
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 78
    .local v4, "outerDepth":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .end local v0    # "parserType":I
    .local v6, "parserType":I
    const/4 v0, 0x1

    if-eq v5, v0, :cond_c

    const/4 v5, 0x3

    if-ne v6, v5, :cond_0

    .line 79
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_c

    .line 80
    :cond_0
    if-eq v6, v5, :cond_b

    const/4 v5, 0x4

    if-ne v6, v5, :cond_1

    .line 81
    goto/16 :goto_4

    .line 83
    :cond_1
    new-instance v5, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-direct {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;-><init>()V

    .line 84
    .local v5, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "elementName":Ljava/lang/String;
    const-string/jumbo v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "RuntimeManifestUtils"

    if-eqz v8, :cond_a

    .line 86
    const/4 v8, 0x0

    const-string/jumbo v10, "type"

    invoke-interface {v1, v8, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "type":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 88
    invoke-virtual {v5, v10}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setType(Ljava/lang/String;)V

    .line 90
    :cond_2
    const-string/jumbo v11, "value"

    invoke-interface {v1, v8, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 92
    invoke-virtual {v5, v11}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setValue(Ljava/lang/String;)V

    .line 94
    :cond_3
    const-string/jumbo v12, "propertyName"

    invoke-interface {v1, v8, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "propertyName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 96
    invoke-virtual {v5, v12}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyName(Ljava/lang/String;)V

    .line 98
    :cond_4
    const-string/jumbo v13, "propertyValue"

    invoke-interface {v1, v8, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, "propertyValue":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 100
    invoke-virtual {v5, v13}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyValue(Ljava/lang/String;)V

    .line 103
    :cond_5
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v2, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 106
    .local v14, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 108
    .local v15, "v":Landroid/util/TypedValue;
    const/4 v0, 0x0

    if-eqz v15, :cond_7

    .line 109
    iget v8, v15, Landroid/util/TypedValue;->resourceId:I

    if-nez v8, :cond_6

    .line 110
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 111
    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 113
    :cond_6
    iget v8, v15, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v8}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 114
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    .line 117
    :cond_7
    :goto_1
    const/4 v8, 0x2

    invoke-virtual {v14, v8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v17, v16

    .line 119
    .local v17, "iconValue":I
    move/from16 v0, v17

    .end local v17    # "iconValue":I
    .local v0, "iconValue":I
    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setIconRes(I)V

    .line 122
    :cond_8
    const/4 v8, 0x5

    invoke-virtual {v14, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 124
    move/from16 v18, v0

    const/4 v0, 0x1

    .end local v0    # "iconValue":I
    .local v18, "iconValue":I
    invoke-virtual {v14, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 127
    .local v0, "enabled":Z
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 122
    .end local v18    # "iconValue":I
    .local v0, "iconValue":I
    :cond_9
    move/from16 v18, v0

    .line 130
    .end local v0    # "iconValue":I
    .end local v15    # "v":Landroid/util/TypedValue;
    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    nop

    .line 133
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 136
    .end local v14    # "ta":Landroid/content/res/TypedArray;
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v8, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 139
    .local v0, "priority":I
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPriority(I)V

    .line 140
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    nop

    .end local v0    # "priority":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    nop

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parsed "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "propertyName":Ljava/lang/String;
    .end local v13    # "propertyValue":Ljava/lang/String;
    goto :goto_3

    .line 142
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    .restart local v12    # "propertyName":Ljava/lang/String;
    .restart local v13    # "propertyValue":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    throw v0

    .line 130
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .restart local v14    # "ta":Landroid/content/res/TypedArray;
    :catchall_1
    move-exception v0

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    throw v0

    .line 148
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "propertyName":Ljava/lang/String;
    .end local v13    # "propertyValue":Ljava/lang/String;
    .end local v14    # "ta":Landroid/content/res/TypedArray;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 151
    .end local v5    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v7    # "elementName":Ljava/lang/String;
    :goto_3
    nop

    .line 78
    :cond_b
    :goto_4
    move v0, v6

    goto/16 :goto_0

    .line 152
    :cond_c
    return-object v3
.end method

.method public static blacklist parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    .locals 12
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;-><init>()V

    .line 160
    .local v0, "overlay":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "application":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v2, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v3, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v4, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v5, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    const-string/jumbo v6, "runtime-manifest"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 168
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 169
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "elementName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 172
    nop

    .line 218
    .end local v6    # "elementName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addApplicationPolicies(Ljava/util/List;)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addActivityPolicies(Ljava/util/Map;)V

    .line 220
    invoke-virtual {v0, v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addReceiverPolicies(Ljava/util/Map;)V

    .line 221
    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addServicePolicies(Ljava/util/Map;)V

    .line 222
    invoke-virtual {v0, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addProviderPolicies(Ljava/util/Map;)V

    .line 223
    return-object v0

    .line 174
    .restart local v6    # "elementName":Ljava/lang/String;
    :cond_0
    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v7

    .line 176
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 178
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_1
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 180
    .local v7, "ta":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 182
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v9

    .line 185
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    nop

    .line 188
    if-nez v8, :cond_2

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    const-string v9, "activity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 192
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 193
    .local v9, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 194
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 196
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_3
    const-string/jumbo v9, "receiver"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 197
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 198
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 199
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_4
    const-string/jumbo v9, "service"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 202
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 203
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 204
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_5
    const-string/jumbo v9, "provider"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 207
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 208
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 209
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v7    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 212
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v7    # "ta":Landroid/content/res/TypedArray;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_7
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 185
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    throw v9
.end method

.method public static blacklist setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 64
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static blacklist setSalesCodeForTest(Ljava/lang/String;)V
    .locals 0
    .param p0, "salesCode"    # Ljava/lang/String;

    .line 59
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 69
    sput-boolean p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 70
    return-void
.end method

.method public static blacklist useLegacyRuntimeManifest(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "metaData"    # Landroid/os/Bundle;

    .line 262
    if-eqz p0, :cond_1

    const-string/jumbo v0, "runtime.manifest.overlay"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
