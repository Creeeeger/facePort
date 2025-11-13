.class Lcom/samsung/android/wifi/SemWifiConfiguration$1;
.super Ljava/lang/Object;
.source "SemWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemWifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 345
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>()V

    .line 346
    .local v0, "config":Lcom/samsung/android/wifi/SemWifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 355
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 358
    new-array v0, p1, [Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration$1;->newArray(I)[Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    return-object p1
.end method
