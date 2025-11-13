.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestUtils.java"


# static fields
.field public static final blacklist ATTR_MAX_VALUE:Ljava/lang/String; = "maxValue"

.field public static final blacklist ATTR_MIN_VALUE:Ljava/lang/String; = "minValue"

.field public static final blacklist ATTR_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final blacklist ATTR_PROPERTY_VALUE:Ljava/lang/String; = "propertyValue"

.field public static final blacklist ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final blacklist COUNTRYCODE:Ljava/lang/String;

.field public static final blacklist DEBUG:Z = true

.field public static final blacklist META_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime.manifest.overlay"

.field public static final blacklist ONEUI_VERSION:Ljava/lang/String;

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

.field private static blacklist sOneuiVersionForTest:Ljava/lang/String;

.field private static blacklist sSalesCodeForTest:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    const-string v0, "ro.build.version.oneui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCountryCode()Ljava/lang/String;
    .locals 1

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "SALESCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "RuntimeManifestUtils"

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    return-object v1

    :cond_2
    goto :goto_2

    :cond_3
    const-string v3, "COUNTRYCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

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

    return-object v1

    :cond_5
    goto :goto_1

    :cond_6
    const-string v3, "ONEUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMaxValue()J

    move-result-wide v7

    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getOneUiVersion()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->matchOneUiPolicy(JJJ)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched policy(oneui): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    :goto_1
    nop

    :cond_8
    :goto_2
    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getOneUiVersion()J
    .locals 4

    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static blacklist matchOneUiPolicy(JJJ)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    const-string v4, "RuntimeManifestUtils"

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid current OneUi version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value set, min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, p0

    if-gez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s lower than minValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s higher than maxValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 21
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v0, -0x1

    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    const/4 v0, 0x1

    if-eq v5, v0, :cond_f

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1

    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v18, v4

    goto/16 :goto_7

    :cond_1
    :goto_1
    if-eq v6, v5, :cond_e

    const/4 v5, 0x4

    if-ne v6, v5, :cond_2

    move/from16 v18, v4

    goto/16 :goto_6

    :cond_2
    new-instance v5, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-direct {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;-><init>()V

    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "RuntimeManifestUtils"

    if-eqz v8, :cond_d

    const-string v8, "type"

    const/4 v10, 0x0

    invoke-interface {v1, v10, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v5, v8}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setType(Ljava/lang/String;)V

    :cond_3
    const-string v11, "value"

    invoke-interface {v1, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v5, v11}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setValue(Ljava/lang/String;)V

    :cond_4
    const-string v12, "minValue"

    invoke-interface {v1, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v5, v12}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMinValue(Ljava/lang/String;)V

    :cond_5
    const-string v13, "maxValue"

    invoke-interface {v1, v10, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v5, v13}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMaxValue(Ljava/lang/String;)V

    :cond_6
    const-string v14, "propertyName"

    invoke-interface {v1, v10, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v5, v14}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyName(Ljava/lang/String;)V

    :cond_7
    const-string v15, "propertyValue"

    invoke-interface {v1, v10, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v5, v15}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyValue(Ljava/lang/String;)V

    :cond_8
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v18, v17

    move-object/from16 v0, v18

    if-eqz v0, :cond_a

    move/from16 v18, v4

    :try_start_1
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v4, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    move/from16 v18, v4

    :goto_2
    const/4 v4, 0x2

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    if-eqz v0, :cond_b

    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setIconRes(I)V

    :cond_b
    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v20

    if-eqz v20, :cond_c

    move/from16 v20, v0

    const/4 v0, 0x1

    invoke-virtual {v10, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :cond_c
    move/from16 v20, v0

    :goto_3
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    nop

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v0, 0x2

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPriority(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parsed "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v18, v4

    :goto_4
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_d
    move/from16 v18, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    goto :goto_6

    :cond_e
    move/from16 v18, v4

    :goto_6
    move v0, v6

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_f
    move/from16 v18, v4

    :goto_7
    return-object v3
.end method

.method public static blacklist parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "runtime-manifest"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    nop

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addApplicationPolicies(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addActivityPolicies(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addReceiverPolicies(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addServicePolicies(Ljava/util/Map;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addProviderPolicies(Ljava/util/Map;)V

    return-object v0

    :cond_0
    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_1
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v9

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    nop

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-string v9, "activity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v9, "receiver"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v9, "service"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v9, "provider"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    goto/16 :goto_0

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

    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v9
.end method

.method public static blacklist setCountryCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    return-void
.end method

.method public static blacklist setOneUiVersionForTest(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    return-void
.end method

.method public static blacklist setSalesCodeForTest(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    return-void
.end method

.method public static blacklist useLegacyRuntimeManifest(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "runtime.manifest.overlay"

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
