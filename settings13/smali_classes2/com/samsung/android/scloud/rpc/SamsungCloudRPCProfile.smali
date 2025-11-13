.class public Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;
.super Ljava/lang/Object;
.source "SamsungCloudRPCProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;

.field public authorityName:Ljava/lang/String;

.field public cloudDisplayName:Ljava/lang/String;

.field public isOn:I

.field public lastUpdatedTime:J

.field public preCondition:I

.field public recordCount:J

.field public serviceDiaplayName:Ljava/lang/String;

.field public sizeInByte:J

.field public usingNetworkOption:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->cloudDisplayName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->serviceDiaplayName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->accountName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->authorityName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->recordCount:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->sizeInByte:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->lastUpdatedTime:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->usingNetworkOption:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 52
    iget-object p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->cloudDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->serviceDiaplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->accountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->authorityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->recordCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->sizeInByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->lastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget p2, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget p0, p0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->usingNetworkOption:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
