.class public Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
.super Ljava/lang/Object;
.source "SemCompanionDeviceBatteryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
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

    .line 116
    new-instance v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 20
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 21
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 22
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 24
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 25
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 26
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 129
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 20
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 21
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 22
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 24
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 25
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 26
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
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

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAddress()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBatteryLevel()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    return v0
.end method

.method public blacklist getBatteryStatus()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    return v0
.end method

.method public blacklist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    return v0
.end method

.method public blacklist getExtraBatteryLevelCradle()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    return v0
.end method

.method public blacklist getExtraBatteryLevelLeft()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    return v0
.end method

.method public blacklist getExtraBatteryLevelRight()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    return v0
.end method

.method public blacklist getExtraBatteryStatusCradle()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return v0
.end method

.method public blacklist getExtraBatteryStatusLeft()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    return v0
.end method

.method public blacklist getExtraBatteryStatusRight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 162
    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public blacklist setBatteryLevel(I)V
    .locals 0
    .param p1, "batteryLevel"    # I

    .line 57
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 58
    return-void
.end method

.method public blacklist setBatteryStatus(I)V
    .locals 0
    .param p1, "batteryStatus"    # I

    .line 65
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 66
    return-void
.end method

.method public blacklist setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public blacklist setDeviceType(I)V
    .locals 0
    .param p1, "deviceType"    # I

    .line 49
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    .line 50
    return-void
.end method

.method public blacklist setExtraBatteryLevelCradle(I)V
    .locals 0
    .param p1, "extraBatteryLevelCradle"    # I

    .line 89
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 90
    return-void
.end method

.method public blacklist setExtraBatteryLevelLeft(I)V
    .locals 0
    .param p1, "extraBatteryLevelLeft"    # I

    .line 73
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 74
    return-void
.end method

.method public blacklist setExtraBatteryLevelRight(I)V
    .locals 0
    .param p1, "extraBatteryLevelRight"    # I

    .line 81
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 82
    return-void
.end method

.method public blacklist setExtraBatteryStatusCradle(I)V
    .locals 0
    .param p1, "extraBatteryStatusCradle"    # I

    .line 113
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 114
    return-void
.end method

.method public blacklist setExtraBatteryStatusLeft(I)V
    .locals 0
    .param p1, "extraBatteryStatusLeft"    # I

    .line 97
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 98
    return-void
.end method

.method public blacklist setExtraBatteryStatusRight(I)V
    .locals 0
    .param p1, "extraBatteryStatusRight"    # I

    .line 105
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 106
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
