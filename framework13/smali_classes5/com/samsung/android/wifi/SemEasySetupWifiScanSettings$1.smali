.class Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings$1;
.super Ljava/lang/Object;
.source "SemEasySetupWifiScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    new-instance v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;-><init>()V

    .line 97
    .local v0, "settings":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    iget-object v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 98
    const-class v1, Landroid/app/PendingIntent;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 100
    const-class v1, Landroid/app/PendingIntent;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 103
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    .locals 1
    .param p1, "size"    # I

    .line 108
    new-array v0, p1, [Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings$1;->newArray(I)[Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    move-result-object p1

    return-object p1
.end method
