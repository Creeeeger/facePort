.class public Lsamsung/uwb/UwbDefaultConfig;
.super Ljava/lang/Object;
.source "UwbDefaultConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDefaultConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceMacAddress:S

.field private mDeviceRole:B

.field private mDstMacAddress:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lsamsung/uwb/UwbDefaultConfig$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDefaultConfig$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDefaultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    .line 13
    iput-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    .line 19
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget-byte p2, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-short p2, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 44
    iget-object p0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
