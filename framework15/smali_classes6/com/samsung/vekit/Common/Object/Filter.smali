.class public Lcom/samsung/vekit/Common/Object/Filter;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Filter.java"


# static fields
.field private static final blacklist AI_GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/preloadfilters/grain_patch_strong.png"

.field private static final blacklist GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/myfilter/GrainTemplateImage"

.field private static final blacklist NOISE_TYPE_GRAY:I = 0x1

.field private static final blacklist NOISE_TYPE_NONE:I = 0x0

.field private static final blacklist NOISE_TYPE_RGB:I = 0x3


# instance fields
.field private blacklist aiGrainInitialPower:I

.field private blacklist aiGrainIntensity:F

.field private blacklist aiGrainRadius:F

.field private blacklist aiGrainStyle:I

.field private blacklist aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

.field private blacklist auxPath:Ljava/lang/String;

.field private blacklist enableAiGrain:Z

.field private blacklist enableGrain:Z

.field private blacklist enableVignette:Z

.field private blacklist filterType:Lcom/samsung/vekit/Common/Type/FilterType;

.field private blacklist grainPath:Ljava/lang/String;

.field private blacklist grainPower:F

.field private blacklist grainRadius:F

.field private blacklist jsonPath:Ljava/lang/String;

.field private blacklist noiseIntensity:F

.field private blacklist noiseType:I

.field private blacklist path:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    new-instance v0, Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/IntensityInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/Filter;->id:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/Filter;->name:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/Filter;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseJson(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "filter_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "basic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    const-string v6, "noise_intensity"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v6, v8

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    const-string v6, "noise_color"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "gray"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_1

    :cond_1
    const-string v8, "rgb"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    iput v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_1

    :cond_2
    iput v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    :goto_1
    goto/16 :goto_2

    :cond_3
    const-string v6, "myfilter_effect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ".aux"

    const/16 v9, 0x2e

    if-eqz v6, :cond_4

    :try_start_2
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    iput-boolean v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    const-string v9, "/system/cameradata/myfilter/GrainTemplateImage"

    iput-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    iput-boolean v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    const-string v10, "grain_power"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    const-string v10, "grain_radius"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v1, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    goto/16 :goto_2

    :cond_4
    const-string v6, "ai_myfilter_effect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "ai_grain_initial_power"

    const-string v11, "ai_grain_style"

    const-string v12, "ai_grain_radius"

    const-string v13, "step"

    const-string v14, "default"

    const-string v15, "max"

    const-string v7, "min"

    const-string v4, "ai_grain_power"

    if-eqz v6, :cond_5

    :try_start_3
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    iput-boolean v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    iget-object v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v7, v12

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    const-string v7, "ai_grain_intensity"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    goto :goto_2

    :cond_5
    sget-object v6, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    iget-object v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v5, "parseJson: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return v4

    :catch_1
    move-exception v0

    iget-object v4, v1, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return v4
.end method

.method private blacklist setPath(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v1, "filterPath is Empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v2, "filterPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/cameradata/preloadfilters/grain_patch_strong.png"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/vekit/Common/Object/Filter;->parseJson(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v3, "Parse failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist getAiGrainInitialPower()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    return v0
.end method

.method public blacklist getAiGrainIntensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    return v0
.end method

.method public blacklist getAiGrainPower()Lcom/samsung/vekit/Common/Object/IntensityInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    return-object v0
.end method

.method public blacklist getAiGrainRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    return v0
.end method

.method public blacklist getAiGrainStyle()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    return v0
.end method

.method public blacklist getAuxPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFilterType()Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    return-object v0
.end method

.method public blacklist getGrainPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGrainPower()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    return v0
.end method

.method public blacklist getGrainRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    return v0
.end method

.method public blacklist getJsonPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNoiseIntensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    return v0
.end method

.method public blacklist getNoiseType()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    return v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnableAiGrain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    return v0
.end method

.method public blacklist isEnableGrain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    return v0
.end method

.method public blacklist isEnableVignette()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    return v0
.end method

.method public blacklist setAiGrainInitialPower(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    return-void
.end method

.method public blacklist setAiGrainIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    return-void
.end method

.method public blacklist setAiGrainPower(Lcom/samsung/vekit/Common/Object/IntensityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    return-void
.end method

.method public blacklist setAiGrainRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    return-void
.end method

.method public blacklist setAiGrainStyle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    return-void
.end method

.method public blacklist setEnableAiGrain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    return-void
.end method
