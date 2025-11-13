.class public Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
.super Ljava/lang/Object;
.source "WifiApDataUsageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndDateAndTime:J

.field private mStartDateAndTime:J

.field private mUsageValueInBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mStartDateAndTime:J

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mEndDateAndTime:J

    .line 36
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mStartDateAndTime:J

    .line 23
    iput-wide p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mEndDateAndTime:J

    .line 24
    iput-wide p5, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mStartDateAndTime:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mEndDateAndTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUsageValueInBytes()D
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getUsageValueInKB()D
    .locals 4

    .line 90
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-double v0, p0

    return-wide v0
.end method

.method public getUsageValueInLocaleString()Ljava/lang/String;
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsageValueInMB()D
    .locals 4

    .line 94
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-double v0, p0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mStartDateAndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mEndDateAndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
