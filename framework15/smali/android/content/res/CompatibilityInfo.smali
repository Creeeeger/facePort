.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;,
        Landroid/content/res/CompatibilityInfo$CompatScale;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final greylist-max-o DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final blacklist HAS_OVERRIDE_SCALING:I = 0x20

.field public static final greylist-max-o MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final greylist-max-o NEEDS_COMPAT_RES:I = 0x10

.field private static final greylist-max-o NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final greylist-max-o NEVER_NEEDS_COMPAT:I = 0x4

.field private static final greylist-max-o SCALING_REQUIRED:I = 0x1

.field private static blacklist sOverrideDensityInvertScale:F

.field private static blacklist sOverrideInvertedScale:F


# instance fields
.field public final greylist-max-o applicationDensity:I

.field public final blacklist applicationDensityInvertedScale:F

.field public final blacklist applicationDensityScale:F

.field public final greylist-max-o applicationInvertedScale:F

.field public final greylist applicationScale:F

.field private final greylist-max-o mCompatibilityFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 3

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor greylist-max-o <init>(IIFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZFF)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v1

    if-nez v2, :cond_17

    cmpl-float v2, p6, v1

    if-eqz v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v2, :cond_e

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v2, :cond_e

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_3

    or-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-nez p4, :cond_3

    or-int/lit8 v5, v5, 0x22

    :cond_3
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    if-nez p4, :cond_4

    or-int/lit8 v5, v5, 0x22

    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x2

    :cond_5
    if-eqz p4, :cond_6

    and-int/lit8 v5, v5, -0x3

    :cond_6
    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_7

    and-int/lit8 v0, v0, -0x9

    :cond_7
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_9

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_1
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_8

    and-int/lit8 v0, v0, -0x9

    :cond_8
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_9

    or-int/lit8 v0, v0, 0x4

    :cond_9
    :goto_0
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_b

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_a

    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    :cond_a
    if-nez v6, :cond_c

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_b
    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x4

    :cond_c
    :goto_1
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_d

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    goto :goto_6

    :cond_d
    const/16 v7, 0xa0

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v7, v1, v7

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v1, v7

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    :goto_2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v2, :cond_f

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_3

    :cond_f
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_3
    nop

    if-nez v2, :cond_10

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    :cond_10
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_11

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_4

    :cond_11
    move v3, v2

    :goto_4
    if-ge v3, v2, :cond_12

    move v3, v2

    :cond_12
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v5, 0x140

    if-le v2, v5, :cond_13

    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_13
    if-eqz v4, :cond_14

    if-le p3, v4, :cond_14

    or-int/lit8 v0, v0, 0xa

    goto :goto_5

    :cond_14
    if-lt v3, p3, :cond_15

    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_15
    if-eqz p4, :cond_16

    or-int/lit8 v0, v0, 0x8

    :cond_16
    :goto_5
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    nop

    :goto_6
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    return-void

    :cond_17
    :goto_7
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v2, v1, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iput p6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v1, p6

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    const/16 v1, 0x24

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist applyOverrideScaleIfNeeded(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    return-void
.end method

.method public static blacklist applyOverrideScaleIfNeeded(Landroid/util/MergedConfiguration;)V
    .locals 3

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    return-void
.end method

.method public static greylist-max-r computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v0, v1, :cond_0

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v0

    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    const v6, 0x3fe3bbbc

    :cond_1
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    if-ge v0, v1, :cond_2

    move v7, v5

    move v8, v4

    goto :goto_1

    :cond_2
    move v7, v4

    move v8, v5

    :goto_1
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    cmpg-float v11, v9, v10

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v10

    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_4
    if-eqz p1, :cond_5

    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_5
    return v11
.end method

.method public static blacklist getOverrideDensityInvertedScale()F
    .locals 1

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    return v0
.end method

.method public static blacklist getOverrideInvertedScale()F
    .locals 1

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    return v0
.end method

.method private static blacklist hasOverrideScale()Z
    .locals 2

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

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

.method public static blacklist scaleConfiguration(FFLandroid/content/res/Configuration;)V
    .locals 2

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->scale(F)V

    return-void
.end method

.method public static blacklist scaleConfiguration(FLandroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0, p0, p1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    return-void
.end method

.method private static blacklist scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->ydpi:F

    if-eqz p3, :cond_0

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    return-void
.end method

.method public static blacklist setOverrideInvertedScale(F)V
    .locals 0

    invoke-static {p0, p0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    return-void
.end method

.method public static blacklist setOverrideInvertedScale(FF)V
    .locals 0

    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sput p1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    return-void
.end method


# virtual methods
.method public greylist-max-o alwaysSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V
    .locals 2

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    return-void

    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public greylist-max-o applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 2

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v0, v1, p2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public greylist-max-o applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    :cond_2
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    return v1

    :cond_5
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    return v1

    :cond_6
    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public greylist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist hasOverrideScaling()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

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
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public greylist isScalingRequired()Z
    .locals 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o needsCompatResources()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o neverSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist supportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " overrideInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " overrideDensityInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
