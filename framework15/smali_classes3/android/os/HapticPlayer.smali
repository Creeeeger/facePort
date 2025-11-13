.class public Landroid/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HapticPlayer$StepParameter;,
        Landroid/os/HapticPlayer$RampParameter;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PARAM:I = -0x1

.field private static final blacklist DYNAMIC_DEFAULT_INTERVAL:I = 0x32

.field private static final blacklist DYNAMIC_MAX_AMPLITUDE:I = 0x64

.field private static final blacklist DYNAMIC_MAX_DURATION:I = 0x1388

.field private static final blacklist DYNAMIC_MAX_FREQUENCY:I = 0x19

.field private static final blacklist DYNAMIC_MIN_DURATION:I = 0x5

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_B:I = 0x4

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_C:I = 0x4

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_D:I = 0x1

.field private static final blacklist DYNAMIC_TRANSIENT_DURATION:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "HapticPlayer"

.field private static final blacklist mAvailable:Z

.field private static final blacklist mService:Landroid/os/IVibratorManagerService;

.field private static final blacklist mVibratorGroup:I


# instance fields
.field private blacklist mEffect:Landroid/os/DynamicEffect;

.field private blacklist mLoop:I

.field private final blacklist mStepCount:I

.field private blacklist mStepParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoop(Landroid/os/HapticPlayer;)I
    .locals 0

    iget p0, p0, Landroid/os/HapticPlayer;->mLoop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStepParameters(Landroid/os/HapticPlayer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateStepEffect(Landroid/os/HapticPlayer;Ljava/util/List;III)Landroid/os/VibrationEffect;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/HapticPlayer;->createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseRamp(Landroid/os/HapticPlayer;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer;->parseRamp(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrampToStepParameter(Landroid/os/HapticPlayer;Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer;->rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmService()Landroid/os/IVibratorManagerService;
    .locals 1

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    nop

    const-string/jumbo v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    sput-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-static {}, Landroid/os/HapticPlayer;->getVibratorGroup()I

    move-result v0

    sput v0, Landroid/os/HapticPlayer;->mVibratorGroup:I

    sget v0, Landroid/os/HapticPlayer;->mVibratorGroup:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/os/HapticPlayer;->mAvailable:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/HapticPlayer;->getStepCount()I

    move-result v0

    iput v0, p0, Landroid/os/HapticPlayer;->mStepCount:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/DynamicEffect;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/HapticPlayer;-><init>()V

    iput-object p1, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-void
.end method

.method private blacklist checkParameters(III)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-gez p1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/16 v2, 0x3e8

    if-le p1, v2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x1

    if-ge p2, v2, :cond_3

    if-ne p2, v1, :cond_4

    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_5

    :cond_4
    return v0

    :cond_5
    if-gez p3, :cond_6

    if-eq p3, v1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method private blacklist createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;III)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    new-array v2, v0, [F

    new-array v3, v0, [I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-lt p3, v5, :cond_1

    const/16 v5, 0xff

    if-gt p3, v5, :cond_1

    int-to-float v5, p3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v4, v5, v6

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/HapticPlayer$StepParameter;

    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getDuration()I

    move-result v8

    const/16 v9, 0x1388

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v3, v6

    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getAmplitude()F

    move-result v8

    mul-float/2addr v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v1, v6

    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getFrequency()F

    move-result v8

    mul-float/2addr v8, v5

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    const/16 v6, 0x3e8

    if-gt p2, v6, :cond_3

    add-int/lit8 v6, v0, -0x1

    aput p2, v3, v6

    :cond_3
    const/4 v6, -0x1

    invoke-static {v3, v1, v2, v6}, Landroid/os/VibrationEffect;->createWaveform([I[F[FI)Landroid/os/VibrationEffect;

    move-result-object v6

    return-object v6
.end method

.method private blacklist getStepCount()I
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/HapticPlayer;->mVibratorGroup:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/HapticPlayer;->mVibratorGroup:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    nop

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static blacklist getVibratorGroup()I
    .locals 4

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_0

    const-string v0, "Failed to getVibratorGroup; no service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v2}, Landroid/os/IVibratorManagerService;->getSupportedVibratorGroup()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to getVibratorGroup."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private blacklist interpolate(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public static greylist isAvailable()Z
    .locals 1

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    return v0
.end method

.method private blacklist parseRamp(Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$RampParameter;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "Frequency"

    const-string v2, "Intensity"

    const-string v3, "HapticPlayer"

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "Pattern"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Event"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "RelativeTime"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "Parameters"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eq v10, v6, :cond_1

    new-instance v15, Landroid/os/HapticPlayer$RampParameter;

    sub-int v14, v10, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v14, v15

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v14 .. v19}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "continuous"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Curve"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v17, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v14, v23

    :goto_1
    move/from16 v15, v17

    if-ge v14, v15, :cond_3

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    move-object/from16 v24, v17

    move-object/from16 v17, v1

    const-string v1, "Time"

    move-object/from16 v25, v5

    move-object/from16 v5, v24

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    move v1, v6

    move/from16 v24, v7

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v20, v7

    if-lez v14, :cond_2

    new-instance v7, Landroid/os/HapticPlayer$RampParameter;

    move-object/from16 v32, v0

    int-to-float v0, v12

    mul-float v0, v0, v21

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v27, v0, v22

    int-to-float v0, v12

    mul-float/2addr v0, v6

    div-float v28, v0, v22

    add-int v0, v19, v13

    int-to-float v0, v0

    const/high16 v22, 0x41c80000    # 25.0f

    div-float v29, v0, v22

    add-int v0, v20, v13

    int-to-float v0, v0

    div-float v30, v0, v22

    sub-int v31, v18, v16

    move-object/from16 v26, v7

    invoke-direct/range {v26 .. v31}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v32, v0

    :goto_2
    move/from16 v16, v18

    move/from16 v21, v6

    move/from16 v19, v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v22, v6

    move/from16 v7, v24

    move-object/from16 v5, v25

    move-object/from16 v0, v32

    move v6, v1

    move-object/from16 v1, v17

    move/from16 v17, v15

    goto :goto_1

    :cond_3
    move-object/from16 v32, v0

    move-object/from16 v17, v1

    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    add-int v18, v10, v18

    move/from16 v6, v18

    goto :goto_3

    :cond_4
    move-object/from16 v32, v0

    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    const-string/jumbo v0, "transient"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/HapticPlayer$RampParameter;

    int-to-float v5, v12

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v15, v5, v6

    int-to-float v5, v12

    div-float v16, v5, v6

    int-to-float v5, v13

    const/high16 v6, 0x41c80000    # 25.0f

    div-float v17, v5, v6

    int-to-float v5, v13

    div-float v18, v5, v6

    const/16 v19, 0x14

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v10, 0x14

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    add-int/lit8 v7, v24, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v25

    move-object/from16 v0, v32

    goto/16 :goto_0

    :cond_6
    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    new-instance v0, Landroid/os/HapticPlayer$RampParameter;

    const/4 v12, 0x0

    const/16 v13, 0x32

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "parseRamp: Failed to parse json string."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v4

    :cond_7
    :goto_5
    const-string/jumbo v0, "parseRamp: invalid JsonString."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HapticPlayer$RampParameter;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndAmplitude()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartFrequency()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndFrequency()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/HapticPlayer$StepParameter;

    invoke-direct {v5, v1, v3, v4}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_0
    iget v5, p0, Landroid/os/HapticPlayer;->mStepCount:I

    div-int/lit8 v6, v4, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int v6, v4, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v5, :cond_1

    int-to-float v9, v8

    int-to-float v10, v5

    div-float/2addr v9, v10

    new-instance v10, Landroid/os/HapticPlayer$StepParameter;

    invoke-direct {p0, v0, v1, v9}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v11

    invoke-direct {p0, v2, v3, v9}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/os/HapticPlayer$StepParameter;

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v9, v6

    sub-int v9, v4, v9

    invoke-direct {v8, v1, v3, v9}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method private blacklist start(IIIIZ)V
    .locals 8

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/os/HapticPlayer;->checkParameters(III)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to start vibrate; invalid interval, amplitude or frequency."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    goto :goto_1

    :cond_3
    :goto_0
    iput v1, p0, Landroid/os/HapticPlayer;->mLoop:I

    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Landroid/os/HapticPlayer$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/HapticPlayer$1;-><init>(Landroid/os/HapticPlayer;ZIII)V

    const-string v1, "DynamicEffectThread"

    invoke-direct {v0, v7, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_2
    const-string v0, "Failed to start vibrate; no support, no service or no effect info."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist update(IIIZ)V
    .locals 8

    if-eqz p4, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    const-string v0, "HapticPlayer"

    const-string v1, "Fail to update."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v3, p0, Landroid/os/HapticPlayer;->mLoop:I

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    return-void
.end method

.method public greylist start(I)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist start(III)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist start(IIII)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist stop()V
    .locals 4

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    iget-object v2, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    const/4 v3, -0x1

    invoke-interface {v0, v3, v2}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to stop vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "Failed to stop vibrate; no support or no service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist updateAmplitude(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateFrequency(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, p1, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateInterval(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateParameter(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method
