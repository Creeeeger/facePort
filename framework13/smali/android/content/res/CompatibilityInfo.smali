.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
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


# instance fields
.field public final greylist-max-o applicationDensity:I

.field public final greylist-max-o applicationInvertedScale:F

.field public final greylist applicationScale:F

.field private final greylist-max-o mCompatibilityFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 674
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 3

    .line 289
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 292
    return-void
.end method

.method private constructor greylist-max-o <init>(IIFF)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 282
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 283
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 284
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 285
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .locals 9
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "overrideScale"    # F

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 126
    or-int/lit8 v0, v0, 0x10

    .line 128
    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v1, :cond_e

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 177
    :cond_1
    const/4 v1, 0x2

    .line 183
    .local v1, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 189
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 191
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 195
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 197
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_2

    .line 198
    or-int/lit8 v5, v5, 0x8

    .line 199
    const/4 v6, 0x1

    .line 200
    if-nez p4, :cond_2

    .line 204
    or-int/lit8 v5, v5, 0x22

    .line 207
    :cond_2
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 208
    const/4 v6, 0x1

    .line 209
    if-nez p4, :cond_3

    .line 210
    or-int/lit8 v5, v5, 0x22

    .line 213
    :cond_3
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_4

    .line 214
    const/4 v6, 0x1

    .line 215
    or-int/lit8 v5, v5, 0x2

    .line 218
    :cond_4
    if-eqz p4, :cond_5

    .line 223
    and-int/lit8 v5, v5, -0x3

    .line 226
    :cond_5
    or-int/lit8 v0, v0, 0x8

    .line 227
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_6

    .line 230
    and-int/lit8 v0, v0, -0x9

    .line 232
    :cond_6
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    .line 233
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 237
    :pswitch_1
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_7

    .line 238
    and-int/lit8 v0, v0, -0x9

    .line 240
    :cond_7
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_8

    .line 241
    or-int/lit8 v0, v0, 0x4

    .line 246
    :cond_8
    :goto_0
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_a

    .line 247
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_9

    .line 248
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    .line 249
    :cond_9
    if-nez v6, :cond_b

    .line 250
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 253
    :cond_a
    and-int/lit8 v0, v0, -0x9

    .line 254
    or-int/lit8 v0, v0, 0x4

    .line 257
    :cond_b
    :goto_1
    cmpl-float v7, p5, v2

    if-eqz v7, :cond_c

    .line 258
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 259
    div-float/2addr v2, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 260
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v7, v2

    float-to-int v2, v7

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 262
    or-int/lit8 v0, v0, 0x20

    goto :goto_6

    .line 263
    :cond_c
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_d

    .line 264
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 265
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 266
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_6

    .line 268
    :cond_d
    const/16 v7, 0xa0

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 269
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 271
    div-float/2addr v2, v7

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 272
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 131
    .end local v1    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    :cond_e
    :goto_2
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v1, :cond_f

    .line 132
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_3

    .line 133
    :cond_f
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_3
    nop

    .line 134
    .local v1, "required":I
    if-nez v1, :cond_10

    .line 135
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 137
    :cond_10
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_11

    .line 138
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_4

    :cond_11
    move v3, v1

    .line 139
    .local v3, "compat":I
    :goto_4
    if-ge v3, v1, :cond_12

    .line 140
    move v3, v1

    .line 142
    :cond_12
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 144
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v1, v5, :cond_13

    .line 151
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 152
    :cond_13
    if-eqz v4, :cond_14

    if-le p3, v4, :cond_14

    .line 156
    or-int/lit8 v0, v0, 0xa

    goto :goto_5

    .line 157
    :cond_14
    if-lt v3, p3, :cond_15

    .line 160
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 161
    :cond_15
    if-eqz p4, :cond_16

    .line 164
    or-int/lit8 v0, v0, 0x8

    .line 168
    :cond_16
    :goto_5
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 169
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 170
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 172
    .end local v1    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    nop

    .line 276
    :goto_6
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 277
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
    .param p1, "source"    # Landroid/os/Parcel;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 692
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 569
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 570
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 572
    .local v1, "height":I
    if-ge v0, v1, :cond_0

    .line 573
    move v2, v0

    .line 574
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_0

    .line 576
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_0
    move v2, v1

    .line 577
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 579
    .restart local v3    # "longSize":I
    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 580
    .local v5, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 581
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 582
    const v6, 0x3fe3bbbc

    .line 584
    :cond_1
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 586
    .local v4, "newLongSize":I
    if-ge v0, v1, :cond_2

    .line 587
    move v7, v5

    .line 588
    .local v7, "newWidth":I
    move v8, v4

    .local v8, "newHeight":I
    goto :goto_1

    .line 590
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2
    move v7, v4

    .line 591
    .restart local v7    # "newWidth":I
    move v8, v5

    .line 594
    .restart local v8    # "newHeight":I
    :goto_1
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 595
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 596
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v10

    .line 597
    .local v11, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    .line 598
    const/high16 v11, 0x3f800000    # 1.0f

    .line 601
    :cond_4
    if-eqz p1, :cond_5

    .line 602
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 603
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 606
    :cond_5
    return v11
.end method


# virtual methods
.method public greylist-max-o alwaysSupportsScreen()Z
    .locals 1

    .line 312
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

.method public greylist-max-o applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 536
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 543
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 544
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 545
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 547
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 548
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 550
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 551
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 552
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 553
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 554
    .local v1, "appBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 555
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 558
    .end local v0    # "invertedRatio":F
    .end local v1    # "appBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public greylist-max-o applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 514
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    .line 519
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 520
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 523
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 525
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 526
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 527
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 528
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 529
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 530
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 531
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 533
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 611
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 612
    return v0

    .line 615
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 616
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v1

    .line 617
    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v1

    .line 618
    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v1

    .line 619
    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    .line 620
    :cond_4
    return v0

    .line 621
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public greylist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 325
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

.method public whitelist test-api hashCode()I
    .locals 3

    .line 652
    const/16 v0, 0x11

    .line 653
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    .line 654
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    .line 655
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 656
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 657
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist isScalingRequired()Z
    .locals 1

    .line 299
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x21

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o needsCompatResources()Z
    .locals 1

    .line 316
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

    .line 308
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

    .line 304
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

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 629
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 635
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 667
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 670
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 671
    return-void
.end method
