.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->$r8$clinit:I

    const-string p1, "mSecondaryIcon`s onClick() - Triggered"

    const-string v0, "WifiApCustomPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v1, :cond_1

    sget-boolean p1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSecondaryIcon`s onClick() - (Remove) Removing Device Name: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mac: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mSmartWhiteList:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->mListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
