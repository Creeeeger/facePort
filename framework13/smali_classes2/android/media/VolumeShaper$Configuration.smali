.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$Builder;,
        Landroid/media/VolumeShaper$Configuration$OptionFlag;,
        Landroid/media/VolumeShaper$Configuration$InterpolatorType;,
        Landroid/media/VolumeShaper$Configuration$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final whitelist INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final whitelist INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final whitelist LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final greylist-max-o MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final greylist-max-o OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final greylist-max-o OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final greylist-max-o OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final whitelist SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final greylist-max-o TYPE_ID:I = 0x0

.field static final greylist-max-o TYPE_SCALE:I = 0x1


# instance fields
.field private final greylist-max-r mDurationMs:D

.field private final greylist-max-r mId:I

.field private final greylist-max-r mInterpolatorType:I

.field private final greylist-max-r mOptionFlags:I

.field private final greylist-max-r mTimes:[F

.field private final greylist-max-r mType:I

.field private final greylist-max-r mVolumes:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidVolumeAndThrowException(FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smclampVolume([FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 13

    .line 353
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 354
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    .line 355
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 357
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 366
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 367
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    .line 368
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 391
    const/16 v0, 0x10

    .line 392
    .local v0, "POINTS":I
    const/16 v4, 0x10

    new-array v5, v4, [F

    .line 393
    .local v5, "times":[F
    new-array v6, v4, [F

    .line 394
    .local v6, "sines":[F
    new-array v7, v4, [F

    .line 395
    .local v7, "scurve":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 396
    int-to-float v9, v8

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v9, v10

    aput v9, v5, v8

    .line 397
    aget v9, v5, v8

    float-to-double v9, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 398
    .local v9, "sine":F
    aput v9, v6, v8

    .line 399
    mul-float v10, v9, v9

    aput v10, v7, v8

    .line 395
    .end local v9    # "sine":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 401
    .end local v8    # "i":I
    :cond_0
    new-instance v4, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v4}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 402
    invoke-virtual {v4, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    .line 403
    invoke-virtual {v4, v5, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    .line 404
    invoke-virtual {v4, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v4

    .line 405
    invoke-virtual {v4}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v4

    sput-object v4, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 406
    new-instance v4, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v4}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 407
    invoke-virtual {v4, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v5, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    sput-object v1, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 552
    .end local v0    # "POINTS":I
    .end local v5    # "times":[F
    .end local v6    # "sines":[F
    .end local v7    # "scurve":[F
    new-instance v0, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    if-ltz p1, :cond_0

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 662
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 663
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 664
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 667
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 668
    return-void

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-r <init>(IIIDI[F[F)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "optionFlags"    # I
    .param p4, "durationMs"    # D
    .param p6, "interpolatorType"    # I
    .param p7, "times"    # [F
    .param p8, "volumes"    # [F

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 683
    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 684
    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 685
    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 686
    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 688
    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 689
    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 690
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static greylist-max-o checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 5
    .param p0, "times"    # [F
    .param p1, "volumes"    # [F
    .param p2, "log"    # Z

    .line 769
    if-nez p0, :cond_0

    .line 770
    const-string/jumbo v0, "times array must be non-null"

    return-object v0

    .line 771
    :cond_0
    if-nez p1, :cond_1

    .line 772
    const-string/jumbo v0, "volumes array must be non-null"

    return-object v0

    .line 773
    :cond_1
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_2

    .line 774
    const-string v0, "array length must match"

    return-object v0

    .line 775
    :cond_2
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 776
    const-string v0, "array length must be at least 2"

    return-object v0

    .line 777
    :cond_3
    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_4

    .line 778
    const-string v0, "array length must be no larger than 16"

    return-object v0

    .line 779
    :cond_4
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 780
    const-string/jumbo v0, "times must start at 0.f"

    return-object v0

    .line 781
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 782
    const-string/jumbo v0, "times must end at 1.f"

    return-object v0

    .line 786
    :cond_6
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_8

    .line 787
    aget v3, p0, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p0, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "times not monotonic increasing, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 786
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v0    # "i":I
    :cond_8
    if-eqz p2, :cond_b

    .line 792
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_a

    .line 793
    aget v2, p1, v0

    cmpg-float v2, v2, v1

    if-lez v2, :cond_9

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for log scale cannot be positive, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 792
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_a
    goto :goto_4

    .line 799
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_e

    .line 800
    aget v3, p1, v0

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_d

    aget v3, p1, v0

    cmpg-float v3, v3, v2

    if-lez v3, :cond_c

    goto :goto_3

    .line 799
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 801
    :cond_d
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 806
    .end local v0    # "i":I
    :cond_e
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 2
    .param p0, "times"    # [F
    .param p1, "volumes"    # [F
    .param p2, "log"    # Z
    .param p3, "ise"    # Z

    .line 811
    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 813
    if-eqz p3, :cond_0

    .line 814
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_1
    return-void
.end method

.method private static greylist-max-o checkValidVolumeAndThrowException(FZ)V
    .locals 2
    .param p0, "volume"    # F
    .param p1, "log"    # Z

    .line 822
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 823
    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dbfs volume must be 0.f or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_1
    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 831
    :goto_0
    return-void

    .line 828
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o clampVolume([FZ)V
    .locals 4
    .param p0, "volumes"    # [F
    .param p1, "log"    # Z

    .line 834
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 836
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-lez v2, :cond_0

    .line 837
    aput v0, p0, v1

    .line 835
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_3

    .line 841
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 842
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-gez v2, :cond_3

    .line 843
    aput v0, p0, v1

    goto :goto_2

    .line 844
    :cond_3
    aget v2, p0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    .line 845
    aput v3, p0, v1

    .line 841
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 849
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;
    .locals 20
    .param p0, "parcelable"    # Landroid/media/VolumeShaperConfiguration;

    .line 519
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/VolumeShaperConfiguration;->type:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->typeFromAidl(I)I

    move-result v1

    .line 520
    .local v1, "type":I
    iget v11, v0, Landroid/media/VolumeShaperConfiguration;->id:I

    .line 521
    .local v11, "id":I
    if-nez v1, :cond_0

    .line 522
    new-instance v2, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v2, v11}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    return-object v2

    .line 524
    :cond_0
    iget v2, v0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    invoke-static {v2}, Landroid/media/VolumeShaper$Configuration;->optionFlagsFromAidl(I)I

    move-result v12

    .line 525
    .local v12, "optionFlags":I
    iget-wide v13, v0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    .line 526
    .local v13, "durationMs":D
    iget-object v2, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget v2, v2, Landroid/media/InterpolatorConfig;->type:I

    invoke-static {v2}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeFromAidl(I)I

    move-result v15

    .line 530
    .local v15, "interpolatorType":I
    iget-object v2, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v2, v2, Landroid/media/InterpolatorConfig;->xy:[F

    array-length v10, v2

    .line 531
    .local v10, "length":I
    rem-int/lit8 v2, v10, 0x2

    if-nez v2, :cond_2

    .line 534
    div-int/lit8 v2, v10, 0x2

    new-array v9, v2, [F

    .line 535
    .local v9, "times":[F
    div-int/lit8 v2, v10, 0x2

    new-array v8, v2, [F

    .line 536
    .local v8, "volumes":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v3, v10, 0x2

    if-ge v2, v3, :cond_1

    .line 537
    iget-object v3, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v3, v3, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    aput v3, v9, v2

    .line 538
    iget-object v3, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v3, v3, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, v8, v2

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v2    # "i":I
    :cond_1
    new-instance v16, Landroid/media/VolumeShaper$Configuration;

    move-object/from16 v2, v16

    move v3, v1

    move v4, v11

    move v5, v12

    move-wide v6, v13

    move-object/from16 v17, v8

    .end local v8    # "volumes":[F
    .local v17, "volumes":[F
    move v8, v15

    move-object/from16 v18, v9

    .end local v9    # "times":[F
    .local v18, "times":[F
    move/from16 v19, v10

    .end local v10    # "length":I
    .local v19, "length":I
    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-object v16

    .line 532
    .end local v17    # "volumes":[F
    .end local v18    # "times":[F
    .end local v19    # "length":I
    .restart local v10    # "length":I
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string/jumbo v3, "xy length must be even"

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist getMaximumCurvePoints()I
    .locals 1

    .line 245
    const/16 v0, 0x10

    return v0
.end method

.method private static blacklist interpolatorTypeFromAidl(I)I
    .locals 2
    .param p0, "aidl"    # I

    .line 567
    packed-switch p0, :pswitch_data_0

    .line 577
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Unknown interpolator type"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 573
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 571
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 569
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist interpolatorTypeToAidl(I)I
    .locals 2
    .param p0, "type"    # I

    .line 583
    packed-switch p0, :pswitch_data_0

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown interpolator type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 589
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 587
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 585
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist optionFlagsFromAidl(I)I
    .locals 2
    .param p0, "aidl"    # I

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 624
    or-int/lit8 v0, v0, 0x1

    .line 626
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 627
    or-int/lit8 v0, v0, 0x2

    .line 629
    :cond_1
    return v0
.end method

.method private static blacklist optionFlagsToAidl(I)I
    .locals 2
    .param p0, "flags"    # I

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 635
    or-int/lit8 v0, v0, 0x1

    .line 637
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 638
    or-int/lit8 v0, v0, 0x2

    .line 640
    :cond_1
    return v0
.end method

.method private blacklist toInterpolatorParcelable()Landroid/media/InterpolatorConfig;
    .locals 5

    .line 504
    new-instance v0, Landroid/media/InterpolatorConfig;

    invoke-direct {v0}, Landroid/media/InterpolatorConfig;-><init>()V

    .line 505
    .local v0, "parcelable":Landroid/media/InterpolatorConfig;
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/InterpolatorConfig;->type:I

    .line 506
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/InterpolatorConfig;->firstSlope:F

    .line 507
    iput v1, v0, Landroid/media/InterpolatorConfig;->lastSlope:F

    .line 508
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/media/InterpolatorConfig;->xy:[F

    .line 509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 510
    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    .line 511
    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static blacklist typeFromAidl(I)I
    .locals 2
    .param p0, "aidl"    # I

    .line 599
    packed-switch p0, :pswitch_data_0

    .line 605
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 601
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist typeToAidl(I)I
    .locals 2
    .param p0, "type"    # I

    .line 611
    packed-switch p0, :pswitch_data_0

    .line 617
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 613
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 463
    instance-of v0, p1, Landroid/media/VolumeShaper$Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 464
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 465
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$Configuration;

    .line 469
    .local v2, "other":Landroid/media/VolumeShaper$Configuration;
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v5, v2, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v5, v2, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v4, v2, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v4, v2, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 475
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object v4, v2, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 476
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    nop

    .line 469
    :goto_0
    return v1
.end method

.method greylist-max-o getAllOptionFlags()I
    .locals 1

    .line 724
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 732
    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .locals 1

    .line 705
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public whitelist getInterpolatorType()I
    .locals 1

    .line 712
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public greylist-max-o getOptionFlags()I
    .locals 1

    .line 720
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getTimes()[F
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    .line 697
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public whitelist getVolumes()[F
    .locals 1

    .line 746
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 454
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 455
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 456
    :cond_0
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    iget-wide v1, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 458
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 456
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 454
    :goto_0
    return v0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperConfiguration;
    .locals 3

    .line 492
    new-instance v0, Landroid/media/VolumeShaperConfiguration;

    invoke-direct {v0}, Landroid/media/VolumeShaperConfiguration;-><init>()V

    .line 493
    .local v0, "parcelable":Landroid/media/VolumeShaperConfiguration;
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->typeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->type:I

    .line 494
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->id:I

    .line 495
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_0

    .line 496
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->optionFlagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    .line 497
    iget-wide v1, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput-wide v1, v0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    .line 498
    invoke-direct {p0}, Landroid/media/VolumeShaper$Configuration;->toInterpolatorParcelable()Landroid/media/InterpolatorConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    .line 500
    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    const-string/jumbo v2, "}"

    if-nez v1, :cond_0

    .line 443
    goto :goto_0

    .line 449
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mOptionFlags = 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 444
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mDurationMs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mInterpolatorType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mTimes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 447
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mVolumes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 448
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 486
    invoke-virtual {p0}, Landroid/media/VolumeShaper$Configuration;->toParcelable()Landroid/media/VolumeShaperConfiguration;

    move-result-object v0

    .line 487
    .local v0, "parcelable":Landroid/media/VolumeShaperConfiguration;
    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaperConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 488
    return-void
.end method
