.class public Lsamsung/uwb/OneWayRangingData;
.super Ljava/lang/Object;
.source "OneWayRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/OneWayRangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aoaFirst:F

.field private aoaSecond:F

.field public mBlinkFrameNo:J

.field public mBlinkPayloadData:[B

.field public mDeviceInfo:[B

.field public mRframeTimeStamp:J

.field private macAddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lsamsung/uwb/OneWayRangingData$1;

    invoke-direct {v0}, Lsamsung/uwb/OneWayRangingData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/OneWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

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

    const-string v1, "OneWayRangingData {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    .line 109
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", RframeTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", BlinkFrameNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    .line 114
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BlinkPayloadData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    .line 115
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

    .line 97
    iget-object p2, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    iget p2, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    iget p2, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object p2, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    iget-object p0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
