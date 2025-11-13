.class public final Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
.super Ljava/lang/Object;
.source "SemCompanionDeviceBatteryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private blacklist mBatteryLevel:I

.field private blacklist mBatteryStatus:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mDeviceType:I

.field private blacklist mExtraBatteryLevelCradle:I

.field private blacklist mExtraBatteryLevelLeft:I

.field private blacklist mExtraBatteryLevelRight:I

.field private blacklist mExtraBatteryStatusCradle:I

.field private blacklist mExtraBatteryStatusLeft:I

.field private blacklist mExtraBatteryStatusRight:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    return v0
.end method

.method public whitelist getBatteryStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getExtraBatteryLevelCradle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    return v0
.end method

.method public whitelist getExtraBatteryLevelLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    return v0
.end method

.method public whitelist getExtraBatteryLevelRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    return v0
.end method

.method public whitelist getExtraBatteryStatusCradle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return v0
.end method

.method public whitelist getExtraBatteryStatusLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    return v0
.end method

.method public whitelist getExtraBatteryStatusRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return-void
.end method

.method public whitelist setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public whitelist setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    return-void
.end method

.method public whitelist setBatteryStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    return-void
.end method

.method public whitelist setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public whitelist setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    return-void
.end method

.method public whitelist setExtraBatteryLevelCradle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    return-void
.end method

.method public whitelist setExtraBatteryLevelLeft(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    return-void
.end method

.method public whitelist setExtraBatteryLevelRight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    return-void
.end method

.method public whitelist setExtraBatteryStatusCradle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return-void
.end method

.method public whitelist setExtraBatteryStatusLeft(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    return-void
.end method

.method public whitelist setExtraBatteryStatusRight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
