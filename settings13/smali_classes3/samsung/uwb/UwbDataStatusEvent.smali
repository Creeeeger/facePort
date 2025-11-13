.class public Lsamsung/uwb/UwbDataStatusEvent;
.super Ljava/lang/Object;
.source "UwbDataStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDataStatusEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:[B

.field private mRcvData:[B

.field private mSessionId:J

.field private mTransceiveMode:B

.field private mTxStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lsamsung/uwb/UwbDataStatusEvent$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDataStatusEvent$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDataStatusEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    .line 86
    iget-byte v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    :goto_0
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

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbDataStatusEvent {  Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Tx Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    .line 112
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Rx Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    .line 113
    invoke-static {p0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

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

    .line 73
    iget-byte p2, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-wide v0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mSessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-byte p2, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTransceiveMode:B

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 76
    iget-byte p0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mTxStatus:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lsamsung/uwb/UwbDataStatusEvent;->mAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    iget-object p0, p0, Lsamsung/uwb/UwbDataStatusEvent;->mRcvData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void
.end method
