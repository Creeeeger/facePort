.class public final Landroid/telephony/CellSignalStrengthTdscdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellSignalStrengthTdscdma"

.field private static final blacklist TDSCDMA_RSCP_GOOD:I = -0x49

.field private static final blacklist TDSCDMA_RSCP_GREAT:I = -0x31

.field private static final blacklist TDSCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist TDSCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist TDSCDMA_RSCP_MODERATE:I = -0x61

.field private static final blacklist TDSCDMA_RSCP_POOR:I = -0x6e

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;


# instance fields
.field private blacklist mBitErrorRate:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    const/4 v0, 0x7

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthTdscdma-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0
.end method

.method protected blacklist copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    :cond_1
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBitErrorRate()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    return v0
.end method

.method public whitelist getDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public whitelist getLevel()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return v0
.end method

.method public whitelist getRscp()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthTdscdma: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x18

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iput v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x31

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x49

    if-lt v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x61

    if-lt v0, v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x6e

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_0

    :cond_4
    iput v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
