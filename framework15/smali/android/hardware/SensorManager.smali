.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;,
        Landroid/hardware/SensorManager$DataInjectionMode;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_MINUS_X:I = 0x81

.field public static final whitelist AXIS_MINUS_Y:I = 0x82

.field public static final whitelist AXIS_MINUS_Z:I = 0x83

.field public static final whitelist AXIS_X:I = 0x1

.field public static final whitelist AXIS_Y:I = 0x2

.field public static final whitelist AXIS_Z:I = 0x3

.field public static final blacklist DATA_INJECTION:I = 0x1

.field public static final whitelist DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final whitelist GRAVITY_EARTH:F = 9.80665f

.field public static final whitelist GRAVITY_JUPITER:F = 23.12f

.field public static final whitelist GRAVITY_MARS:F = 3.71f

.field public static final whitelist GRAVITY_MERCURY:F = 3.7f

.field public static final whitelist GRAVITY_MOON:F = 1.6f

.field public static final whitelist GRAVITY_NEPTUNE:F = 11.0f

.field public static final whitelist GRAVITY_PLUTO:F = 0.6f

.field public static final whitelist GRAVITY_SATURN:F = 8.96f

.field public static final whitelist GRAVITY_SUN:F = 275.0f

.field public static final whitelist GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final whitelist GRAVITY_URANUS:F = 8.69f

.field public static final whitelist GRAVITY_VENUS:F = 8.87f

.field public static final blacklist HAL_BYPASS_REPLAY_DATA_INJECTION:I = 0x4

.field private static final blacklist INJECT_MAIN_SCREEN_ON:I = 0x20047c1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist INJECT_SUB_SCREEN_ON:I = 0x30047c1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LIGHT_CLOUDY:F = 100.0f

.field public static final whitelist LIGHT_FULLMOON:F = 0.25f

.field public static final whitelist LIGHT_NO_MOON:F = 0.001f

.field public static final whitelist LIGHT_OVERCAST:F = 10000.0f

.field public static final whitelist LIGHT_SHADE:F = 20000.0f

.field public static final whitelist LIGHT_SUNLIGHT:F = 110000.0f

.field public static final whitelist LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final whitelist LIGHT_SUNRISE:F = 400.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final whitelist PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final whitelist RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist REPLAY_DATA_INJECTION:I = 0x3

.field public static final whitelist SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_DELAY_FASTEST:I = 0x0

.field public static final whitelist SENSOR_DELAY_GAME:I = 0x1

.field public static final whitelist SENSOR_DELAY_NORMAL:I = 0x3

.field public static final whitelist SENSOR_DELAY_UI:I = 0x2

.field public static final whitelist SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final whitelist SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final whitelist SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final whitelist SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final whitelist SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STANDARD_GRAVITY:F = 9.80665f

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "SensorManager"

.field private static final greylist-max-o sTempMatrix:[F


# instance fields
.field private greylist-max-o mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final greylist-max-o mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static whitelist getAltitude(FF)F
    .locals 5

    const v0, 0x3e42dcae

    div-float v1, p1, p0

    float-to-double v1, v1

    const-wide v3, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const v1, 0x472d2a00    # 44330.0f

    mul-float/2addr v2, v1

    return v2
.end method

.method public static whitelist getAngleChange([F[F[F)V
    .locals 37

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v2

    array-length v2, v0

    const/16 v26, 0xa

    const/16 v27, 0x7

    const/16 v28, 0x3

    move/from16 v29, v3

    const/16 v30, 0x8

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x2

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    aget v7, v0, v36

    aget v8, v0, v35

    aget v9, v0, v34

    aget v10, v0, v28

    aget v11, v0, v33

    aget v12, v0, v32

    aget v13, v0, v31

    aget v14, v0, v27

    aget v15, v0, v30

    move v2, v3

    goto :goto_0

    :cond_0
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    aget v7, v0, v36

    aget v8, v0, v35

    aget v9, v0, v34

    aget v10, v0, v33

    aget v11, v0, v32

    aget v12, v0, v31

    aget v13, v0, v30

    const/16 v2, 0x9

    aget v14, v0, v2

    aget v15, v0, v26

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    :goto_0
    array-length v3, v1

    if-ne v3, v2, :cond_2

    aget v16, v1, v36

    aget v17, v1, v35

    aget v18, v1, v34

    aget v19, v1, v28

    aget v20, v1, v33

    aget v21, v1, v32

    aget v22, v1, v31

    aget v23, v1, v27

    aget v24, v1, v30

    goto :goto_1

    :cond_2
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    aget v16, v1, v36

    aget v17, v1, v35

    aget v18, v1, v34

    aget v19, v1, v33

    aget v20, v1, v32

    aget v21, v1, v31

    aget v22, v1, v30

    const/16 v2, 0x9

    aget v23, v1, v2

    aget v24, v1, v26

    :cond_3
    :goto_1
    mul-float v2, v16, v8

    mul-float v3, v19, v11

    add-float/2addr v2, v3

    mul-float v3, v22, v14

    add-float/2addr v2, v3

    mul-float v3, v17, v8

    mul-float v25, v20, v11

    add-float v3, v3, v25

    mul-float v25, v23, v14

    add-float v3, v3, v25

    mul-float v25, v18, v7

    mul-float v26, v21, v10

    add-float v25, v25, v26

    mul-float v26, v24, v13

    add-float v4, v25, v26

    mul-float v25, v18, v8

    mul-float v26, v21, v11

    add-float v25, v25, v26

    mul-float v26, v24, v14

    add-float v5, v25, v26

    mul-float v25, v18, v9

    mul-float v26, v21, v12

    add-float v25, v25, v26

    mul-float v26, v24, v15

    add-float v6, v25, v26

    float-to-double v0, v2

    move/from16 v25, v7

    move/from16 v26, v8

    float-to-double v7, v3

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v36

    neg-float v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v35

    neg-float v0, v4

    float-to-double v0, v0

    float-to-double v7, v6

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v34

    return-void
.end method

.method private static greylist-max-o getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    move v0, p0

    goto :goto_0

    :pswitch_0
    const v0, 0x30d40

    goto :goto_0

    :pswitch_1
    const v0, 0x1046b

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x4e20

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getInclination([F)F
    .locals 4

    array-length v0, p0

    const/16 v1, 0x9

    const/4 v2, 0x5

    if-ne v0, v1, :cond_0

    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private greylist-max-o getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_0

    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    :cond_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getOrientation([F[F)[F
    .locals 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    aget v0, p0, v4

    float-to-double v5, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v3

    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    goto :goto_0

    :cond_0
    aget v0, p0, v4

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    aget v0, p0, v5

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget v3, p0, v3

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    :goto_0
    return-object p1
.end method

.method public static whitelist getQuaternionFromVector([F[F)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_0

    aget v0, p1, v2

    aput v0, p0, v5

    goto :goto_0

    :cond_0
    aget v0, p1, v5

    aget v1, p1, v5

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    aget v0, p1, v4

    aget v6, p1, v4

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aget v0, p1, v3

    aget v6, p1, v3

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aput v1, p0, v5

    aget v0, p0, v5

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    :cond_1
    aput v1, p0, v5

    :goto_0
    aget v0, p1, v5

    aput v0, p0, v4

    aget v0, p1, v4

    aput v0, p0, v3

    aget v0, p1, v3

    aput v0, p0, v2

    return-void
.end method

.method public static whitelist getRotationMatrix([F[F[F[F)Z
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v4, 0x1

    aget v5, p2, v4

    const/4 v6, 0x2

    aget v7, p2, v6

    mul-float v8, v3, v3

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    const v9, 0x411cf5c3    # 9.81f

    const v10, 0x3f765d4b

    const v11, 0x3f765d4b

    cmpg-float v11, v8, v11

    if-gez v11, :cond_0

    return v2

    :cond_0
    aget v11, p3, v2

    aget v12, p3, v4

    aget v13, p3, v6

    mul-float v14, v12, v7

    mul-float v15, v13, v5

    sub-float/2addr v14, v15

    mul-float v15, v13, v3

    mul-float v16, v11, v7

    sub-float v15, v15, v16

    mul-float v16, v11, v5

    mul-float v17, v12, v3

    sub-float v16, v16, v17

    mul-float v17, v14, v14

    mul-float v18, v15, v15

    add-float v17, v17, v18

    mul-float v18, v16, v16

    add-float v6, v17, v18

    move/from16 v18, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    return v2

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v4

    mul-float/2addr v14, v6

    mul-float/2addr v15, v6

    mul-float v16, v16, v6

    mul-float v19, v3, v3

    mul-float v20, v18, v18

    add-float v19, v19, v20

    mul-float v20, v7, v7

    add-float v2, v19, v20

    move/from16 v20, v6

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    mul-float/2addr v3, v2

    mul-float v5, v18, v2

    mul-float/2addr v7, v2

    mul-float v6, v5, v16

    mul-float v18, v7, v15

    sub-float v6, v6, v18

    mul-float v18, v7, v14

    mul-float v21, v3, v16

    sub-float v18, v18, v21

    mul-float v21, v3, v15

    mul-float v22, v5, v14

    sub-float v21, v21, v22

    const/16 v22, 0xf

    const/16 v23, 0xe

    const/16 v24, 0xd

    const/16 v25, 0xc

    const/16 v26, 0xb

    const/16 v27, 0xa

    move/from16 v28, v2

    const/16 v29, 0x8

    const/16 v30, 0x7

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x3

    const/16 v2, 0x9

    const/16 v35, 0x0

    if-eqz v0, :cond_3

    move/from16 v36, v4

    array-length v4, v0

    if-ne v4, v2, :cond_2

    const/4 v4, 0x0

    aput v14, v0, v4

    const/4 v4, 0x1

    aput v15, v0, v4

    const/4 v4, 0x2

    aput v16, v0, v4

    aput v6, v0, v34

    aput v18, v0, v33

    aput v21, v0, v32

    aput v3, v0, v31

    aput v5, v0, v30

    aput v7, v0, v29

    goto :goto_0

    :cond_2
    array-length v4, v0

    const/16 v2, 0x10

    if-ne v4, v2, :cond_4

    const/4 v2, 0x0

    aput v14, v0, v2

    const/4 v2, 0x1

    aput v15, v0, v2

    const/4 v2, 0x2

    aput v16, v0, v2

    aput v35, v0, v34

    aput v6, v0, v33

    aput v18, v0, v32

    aput v21, v0, v31

    aput v35, v0, v30

    aput v3, v0, v29

    const/16 v2, 0x9

    aput v5, v0, v2

    aput v7, v0, v27

    aput v35, v0, v26

    aput v35, v0, v25

    aput v35, v0, v24

    aput v35, v0, v23

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v22

    goto :goto_0

    :cond_3
    move/from16 v36, v4

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    mul-float v2, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v2, v4

    mul-float v4, v13, v13

    add-float/2addr v2, v4

    move v4, v8

    move/from16 v37, v9

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v2, v8, v2

    mul-float v8, v11, v6

    mul-float v9, v12, v18

    add-float/2addr v8, v9

    mul-float v9, v13, v21

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    mul-float v9, v11, v3

    mul-float v38, v12, v5

    add-float v9, v9, v38

    mul-float v38, v13, v7

    add-float v9, v9, v38

    mul-float/2addr v9, v2

    array-length v0, v1

    move/from16 v38, v2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v35, v1, v0

    const/4 v0, 0x2

    aput v35, v1, v0

    aput v35, v1, v34

    aput v8, v1, v33

    aput v9, v1, v32

    aput v35, v1, v31

    neg-float v0, v9

    aput v0, v1, v30

    aput v8, v1, v29

    goto :goto_1

    :cond_5
    array-length v0, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v35, v1, v0

    const/4 v0, 0x2

    aput v35, v1, v0

    aput v35, v1, v33

    aput v8, v1, v32

    aput v9, v1, v31

    aput v35, v1, v29

    neg-float v0, v9

    const/16 v2, 0x9

    aput v0, v1, v2

    aput v8, v1, v27

    aput v35, v1, v23

    aput v35, v1, v24

    aput v35, v1, v25

    aput v35, v1, v26

    aput v35, v1, v30

    aput v35, v1, v34

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, v22

    goto :goto_1

    :cond_6
    move v4, v8

    move/from16 v37, v9

    :cond_7
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist getRotationMatrixFromVector([F[F)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-lt v8, v12, :cond_0

    aget v8, v1, v9

    goto :goto_1

    :cond_0
    mul-float v8, v3, v3

    sub-float v8, v11, v8

    mul-float v13, v5, v5

    sub-float/2addr v8, v13

    mul-float v13, v7, v7

    sub-float/2addr v8, v13

    cmpl-float v13, v8, v10

    if-lez v13, :cond_1

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_0

    :cond_1
    move v13, v10

    :goto_0
    move v8, v13

    :goto_1
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v3, v13

    mul-float/2addr v14, v3

    mul-float v15, v5, v13

    mul-float/2addr v15, v5

    mul-float v16, v7, v13

    mul-float v16, v16, v7

    mul-float v17, v3, v13

    mul-float v17, v17, v5

    mul-float v18, v7, v13

    mul-float v18, v18, v8

    mul-float v19, v3, v13

    mul-float v19, v19, v7

    mul-float v20, v5, v13

    mul-float v20, v20, v8

    mul-float v21, v5, v13

    mul-float v21, v21, v7

    mul-float/2addr v13, v3

    mul-float/2addr v13, v8

    array-length v10, v0

    const/16 v22, 0x8

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x5

    const/16 v12, 0x9

    if-ne v10, v12, :cond_2

    sub-float v10, v11, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    sub-float v2, v17, v18

    aput v2, v0, v4

    add-float v2, v19, v20

    aput v2, v0, v6

    add-float v2, v17, v18

    aput v2, v0, v9

    sub-float v2, v11, v14

    sub-float v2, v2, v16

    const/4 v4, 0x4

    aput v2, v0, v4

    sub-float v2, v21, v13

    aput v2, v0, v25

    sub-float v2, v19, v20

    aput v2, v0, v24

    add-float v2, v21, v13

    aput v2, v0, v23

    sub-float/2addr v11, v14

    sub-float/2addr v11, v15

    aput v11, v0, v22

    goto :goto_2

    :cond_2
    array-length v10, v0

    const/16 v12, 0x10

    if-ne v10, v12, :cond_3

    sub-float v10, v11, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    sub-float v2, v17, v18

    aput v2, v0, v4

    add-float v2, v19, v20

    aput v2, v0, v6

    const/4 v2, 0x0

    aput v2, v0, v9

    add-float v2, v17, v18

    const/4 v4, 0x4

    aput v2, v0, v4

    sub-float v2, v11, v14

    sub-float v2, v2, v16

    aput v2, v0, v25

    sub-float v2, v21, v13

    aput v2, v0, v24

    const/4 v2, 0x0

    aput v2, v0, v23

    sub-float v2, v19, v20

    aput v2, v0, v22

    add-float v2, v21, v13

    const/16 v4, 0x9

    aput v2, v0, v4

    sub-float v2, v11, v14

    sub-float/2addr v2, v15

    const/16 v4, 0xa

    aput v2, v0, v4

    const/16 v2, 0xb

    const/4 v4, 0x0

    aput v4, v0, v2

    const/16 v2, 0xe

    aput v4, v0, v2

    const/16 v2, 0xd

    aput v4, v0, v2

    const/16 v2, 0xc

    aput v4, v0, v2

    const/16 v2, 0xf

    aput v11, v0, v2

    :cond_3
    :goto_2
    return-void
.end method

.method public static whitelist remapCoordinateSystem([FII[F)Z
    .locals 4

    if-ne p0, p3, :cond_2

    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v2, 0x1

    return v2

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o remapCoordinateSystemImpl([FII[F)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_0

    return v6

    :cond_0
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_13

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1

    goto/16 :goto_9

    :cond_1
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_12

    and-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    and-int/lit8 v5, v1, 0x3

    and-int/lit8 v7, v2, 0x3

    if-ne v5, v7, :cond_3

    return v6

    :cond_3
    xor-int v5, v1, v2

    and-int/lit8 v7, v1, 0x3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    and-int/lit8 v9, v2, 0x3

    sub-int/2addr v9, v8

    and-int/lit8 v10, v5, 0x3

    sub-int/2addr v10, v8

    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    rem-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x2

    rem-int/2addr v13, v12

    xor-int v14, v7, v11

    xor-int v15, v9, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_4

    xor-int/lit16 v5, v5, 0x80

    :cond_4
    const/16 v14, 0x80

    if-lt v1, v14, :cond_5

    move v15, v8

    goto :goto_0

    :cond_5
    move v15, v6

    :goto_0
    if-lt v2, v14, :cond_6

    move/from16 v16, v8

    goto :goto_1

    :cond_6
    move/from16 v16, v6

    :goto_1
    if-lt v5, v14, :cond_7

    move v6, v8

    :cond_7
    const/16 v14, 0x10

    if-ne v4, v14, :cond_8

    const/16 v17, 0x4

    goto :goto_2

    :cond_8
    move/from16 v17, v12

    :goto_2
    const/16 v18, 0x0

    move/from16 v8, v18

    :goto_3
    if-ge v8, v12, :cond_10

    mul-int v18, v8, v17

    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_4
    if-ge v14, v12, :cond_f

    if-ne v7, v14, :cond_a

    add-int v19, v18, v14

    if-eqz v15, :cond_9

    add-int/lit8 v20, v18, 0x0

    aget v12, v0, v20

    neg-float v12, v12

    goto :goto_5

    :cond_9
    add-int/lit8 v12, v18, 0x0

    aget v12, v0, v12

    :goto_5
    aput v12, v3, v19

    :cond_a
    if-ne v9, v14, :cond_c

    add-int v12, v18, v14

    if-eqz v16, :cond_b

    add-int/lit8 v19, v18, 0x1

    aget v1, v0, v19

    neg-float v1, v1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v18, 0x1

    aget v1, v0, v1

    :goto_6
    aput v1, v3, v12

    :cond_c
    if-ne v10, v14, :cond_e

    add-int v1, v18, v14

    add-int/lit8 v12, v18, 0x2

    if-eqz v6, :cond_d

    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_7

    :cond_d
    aget v12, v0, v12

    :goto_7
    aput v12, v3, v1

    :cond_e
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    const/4 v12, 0x3

    goto :goto_4

    :cond_f
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    const/4 v12, 0x3

    const/16 v14, 0x10

    goto :goto_3

    :cond_10
    const/16 v1, 0x10

    if-ne v4, v1, :cond_11

    const/16 v1, 0xe

    const/4 v8, 0x0

    aput v8, v3, v1

    const/16 v1, 0xd

    aput v8, v3, v1

    const/16 v1, 0xc

    aput v8, v3, v1

    const/16 v1, 0xb

    aput v8, v3, v1

    const/4 v1, 0x7

    aput v8, v3, v1

    const/4 v1, 0x3

    aput v8, v3, v1

    const/16 v1, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v3, v1

    :cond_11
    const/4 v1, 0x1

    return v1

    :cond_12
    :goto_8
    return v6

    :cond_13
    :goto_9
    return v6
.end method


# virtual methods
.method public whitelist cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected abstract greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public whitelist createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method greylist-max-o destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    return-void
.end method

.method protected abstract greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public whitelist flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v3, 0x11

    if-eq p1, v3, :cond_0

    const/16 v3, 0x16

    if-eq p1, v3, :cond_0

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    const/16 v3, 0x18

    if-eq p1, v3, :cond_0

    const/16 v3, 0x19

    if-eq p1, v3, :cond_0

    const/16 v3, 0x22

    if-eq p1, v3, :cond_0

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_0

    const v3, 0x10073

    if-eq p1, v3, :cond_0

    const v3, 0x10075    # 9.2E-41f

    if-eq p1, v3, :cond_0

    const/16 v3, 0x20

    if-eq p1, v3, :cond_0

    const/16 v3, 0x24

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-ne v5, v1, :cond_2

    return-object v4

    :cond_2
    goto :goto_0

    :cond_3
    const-string v3, "SensorManager"

    if-ne p1, v2, :cond_5

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v6

    if-ne v6, v1, :cond_4

    const-string v4, "get Physical proximity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    goto :goto_1

    :cond_5
    const v2, 0x10041

    if-ne p1, v2, :cond_7

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v6

    if-ne v6, v1, :cond_6

    const-string v4, "get light sensor instead of autobrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_6
    goto :goto_2

    :cond_7
    const/high16 v2, 0x10000

    if-le p1, v2, :cond_8

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Sensor type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_8
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDynamicSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected abstract greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public whitelist initDataInjection(Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist initDataInjection(ZI)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist initDataInjectionImpl(ZI)Z
.end method

.method public whitelist injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    array-length v1, p2

    if-ne v1, v0, :cond_2

    const/4 v1, -0x1

    if-lt p3, v1, :cond_1

    const/4 v1, 0x3

    if-gt p3, v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public whitelist isDynamicSensorDiscoverySupported()Z
    .locals 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 8

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public whitelist requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public blacklist setActiveScreenParameter(I)V
    .locals 7

    const v0, 0x10032

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const v4, 0x20047c1

    aput v4, v2, v3

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    const v4, 0x30047c1

    aput v4, v2, v3

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set parameter active screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SensorManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "set parameter active screen failed "

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public blacklist setBrightnessHysteresisParameter([F)V
    .locals 6

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const-string v1, "Inject hysteresis info"

    const-string v3, "SensorManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x10000002

    :try_start_0
    invoke-static {v2, v1, p1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Inject hysteresis info failed "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public greylist-max-o setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public whitelist unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method protected abstract greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method protected abstract greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
