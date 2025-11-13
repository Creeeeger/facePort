.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "MobileWIPSExceptionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string v0, "wifi"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$sfgetisWipsDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$sfgetCONFIG_SECURE_SVC_INTEGRATION()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 313
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->-$$Nest$sfgetisJDMDevice()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "MobileWIPSExceptionList"

    const-string v0, "Key should remain added in search index"

    .line 315
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "wifi_wips_exception_networks_settings"

    .line 317
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0
.end method
