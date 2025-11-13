.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"

.field private static final blacklist MAX_LTE_RSRP:I = -0x2c

.field private static final blacklist MIN_LTE_RSRP:I = -0x8c

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_ASU_UNKNOWN:I = 0x63

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MAX_VALUE:I = 0x1f

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MIN_VALUE:I = 0x0

.field public static final blacklist USE_RSRP:I = 0x1

.field public static final blacklist USE_RSRQ:I = 0x2

.field public static final blacklist USE_RSSNR:I = 0x4

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthLte;

.field private static final blacklist sRsrpBoost:I

.field private static final blacklist sRsrpThresholds:[I

.field private static final blacklist sRsrqThresholds:[I

.field private static final blacklist sRssnrThresholds:[I


# instance fields
.field private greylist-max-p mCqi:I

.field private blacklist mCqiTableIndex:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private greylist-max-p mRsrp:I

.field private greylist-max-p mRsrq:I

.field private blacklist mRssi:I

.field private greylist-max-p mRssnr:I

.field private greylist-max-p mSignalStrength:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 216
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 224
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 231
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 500
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    .line 584
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        -0x73
        -0x69
        -0x5f
        -0x55
    .end array-data

    :array_1
    .array-data 4
        -0x13
        -0x11
        -0xe
        -0xc
    .end array-data

    :array_2
    .array-data 4
        -0x3
        0x1
        0x5
        0xd
    .end array-data
.end method

.method public constructor greylist-max-r <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 123
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIII)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .line 165
    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .locals 2
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqiTableIndex"    # I
    .param p6, "cqi"    # I
    .param p7, "timingAdvance"    # I

    .line 139
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 140
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 141
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 142
    const/16 v0, -0x8c

    const/16 v1, -0x2b

    invoke-static {p2, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 143
    const/16 v0, -0x22

    const/4 v1, 0x3

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 144
    const/16 v0, -0x14

    const/16 v1, 0x1e

    invoke-static {p4, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {p5, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 146
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-static {p6, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 147
    const/16 v1, 0x502

    invoke-static {p7, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 563
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 565
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 574
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 169
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 171
    return-void
.end method

.method public static blacklist convertRssiAsuToDBm(I)I
    .locals 3
    .param p0, "rssiAsu"    # I

    .line 611
    const v0, 0x7fffffff

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    .line 612
    return v0

    .line 614
    :cond_0
    if-ltz p0, :cond_2

    const/16 v1, 0x1f

    if-le p0, v1, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0

    .line 616
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertRssiAsuToDBm: invalid RSSI in ASU="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellSignalStrengthLte"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v0
.end method

.method public static blacklist convertRssnrUnitFromTenDbToDB(I)I
    .locals 2
    .param p0, "rssnr"    # I

    .line 606
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private blacklist isLevelForParameter(I)Z
    .locals 1
    .param p1, "parameterType"    # I

    .line 251
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 601
    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .locals 1
    .param p1, "measure"    # I
    .param p2, "thresholds"    # [I

    .line 366
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 367
    const v0, 0x7fffffff

    .local v0, "level":I
    goto :goto_0

    .line 368
    .end local v0    # "level":I
    :cond_0
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_1

    .line 369
    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 370
    .end local v0    # "level":I
    :cond_1
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_2

    .line 371
    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 372
    .end local v0    # "level":I
    :cond_2
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_3

    .line 373
    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 374
    .end local v0    # "level":I
    :cond_3
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_4

    .line 375
    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 377
    .end local v0    # "level":I
    :cond_4
    const/4 v0, 0x0

    .line 379
    .restart local v0    # "level":I
    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 190
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 175
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 176
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 177
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 178
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 179
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 180
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 181
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 182
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 183
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 184
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 185
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 512
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 513
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    .line 515
    .local v0, "s":Landroid/telephony/CellSignalStrengthLte;
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 3

    .line 472
    const/16 v0, 0x63

    .line 473
    .local v0, "lteAsuLevel":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 474
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    .line 475
    :cond_0
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :cond_1
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_2

    const/16 v0, 0x61

    goto :goto_0

    .line 477
    :cond_2
    add-int/lit16 v0, v1, 0x8c

    .line 479
    :goto_0
    return v0
.end method

.method public whitelist getCqi()I
    .locals 1

    .line 450
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return v0
.end method

.method public whitelist getCqiTableIndex()I
    .locals 1

    .line 437
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    return v0
.end method

.method public whitelist getDbm()I
    .locals 1

    .line 460
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getLevel()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return v0
.end method

.method public whitelist getRsrp()I
    .locals 1

    .line 424
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getRsrq()I
    .locals 1

    .line 389
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public whitelist getRssi()I
    .locals 1

    .line 402
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    return v0
.end method

.method public whitelist getRssnr()I
    .locals 1

    .line 413
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public whitelist getTimingAdvance()I
    .locals 1

    .line 491
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 496
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 496
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    .line 505
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    .line 196
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 197
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 198
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 199
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 200
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 201
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 202
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 203
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqiTableIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parametersUseForLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 259
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 260
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 261
    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 262
    .local v1, "rsrpThresholds":[I
    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 263
    .local v2, "rsrqThresholds":[I
    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 264
    .local v3, "rssnrThresholds":[I
    const/4 v4, 0x0

    .local v4, "rsrpOnly":Z
    goto :goto_0

    .line 266
    .end local v1    # "rsrpThresholds":[I
    .end local v2    # "rsrqThresholds":[I
    .end local v3    # "rssnrThresholds":[I
    .end local v4    # "rsrpOnly":Z
    :cond_0
    const-string/jumbo v1, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 271
    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 273
    .restart local v1    # "rsrpThresholds":[I
    if-nez v1, :cond_1

    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 278
    :cond_1
    const-string/jumbo v2, "lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 280
    .restart local v2    # "rsrqThresholds":[I
    if-nez v2, :cond_2

    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 285
    :cond_2
    const-string/jumbo v3, "lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 287
    .restart local v3    # "rssnrThresholds":[I
    if-nez v3, :cond_3

    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 292
    :cond_3
    const/4 v4, 0x0

    const-string/jumbo v5, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {p1, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 296
    .restart local v4    # "rsrpOnly":Z
    :goto_0
    const/4 v5, 0x0

    .line 297
    .local v5, "rsrpBoost":I
    if-eqz p2, :cond_4

    .line 298
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v5

    .line 301
    :cond_4
    iget v6, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    add-int/2addr v6, v5

    const/16 v7, -0x8c

    const/16 v8, -0x2c

    invoke-static {v6, v7, v8}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v6

    .line 303
    .local v6, "rsrp":I
    const v7, 0x7fffffff

    if-eqz v4, :cond_5

    .line 304
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 306
    .local v8, "level":I
    if-eq v8, v7, :cond_5

    .line 307
    iput v8, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 308
    return-void

    .line 312
    .end local v8    # "level":I
    :cond_5
    const v8, 0x7fffffff

    .line 313
    .local v8, "rsrpLevel":I
    const v9, 0x7fffffff

    .line 314
    .local v9, "rsrqLevel":I
    const v10, 0x7fffffff

    .line 316
    .local v10, "rssnrLevel":I
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 322
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-direct {p0, v0, v2}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v9

    .line 328
    :cond_7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 329
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-direct {p0, v0, v3}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v10

    .line 335
    :cond_8
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 337
    if-ne v0, v7, :cond_e

    .line 339
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x33

    if-le v0, v7, :cond_9

    .line 340
    const/4 v0, 0x0

    .local v0, "rssiLevel":I
    goto :goto_1

    .line 341
    .end local v0    # "rssiLevel":I
    :cond_9
    const/16 v7, -0x59

    if-lt v0, v7, :cond_a

    .line 342
    const/4 v0, 0x4

    .restart local v0    # "rssiLevel":I
    goto :goto_1

    .line 343
    .end local v0    # "rssiLevel":I
    :cond_a
    const/16 v7, -0x61

    if-lt v0, v7, :cond_b

    .line 344
    const/4 v0, 0x3

    .restart local v0    # "rssiLevel":I
    goto :goto_1

    .line 345
    .end local v0    # "rssiLevel":I
    :cond_b
    const/16 v7, -0x67

    if-lt v0, v7, :cond_c

    .line 346
    const/4 v0, 0x2

    .restart local v0    # "rssiLevel":I
    goto :goto_1

    .line 347
    .end local v0    # "rssiLevel":I
    :cond_c
    const/16 v7, -0x71

    if-lt v0, v7, :cond_d

    .line 348
    const/4 v0, 0x1

    .restart local v0    # "rssiLevel":I
    goto :goto_1

    .line 350
    .end local v0    # "rssiLevel":I
    :cond_d
    const/4 v0, 0x0

    .line 353
    .restart local v0    # "rssiLevel":I
    :goto_1
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 355
    .end local v0    # "rssiLevel":I
    :cond_e
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 546
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    return-void
.end method
