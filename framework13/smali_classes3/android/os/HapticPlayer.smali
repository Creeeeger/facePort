.class public Landroid/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HapticPlayer$RampParameter;,
        Landroid/os/HapticPlayer$StepParameter;
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

.field private static final blacklist mService:Landroid/os/IVibratorManagerService;


# instance fields
.field private final blacklist mAvailable:Z

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
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    nop

    .line 36
    const-string/jumbo v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    sput-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    .line 57
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    .line 58
    invoke-static {}, Landroid/os/HapticPlayer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    .line 59
    invoke-direct {p0}, Landroid/os/HapticPlayer;->getStepCount()I

    move-result v0

    iput v0, p0, Landroid/os/HapticPlayer;->mStepCount:I

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/DynamicEffect;)V
    .locals 5
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 63
    invoke-direct {p0}, Landroid/os/HapticPlayer;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/DynamicEffect;->getEffectInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HapticPlayer;->parseRamp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "rampParameters":Ljava/util/List;, "Ljava/util/List<Landroid/os/HapticPlayer$RampParameter;>;"
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HapticPlayer$RampParameter;

    .line 67
    .local v2, "parameter":Landroid/os/HapticPlayer$RampParameter;
    iget-object v3, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/os/HapticPlayer;->rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .end local v2    # "parameter":Landroid/os/HapticPlayer$RampParameter;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method private blacklist checkParameters(III)Z
    .locals 4
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 191
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-gez p1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/16 v2, 0x3e8

    if-le p1, v2, :cond_2

    .line 192
    :cond_1
    return v0

    .line 196
    :cond_2
    const/4 v2, 0x1

    if-ge p2, v2, :cond_3

    if-ne p2, v1, :cond_4

    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_5

    .line 197
    :cond_4
    return v0

    .line 202
    :cond_5
    if-gez p3, :cond_6

    if-eq p3, v1, :cond_6

    .line 203
    return v0

    .line 205
    :cond_6
    return v2
.end method

.method private blacklist createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;
    .locals 10
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;III)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    .line 210
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/os/HapticPlayer$StepParameter;>;"
    if-nez p1, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    .local v0, "size":I
    new-array v1, v0, [F

    .line 215
    .local v1, "amplitudes":[F
    new-array v2, v0, [F

    .line 216
    .local v2, "frequencies":[F
    new-array v3, v0, [I

    .line 219
    .local v3, "durations":[I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 220
    .local v4, "amplitudeScale":F
    const/4 v5, 0x1

    if-lt p3, v5, :cond_1

    const/16 v5, 0xff

    if-gt p3, v5, :cond_1

    .line 221
    int-to-float v5, p3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v4, v5, v6

    .line 226
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 228
    .local v5, "frequencyScale":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 229
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/HapticPlayer$StepParameter;

    .line 230
    .local v7, "parameter":Landroid/os/HapticPlayer$StepParameter;
    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getDuration()I

    move-result v8

    const/16 v9, 0x1388

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v3, v6

    .line 231
    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getAmplitude()F

    move-result v8

    mul-float/2addr v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v1, v6

    .line 232
    invoke-virtual {v7}, Landroid/os/HapticPlayer$StepParameter;->getFrequency()F

    move-result v8

    mul-float/2addr v8, v5

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v2, v6

    .line 228
    .end local v7    # "parameter":Landroid/os/HapticPlayer$StepParameter;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v6    # "i":I
    :cond_2
    if-ltz p2, :cond_3

    const/16 v6, 0x3e8

    if-gt p2, v6, :cond_3

    .line 237
    add-int/lit8 v6, v0, -0x1

    aput p2, v3, v6

    .line 240
    :cond_3
    const/4 v6, -0x1

    invoke-static {v3, v1, v2, v6}, Landroid/os/VibrationEffect;->createWaveform([I[F[FI)Landroid/os/VibrationEffect;

    move-result-object v6

    return-object v6
.end method

.method private blacklist getStepCount()I
    .locals 3

    .line 78
    const/4 v0, 0x1

    .line 79
    .local v0, "stepCount":I
    invoke-static {}, Landroid/os/HapticPlayer;->getVibratorGroup()I

    move-result v1

    .line 80
    .local v1, "vibratorGroup":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 81
    const/4 v0, 0x4

    goto :goto_0

    .line 82
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 83
    const/4 v0, 0x4

    goto :goto_0

    .line 84
    :cond_1
    nop

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0
.end method

.method private static blacklist getVibratorGroup()I
    .locals 4

    .line 97
    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    if-nez v0, :cond_0

    .line 98
    const-string v0, "Failed to getVibratorGroup; no service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 104
    .local v2, "vibratorGroup":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->getSupportedVibratorGroup()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to getVibratorGroup."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2
.end method

.method private blacklist interpolate(FFF)F
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "position"    # F

    .line 336
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public static greylist isAvailable()Z
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/HapticPlayer;->getVibratorGroup()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist parseRamp(Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .param p1, "json"    # Ljava/lang/String;
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

    .line 244
    move-object/from16 v1, p1

    const-string v0, "Frequency"

    const-string v2, "Intensity"

    const-string v3, "HapticPlayer"

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 249
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/os/HapticPlayer$RampParameter;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "Pattern"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 252
    .local v5, "patternArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 253
    .local v6, "curRelativeTime":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 254
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Event"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 255
    .local v8, "eventJson":Lorg/json/JSONObject;
    const-string v9, "Type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "type":Ljava/lang/String;
    const-string v10, "RelativeTime"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 258
    .local v10, "relativeTime":I
    const-string v11, "Parameters"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 259
    .local v11, "paramJson":Lorg/json/JSONObject;
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 260
    .local v12, "intensity":I
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 262
    .local v13, "frequency":I
    if-eq v10, v6, :cond_1

    .line 263
    new-instance v15, Landroid/os/HapticPlayer$RampParameter;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sub-int v14, v10, v6

    .line 264
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object v14, v15

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    .line 263
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    const-string v1, "continuous"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    const-string v1, "Curve"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 269
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v17, v16

    .line 270
    .local v17, "length":I
    const/16 v16, 0x0

    .local v16, "startTime":I
    const/16 v18, 0x0

    .local v18, "endTime":I
    const/16 v19, 0x0

    .local v19, "startFrequency":I
    const/16 v20, 0x0

    .line 271
    .local v20, "endFrequency":I
    const/16 v21, 0x0

    .local v21, "startIntensity":F
    const/16 v22, 0x0

    .line 272
    .local v22, "endIntensity":F
    const/16 v23, 0x0

    move/from16 v14, v23

    .local v14, "ii":I
    :goto_1
    move/from16 v15, v17

    .end local v17    # "length":I
    .local v15, "length":I
    if-ge v14, v15, :cond_3

    .line 273
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    move-object/from16 v24, v17

    .line 274
    .local v24, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v17, v1

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .local v17, "jsonArray":Lorg/json/JSONArray;
    const-string v1, "Time"

    move-object/from16 v25, v5

    move-object/from16 v5, v24

    .end local v24    # "jsonObject":Lorg/json/JSONObject;
    .local v5, "jsonObject":Lorg/json/JSONObject;
    .local v25, "patternArray":Lorg/json/JSONArray;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    .line 275
    move v1, v6

    move/from16 v24, v7

    .end local v6    # "curRelativeTime":I
    .end local v7    # "i":I
    .local v1, "curRelativeTime":I
    .local v24, "i":I
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 276
    .end local v22    # "endIntensity":F
    .local v6, "endIntensity":F
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v20, v7

    .line 277
    if-lez v14, :cond_2

    .line 278
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

    .line 277
    :cond_2
    move-object/from16 v32, v0

    .line 285
    :goto_2
    move/from16 v16, v18

    .line 286
    move/from16 v21, v6

    .line 287
    move/from16 v19, v20

    .line 272
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    add-int/lit8 v14, v14, 0x1

    move/from16 v22, v6

    move/from16 v7, v24

    move-object/from16 v5, v25

    move-object/from16 v0, v32

    move v6, v1

    move-object/from16 v1, v17

    move/from16 v17, v15

    goto :goto_1

    .end local v17    # "jsonArray":Lorg/json/JSONArray;
    .end local v24    # "i":I
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .local v1, "jsonArray":Lorg/json/JSONArray;
    .local v5, "patternArray":Lorg/json/JSONArray;
    .local v6, "curRelativeTime":I
    .restart local v7    # "i":I
    .restart local v22    # "endIntensity":F
    :cond_3
    move-object/from16 v32, v0

    move-object/from16 v17, v1

    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    .line 289
    .end local v5    # "patternArray":Lorg/json/JSONArray;
    .end local v6    # "curRelativeTime":I
    .end local v7    # "i":I
    .end local v14    # "ii":I
    .local v1, "curRelativeTime":I
    .restart local v17    # "jsonArray":Lorg/json/JSONArray;
    .restart local v24    # "i":I
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    add-int v18, v10, v18

    .line 290
    .end local v1    # "curRelativeTime":I
    .end local v15    # "length":I
    .end local v16    # "startTime":I
    .end local v17    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "startFrequency":I
    .end local v20    # "endFrequency":I
    .end local v21    # "startIntensity":F
    .end local v22    # "endIntensity":F
    .local v18, "curRelativeTime":I
    move/from16 v6, v18

    goto :goto_3

    .end local v18    # "curRelativeTime":I
    .end local v24    # "i":I
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v5    # "patternArray":Lorg/json/JSONArray;
    .restart local v6    # "curRelativeTime":I
    .restart local v7    # "i":I
    :cond_4
    move-object/from16 v32, v0

    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    .end local v5    # "patternArray":Lorg/json/JSONArray;
    .end local v6    # "curRelativeTime":I
    .end local v7    # "i":I
    .restart local v1    # "curRelativeTime":I
    .restart local v24    # "i":I
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    const-string/jumbo v0, "transient"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
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

    .line 297
    add-int/lit8 v0, v10, 0x14

    move v6, v0

    .end local v1    # "curRelativeTime":I
    .local v0, "curRelativeTime":I
    goto :goto_3

    .line 290
    .end local v0    # "curRelativeTime":I
    .restart local v1    # "curRelativeTime":I
    :cond_5
    move v6, v1

    .line 253
    .end local v1    # "curRelativeTime":I
    .end local v8    # "eventJson":Lorg/json/JSONObject;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "relativeTime":I
    .end local v11    # "paramJson":Lorg/json/JSONObject;
    .end local v12    # "intensity":I
    .end local v13    # "frequency":I
    .restart local v6    # "curRelativeTime":I
    :goto_3
    add-int/lit8 v7, v24, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v25

    move-object/from16 v0, v32

    .end local v24    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v25    # "patternArray":Lorg/json/JSONArray;
    .restart local v5    # "patternArray":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v25, v5

    move v1, v6

    move/from16 v24, v7

    .line 300
    .end local v5    # "patternArray":Lorg/json/JSONArray;
    .end local v6    # "curRelativeTime":I
    .end local v7    # "i":I
    .restart local v1    # "curRelativeTime":I
    .restart local v25    # "patternArray":Lorg/json/JSONArray;
    new-instance v0, Landroid/os/HapticPlayer$RampParameter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    nop

    .end local v1    # "curRelativeTime":I
    .end local v25    # "patternArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "parseRamp: Failed to parse json string."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-object v4

    .line 245
    .end local v4    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/os/HapticPlayer$RampParameter;>;"
    :cond_7
    :goto_5
    const-string/jumbo v0, "parseRamp: invalid JsonString."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;
    .locals 10
    .param p1, "parameter"    # Landroid/os/HapticPlayer$RampParameter;
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

    .line 309
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndAmplitude()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/os/HapticPlayer$StepParameter;

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartAmplitude()F

    move-result v1

    .line 311
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartFrequency()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    .line 310
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 317
    .local v0, "tmpStepCount":I
    iget v1, p0, Landroid/os/HapticPlayer;->mStepCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 318
    .local v1, "stepCount":I
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 319
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result v2

    div-int/2addr v2, v1

    .line 321
    .local v2, "stepDuration":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v3, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/os/HapticPlayer$StepParameter;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 323
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 324
    .local v5, "pos":F
    new-instance v6, Landroid/os/HapticPlayer$StepParameter;

    .line 325
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartAmplitude()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndAmplitude()F

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v7

    .line 326
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartFrequency()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndFrequency()F

    move-result v9

    invoke-direct {p0, v8, v9, v5}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v8

    invoke-direct {v6, v7, v8, v2}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    .line 324
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v5    # "pos":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    .line 330
    .local v4, "duration":I
    new-instance v5, Landroid/os/HapticPlayer$StepParameter;

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndAmplitude()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndFrequency()F

    move-result v7

    invoke-direct {v5, v6, v7, v4}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-object v3
.end method

.method private blacklist update(IIIZ)V
    .locals 2
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I
    .param p4, "needCheck"    # Z

    .line 169
    if-eqz p4, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 170
    :cond_0
    const-string v0, "HapticPlayer"

    const-string v1, "Fail to update."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_1
    iget v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/HapticPlayer;->start(IIII)V

    .line 174
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 341
    return-void
.end method

.method public greylist start(I)V
    .locals 1
    .param p1, "loop"    # I

    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/os/HapticPlayer;->start(IIII)V

    .line 113
    return-void
.end method

.method public greylist start(III)V
    .locals 1
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I

    .line 116
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/HapticPlayer;->start(IIII)V

    .line 117
    return-void
.end method

.method public greylist start(IIII)V
    .locals 11
    .param p1, "loop"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I

    .line 120
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_4

    sget-object v2, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_3

    .line 125
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/os/HapticPlayer;->checkParameters(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "Failed to start vibrate; invalid interval, amplitude or frequency."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 131
    :cond_1
    const/4 v0, -0x1

    const/16 v3, 0x80

    if-eq p1, v0, :cond_3

    if-lt p1, v3, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    goto :goto_1

    .line 132
    :cond_3
    :goto_0
    iput v3, p0, Landroid/os/HapticPlayer;->mLoop:I

    .line 136
    :goto_1
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v3, 0x12

    .line 137
    invoke-virtual {v0, v3}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 138
    .local v0, "attrs":Landroid/os/VibrationAttributes;
    iget-object v3, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    invoke-direct {p0, v3, p2, p3, p4}, Landroid/os/HapticPlayer;->createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 139
    .local v9, "effect":Landroid/os/VibrationEffect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DynamicEffect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/HapticPlayer;->mLoop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "reason":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v9}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v5

    iget-object v8, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    .line 141
    move-object v6, v0

    move-object v7, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_2

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to start vibrate."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 121
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    .end local v9    # "effect":Landroid/os/VibrationEffect;
    .end local v10    # "reason":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v0, "Failed to start vibrate; no support, no service or no effect info."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public greylist stop()V
    .locals 4

    .line 177
    iget-boolean v0, p0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-nez v0, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v2, v3}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to stop vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 178
    :cond_1
    :goto_1
    const-string v0, "Failed to stop vibrate; no support or no service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public greylist updateAmplitude(I)V
    .locals 2
    .param p1, "amplitude"    # I

    .line 155
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    .line 156
    return-void
.end method

.method public greylist updateFrequency(I)V
    .locals 2
    .param p1, "freq"    # I

    .line 160
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, p1, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    .line 161
    return-void
.end method

.method public greylist updateInterval(I)V
    .locals 2
    .param p1, "interval"    # I

    .line 150
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    .line 151
    return-void
.end method

.method public greylist updateParameter(III)V
    .locals 1
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/HapticPlayer;->update(IIIZ)V

    .line 166
    return-void
.end method
