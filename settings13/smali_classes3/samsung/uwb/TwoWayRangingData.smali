.class public Lsamsung/uwb/TwoWayRangingData;
.super Ljava/lang/Object;
.source "TwoWayRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/TwoWayRangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distance:I

.field private mAxis_x:D

.field private mAxis_y:D

.field private mAxis_z:D

.field private macAddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lsamsung/uwb/TwoWayRangingData$1;

    invoke-direct {v0}, Lsamsung/uwb/TwoWayRangingData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/TwoWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

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

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwoWayRangingData {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 117
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", axis_x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", axis_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", axis_z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 107
    iget-object p2, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 108
    iget p2, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
