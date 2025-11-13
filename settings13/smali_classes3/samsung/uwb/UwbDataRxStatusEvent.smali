.class public Lsamsung/uwb/UwbDataRxStatusEvent;
.super Ljava/lang/Object;
.source "UwbDataRxStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDataRxStatusEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDestEndPoint:I

.field private mRcvdData:[B

.field private mRxStatus:I

.field private mSequenceNum:J

.field private mSessionId:J

.field private mSourceAddress:[B

.field private mSourceEndPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lsamsung/uwb/UwbDataRxStatusEvent$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDataRxStatusEvent$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDataRxStatusEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSessionId:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRxStatus:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSequenceNum:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceAddress:[B

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceEndPoint:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mDestEndPoint:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRcvdData:[B

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

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbDataTxStatusEvent { , SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Rx Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRxStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSequenceNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceAddress:[B

    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Source End Point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceEndPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Dest End Point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mDestEndPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Received Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRcvdData:[B

    .line 129
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 89
    iget-wide v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget p2, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRxStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-wide v0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSequenceNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object p2, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    iget p2, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mSourceEndPoint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mDestEndPoint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object p0, p0, Lsamsung/uwb/UwbDataRxStatusEvent;->mRcvdData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
