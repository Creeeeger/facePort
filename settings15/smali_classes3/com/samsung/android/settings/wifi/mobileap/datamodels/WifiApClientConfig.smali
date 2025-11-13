.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;
.super Lcom/samsung/android/wifi/SemWifiApClientDetails;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDataLimitForEachDayInBytes:J

.field public mDataUsageForTodayInBytes:J

.field public mDeviceName:Ljava/lang/String;

.field public mDeviceType:I

.field public mIp:Ljava/lang/String;

.field public mIsDataPausedByDataLimitCondition:Z

.field public mIsDataPausedByTimeLimitCondition:Z

.field public mIsDataPausedByUserManually:Z

.field public mIsDeviceCurrentlyConnected:Z

.field public mMac:Ljava/lang/String;

.field public mProgressbarColorId:I

.field public mProgressbarOrderFromLeft:I

.field public mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

.field public mTimeLimitForEachDayInMillis:J

.field public mTimeUsageForTodayInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceType:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiApClientConfig{deviceName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataUsageForTodayInBytes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataUsageForTodayInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataLimitForEachDayInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataLimitForEachDayInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDataPausedByDataLimitCondition=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByDataLimitCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeUsageForTodayInMillis=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mTimeUsageForTodayInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeLimitForEachDayInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mTimeLimitForEachDayInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDataPausedByTimeLimitCondition=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByTimeLimitCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataPausedByUserManually=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByUserManually:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDeviceCurrentlyConnected=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDeviceCurrentlyConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressbarColorId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarColorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressbarOrderFromLeft=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarOrderFromLeft:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataUsageForTodayInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataLimitForEachDayInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByDataLimitCondition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mTimeUsageForTodayInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mTimeLimitForEachDayInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByTimeLimitCondition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByUserManually:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDeviceCurrentlyConnected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarColorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarOrderFromLeft:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
