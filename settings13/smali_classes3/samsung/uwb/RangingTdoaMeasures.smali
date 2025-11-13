.class public Lsamsung/uwb/RangingTdoaMeasures;
.super Ljava/lang/Object;
.source "RangingTdoaMeasures.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingTdoaMeasures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected aoaFirst:F

.field protected aoaSecond:F

.field protected macAddress:[B

.field protected nLoS:I

.field protected pdoaFirst:F

.field protected pdoaFirstIndex:I

.field protected pdoaSecond:F

.field protected pdoaSecondIndex:I

.field protected rangingStatus:I

.field protected tagSequenceNo:I

.field protected tsFrac:I

.field protected tsInt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lsamsung/uwb/RangingTdoaMeasures$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingTdoaMeasures$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingTdoaMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasures {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    .line 149
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nLoS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirstIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecondIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tsInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tsFrac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagSequenceNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 105
    iget-object p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 111
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 112
    iget-wide v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
