.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;,
        Landroid/location/Location$Format;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_DEGREES:I = 0x0

.field public static final whitelist FORMAT_MINUTES:I = 0x1

.field public static final whitelist FORMAT_SECONDS:I = 0x2

.field private static final blacklist HAS_ALTITUDE_ACCURACY_MASK:I = 0x20

.field private static final greylist-max-o HAS_ALTITUDE_MASK:I = 0x1

.field private static final greylist-max-o HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final greylist-max-o HAS_BEARING_MASK:I = 0x4

.field private static final blacklist HAS_ELAPSED_REALTIME_UNCERTAINTY_MASK:I = 0x100

.field private static final greylist-max-o HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final greylist-max-o HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final blacklist HAS_MSL_ALTITUDE_ACCURACY_MASK:I = 0x400

.field private static final blacklist HAS_MSL_ALTITUDE_MASK:I = 0x200

.field private static final greylist-max-o HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final greylist-max-o HAS_SPEED_MASK:I = 0x2

.field private static final greylist-max-o sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAltitudeAccuracyMeters:F

.field private blacklist mAltitudeMeters:D

.field private greylist-max-o mBearingAccuracyDegrees:F

.field private blacklist mBearingDegrees:F

.field private blacklist mElapsedRealtimeNs:J

.field private blacklist mElapsedRealtimeUncertaintyNs:D

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private blacklist mFieldsMask:I

.field private greylist-max-o mHorizontalAccuracyMeters:F

.field private blacklist mLatitudeDegrees:D

.field private blacklist mLongitudeDegrees:D

.field private blacklist mMslAltitudeAccuracyMeters:F

.field private blacklist mMslAltitudeMeters:D

.field private blacklist mProvider:Ljava/lang/String;

.field private greylist-max-o mSpeedAccuracyMetersPerSecond:F

.field private blacklist mSpeedMetersPerSecond:F

.field private blacklist mTimeMs:J


# direct methods
.method public static synthetic blacklist $r8$lambda$LCoyno7iOKo6n1w2mcfX-qv702o()Landroid/location/Location$BearingDistanceCache;
    .locals 2

    new-instance v0, Landroid/location/Location$BearingDistanceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location$BearingDistanceCache-IA;)V

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeMeters(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingAccuracyDegrees(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingDegrees(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeNs(Landroid/location/Location;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeUncertaintyNs(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/location/Location;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFieldsMask(Landroid/location/Location;I)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHorizontalAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatitudeDegrees(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongitudeDegrees(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeMeters(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedMetersPerSecond(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeMs(Landroid/location/Location;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/Location$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/Location$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/Location;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method private static blacklist areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 89

    move-object/from16 v0, p8

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p0, v1

    mul-double v5, p4, v1

    mul-double v7, p2, v1

    mul-double v1, v1, p6

    const-wide v9, 0x415854a640000000L    # 6378137.0

    const-wide v11, 0x41583fc4141bda51L    # 6356752.3142

    sub-double v13, v9, v11

    div-double/2addr v13, v9

    mul-double v15, v9, v9

    mul-double v17, v11, v11

    sub-double v15, v15, v17

    mul-double v17, v11, v11

    div-double v15, v15, v17

    sub-double v17, v1, v7

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v23, v21, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->atan(D)D

    move-result-wide v23

    sub-double v25, v21, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move-wide/from16 p0, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v33, v27, v29

    mul-double v35, v9, v31

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    move-wide/from16 v45, v17

    const/16 v47, 0x0

    move-wide/from16 p2, v1

    move/from16 v1, v47

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    move-wide/from16 v47, v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v41

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v43

    mul-double v49, v29, v43

    mul-double v51, v27, v31

    mul-double v53, v9, v29

    mul-double v53, v53, v41

    sub-double v51, v51, v53

    mul-double v53, v49, v49

    mul-double v55, v51, v51

    add-double v53, v53, v55

    move-wide/from16 p4, v7

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v55, v33, v41

    move-wide/from16 v57, v5

    add-double v5, v35, v55

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v37

    const-wide/16 v55, 0x0

    cmpl-double v2, v7, v55

    if-nez v2, :cond_0

    move-wide/from16 v59, v55

    goto :goto_1

    :cond_0
    mul-double v59, v33, v43

    div-double v59, v59, v7

    :goto_1
    nop

    mul-double v61, v59, v59

    sub-double v61, v21, v61

    cmpl-double v2, v61, v55

    const-wide/high16 v63, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    mul-double v55, v35, v63

    div-double v55, v55, v61

    sub-double v55, v5, v55

    :goto_2
    mul-double v65, v61, v15

    const-wide/high16 v67, 0x40d0000000000000L    # 16384.0

    div-double v67, v65, v67

    const-wide v69, 0x4065e00000000000L    # 175.0

    mul-double v69, v69, v65

    const-wide/high16 v71, 0x4074000000000000L    # 320.0

    sub-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, -0x3f78000000000000L    # -768.0

    add-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, 0x40b0000000000000L    # 4096.0

    add-double v71, v71, v69

    mul-double v67, v67, v71

    add-double v19, v67, v21

    const-wide/high16 v67, 0x4090000000000000L    # 1024.0

    div-double v67, v65, v67

    const-wide v69, 0x4047800000000000L    # 47.0

    mul-double v69, v69, v65

    const-wide v71, 0x4052800000000000L    # 74.0

    sub-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, -0x3fa0000000000000L    # -128.0

    add-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, 0x4070000000000000L    # 256.0

    add-double v71, v71, v69

    mul-double v67, v67, v71

    const-wide/high16 v69, 0x4030000000000000L    # 16.0

    div-double v69, v13, v69

    mul-double v69, v69, v61

    const-wide/high16 v71, 0x4008000000000000L    # 3.0

    mul-double v71, v71, v61

    const-wide/high16 v73, 0x4010000000000000L    # 4.0

    sub-double v71, v73, v71

    mul-double v71, v71, v13

    add-double v71, v71, v73

    mul-double v69, v69, v71

    mul-double v71, v55, v55

    mul-double v75, v67, v7

    div-double v77, v67, v73

    mul-double v79, v71, v63

    const-wide/high16 v81, -0x4010000000000000L    # -1.0

    add-double v79, v79, v81

    mul-double v79, v79, v5

    const-wide/high16 v83, 0x4018000000000000L    # 6.0

    div-double v83, v67, v83

    mul-double v83, v83, v55

    mul-double v85, v7, v73

    mul-double v85, v85, v7

    const-wide/high16 v87, -0x3ff8000000000000L    # -3.0

    add-double v85, v85, v87

    mul-double v83, v83, v85

    mul-double v73, v73, v71

    add-double v73, v73, v87

    mul-double v83, v83, v73

    sub-double v79, v79, v83

    mul-double v77, v77, v79

    add-double v77, v55, v77

    mul-double v39, v75, v77

    sub-double v73, v21, v69

    mul-double v73, v73, v13

    mul-double v73, v73, v59

    mul-double v75, v69, v7

    mul-double v77, v69, v5

    mul-double v63, v63, v55

    mul-double v63, v63, v55

    add-double v63, v63, v81

    mul-double v77, v77, v63

    add-double v77, v55, v77

    mul-double v75, v75, v77

    add-double v75, v37, v75

    mul-double v73, v73, v75

    add-double v45, v17, v73

    sub-double v63, v45, v47

    div-double v63, v63, v45

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->abs(D)D

    move-result-wide v73

    const-wide v75, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v2, v73, v75

    if-gez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, p4

    move-wide/from16 v5, v57

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v57, v5

    move-wide/from16 p4, v7

    :goto_3
    mul-double v1, v11, v19

    sub-double v5, v37, v39

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    mul-double v1, v29, v43

    mul-double v5, v27, v31

    mul-double v7, v9, v29

    mul-double v7, v7, v41

    sub-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v5, v1

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v5, v7

    double-to-float v1, v5

    iput v1, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    mul-double v5, v27, v43

    neg-double v7, v9

    mul-double v7, v7, v29

    mul-double v21, v27, v31

    mul-double v21, v21, v41

    add-double v7, v7, v21

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v2, v5

    float-to-double v5, v2

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v5, v7

    double-to-float v2, v5

    iput v2, v0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    iput-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    move-wide/from16 v5, v57

    iput-wide v5, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    move-wide/from16 v7, p4

    iput-wide v7, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v1, p2

    iput-wide v1, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-void
.end method

.method public static whitelist convert(Ljava/lang/String;)D
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move v3, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    const-string v7, "coordinate="

    if-lt v6, v5, :cond_d

    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v6, v5, :cond_2

    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    neg-double v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    return-wide v9

    :catch_0
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    goto/16 :goto_9

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v13, :cond_3

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-double v13, v13

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v10, v16

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const-wide/16 v15, 0x0

    if-eqz v3, :cond_4

    const/16 v2, 0xb4

    if-ne v9, v2, :cond_4

    cmpl-double v2, v13, v15

    if-nez v2, :cond_4

    cmpl-double v2, v10, v15

    if-nez v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    move-object/from16 p0, v4

    int-to-double v4, v9

    cmpg-double v4, v4, v15

    if-ltz v4, :cond_c

    const/16 v4, 0xb3

    if-le v9, v4, :cond_6

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v2

    move v15, v3

    goto/16 :goto_8

    :cond_6
    :goto_4
    cmpg-double v4, v13, v15

    if-ltz v4, :cond_b

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v17, v13, v4

    if-gez v17, :cond_b

    if-eqz v12, :cond_8

    const-wide v17, 0x404d800000000000L    # 59.0

    cmpl-double v17, v13, v17

    if-gtz v17, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v2

    move v15, v3

    goto :goto_7

    :cond_8
    :goto_5
    cmpg-double v15, v10, v15

    if-ltz v15, :cond_a

    cmpl-double v15, v10, v4

    if-gez v15, :cond_a

    int-to-double v4, v9

    const-wide v17, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v17

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    mul-double/2addr v15, v13

    add-double/2addr v4, v15

    add-double/2addr v4, v10

    div-double v4, v4, v17

    if-eqz v3, :cond_9

    move/from16 v16, v2

    move v15, v3

    neg-double v2, v4

    goto :goto_6

    :cond_9
    move/from16 v16, v2

    move v15, v3

    move-wide v2, v4

    :goto_6
    return-wide v2

    :cond_a
    move/from16 v16, v2

    move v15, v3

    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move/from16 v16, v2

    move v15, v3

    :goto_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move/from16 v16, v2

    move v15, v3

    :goto_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    :goto_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist convert(DI)Ljava/lang/String;
    .locals 9

    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "coordinate"

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d is an unrecognized format"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double p0, p0

    :cond_2
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, v1

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    if-ne p2, v0, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v7, v0

    sub-double/2addr p0, v7

    mul-double/2addr p0, v5

    :cond_4
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist distanceBetween(DDDD[F)V
    .locals 12

    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location$BearingDistanceCache;

    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v11, v1

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    const/4 v3, 0x0

    iget v4, v1, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    aput v4, v0, v3

    array-length v3, v0

    if-le v3, v2, :cond_0

    iget v3, v1, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    aput v3, v0, v2

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    aput v2, v0, v3

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "results is null or has length < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist bearingTo(Landroid/location/Location;)F
    .locals 10

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_1
    iget v1, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist distanceTo(Landroid/location/Location;)F
    .locals 10

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_1
    iget v1, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return v1
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/location/Location;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/location/Location;

    iget-wide v3, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v5, v1, Landroid/location/Location;->mTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v5, v1, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_c

    :cond_2
    iget-wide v3, v1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_c

    iget-wide v3, v1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v1, Landroid/location/Location;->mAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_c

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v4, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v1, Landroid/location/Location;->mBearingDegrees:F

    iget v4, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v4, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v4, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_9
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-wide v3, v1, Landroid/location/Location;->mMslAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-static {v3, v4}, Landroid/location/Location;->areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_0

    :cond_c
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAccuracy()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public whitelist getAltitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getBearing()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mBearingDegrees:F

    return v0
.end method

.method public whitelist getBearingAccuracyDegrees()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public whitelist getElapsedRealtimeAgeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeAgeMillis(J)J
    .locals 2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeMillis()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeUncertaintyNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getMslAltitudeAccuracyMeters()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return v0
.end method

.method public whitelist getMslAltitudeMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSpeed()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return v0
.end method

.method public whitelist getSpeedAccuracyMetersPerSecond()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public whitelist getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    return-wide v0
.end method

.method public whitelist getVerticalAccuracyMeters()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return v0
.end method

.method public whitelist hasAccuracy()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasAltitude()Z
    .locals 2

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist hasBearing()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasBearingAccuracy()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasElapsedRealtimeUncertaintyNanos()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMslAltitude()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMslAltitudeAccuracy()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasSpeed()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasSpeedAccuracy()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasVerticalAccuracy()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isComplete()Z
    .locals 4

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isFromMockProvider()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v0

    return v0
.end method

.method public whitelist isMock()Z
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist makeComplete()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    :cond_3
    return-void
.end method

.method public whitelist removeAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeAltitude()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeBearing()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeBearingAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeElapsedRealtimeUncertaintyNanos()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeMslAltitude()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeMslAltitudeAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeSpeed()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeSpeedAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeVerticalAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist reset()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTimeMs:J

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mFieldsMask:I

    iput-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v1, p0, Landroid/location/Location;->mAltitudeMeters:D

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v3, p0, Landroid/location/Location;->mBearingDegrees:F

    iput v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput-wide v1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iput v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist set(Landroid/location/Location;)V
    .locals 2

    iget v0, p1, Landroid/location/Location;->mFieldsMask:I

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v0, p1, Landroid/location/Location;->mTimeMs:J

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget-wide v0, p1, Landroid/location/Location;->mAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    iget v0, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v0, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p1, Landroid/location/Location;->mBearingDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingDegrees:F

    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget-wide v0, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iget v0, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist setAccuracy(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setAltitude(D)V
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setBearing(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v1, p1, v0

    const/4 v2, 0x0

    add-float/2addr v1, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    add-float/2addr v1, v0

    :cond_0
    iput v1, p0, Landroid/location/Location;->mBearingDegrees:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setBearingAccuracyDegrees(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setElapsedRealtimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method public whitelist setElapsedRealtimeUncertaintyNanos(D)V
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist setIsFromMockProvider(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/location/Location;->setMock(Z)V

    return-void
.end method

.method public whitelist setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method public whitelist setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method public whitelist setMock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    :goto_0
    return-void
.end method

.method public whitelist setMslAltitudeAccuracyMeters(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setMslAltitudeMeters(D)V
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public whitelist setSpeed(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setSpeedAccuracyMetersPerSecond(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method public whitelist setVerticalAccuracyMeters(F)V
    .locals 1

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v3, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.6f,%.6f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " hAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " vAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " mslAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " mslAltAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " sAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " bAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_9
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
