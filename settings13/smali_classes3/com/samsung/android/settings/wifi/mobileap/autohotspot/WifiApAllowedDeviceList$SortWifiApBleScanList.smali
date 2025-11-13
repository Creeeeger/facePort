.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;
.super Ljava/lang/Object;
.source "WifiApAllowedDeviceList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortWifiApBleScanList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I
    .locals 3

    .line 330
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 331
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SortWifiApBleScanList`s compare() : m1.mSSID is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 333
    :cond_0
    iget-object p0, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 334
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SortWifiApBleScanList`s compare() : m2.mSSID is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 337
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortWifiApBleScanList`s compare() - m1.mSSID.compareTo(m2.mSSID): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 328
    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$SortWifiApBleScanList;->compare(Lcom/samsung/android/wifi/SemWifiApBleScanResult;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)I

    move-result p0

    return p0
.end method
