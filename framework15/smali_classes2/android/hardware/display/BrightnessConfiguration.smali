.class public final Landroid/hardware/display/BrightnessConfiguration;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist ATTR_COLLECT_COLOR:Ljava/lang/String; = "collect-color"

.field private static final blacklist ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final blacklist ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final blacklist ATTR_MODEL_LOWER_BOUND:Ljava/lang/String; = "model-lower-bound"

.field private static final blacklist ATTR_MODEL_TIMEOUT:Ljava/lang/String; = "model-timeout"

.field private static final blacklist ATTR_MODEL_UPPER_BOUND:Ljava/lang/String; = "model-upper-bound"

.field private static final blacklist ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SHORT_TERM_TIMEOUT_UNSET:J = -0x1L

.field private static final blacklist TAG_BRIGHTNESS_CORRECTION:Ljava/lang/String; = "brightness-correction"

.field private static final blacklist TAG_BRIGHTNESS_CORRECTIONS:Ljava/lang/String; = "brightness-corrections"

.field private static final blacklist TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final blacklist TAG_BRIGHTNESS_PARAMS:Ljava/lang/String; = "brightness-params"

.field private static final blacklist TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"


# instance fields
.field private final blacklist mCorrectionsByCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCorrectionsByPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mLux:[F

.field private final greylist-max-o mNits:[F

.field private final blacklist mShortTermModelLowerLuxMultiplier:F

.field private final blacklist mShortTermModelTimeout:J

.field private final blacklist mShortTermModelUpperLuxMultiplier:F

.field private final blacklist mShouldCollectColorSamples:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/lang/String;",
            "ZJFF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iput-object p3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iput-object p4, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iput-object p5, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iput-wide p7, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iput p9, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iput p10, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return-void
.end method

.method synthetic constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFFLandroid/hardware/display/BrightnessConfiguration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V

    return-void
.end method

.method private blacklist checkFloatEquals(FF)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/high16 v10, 0x7fc00000    # Float.NaN

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    :goto_0
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "brightness-curve"

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    const-string v12, "description"

    invoke-interface {v0, v13, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    :goto_1
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "brightness-point"

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    const-string v13, "lux"

    invoke-static {v0, v13}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v13

    const-string v14, "nits"

    invoke-static {v0, v14}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    const-string v12, "brightness-corrections"

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    :goto_2
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "brightness-correction"

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    const-string v14, "package-name"

    invoke-interface {v0, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "category"

    move/from16 v16, v11

    const/4 v11, -0x1

    invoke-interface {v0, v13, v15, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    invoke-static/range {p0 .. p0}, Landroid/hardware/display/BrightnessCorrection;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v13

    if-eqz v14, :cond_4

    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-eq v15, v11, :cond_5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    move/from16 v11, v16

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    move/from16 v16, v11

    goto :goto_4

    :cond_7
    move/from16 v16, v11

    const-string v11, "brightness-params"

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    nop

    const-string v11, "collect-color"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v0, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string v11, "model-timeout"

    invoke-static {v0, v11}, Landroid/hardware/display/BrightnessConfiguration;->loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_8
    const-string v12, "model-lower-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v9

    const-string v12, "model-upper-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v10

    move/from16 v11, v16

    goto/16 :goto_0

    :cond_9
    :goto_4
    nop

    move/from16 v11, v16

    goto/16 :goto_0

    :cond_a
    move/from16 v16, v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [F

    new-array v13, v11, [F

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_b

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v12, v14

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    new-instance v14, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v14, v12, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    invoke-virtual {v14, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {v14, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    goto :goto_6

    :cond_c
    move-object/from16 v19, v1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {v14, v15, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    move-object/from16 v0, v18

    goto :goto_7

    :cond_d
    invoke-virtual {v14, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v7, v8}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iget-boolean v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iget-wide v5, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public whitelist getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public whitelist getCurve()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortTermModelLowerLuxMultiplier()F
    .locals 1

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    return v0
.end method

.method public whitelist getShortTermModelTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public whitelist getShortTermModelUpperLuxMultiplier()F
    .locals 1

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "brightness-curve"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "description"

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const-string v3, "brightness-point"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v4, v4, v2

    const-string v5, "lux"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    const-string v5, "nits"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-corrections"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "brightness-correction"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "package-name"

    invoke-interface {p1, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "category"

    invoke-interface {p1, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-params"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-eqz v2, :cond_4

    const-string v2, "collect-color"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    const-string v2, "model-timeout"

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "model-lower-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "model-upper-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public whitelist shouldCollectColorSamples()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, ", "

    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "], {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "}, \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shouldCollectColorSamples = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelLowerLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelUpperLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
