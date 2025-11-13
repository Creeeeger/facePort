.class Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;
.super Ljava/lang/Object;
.source "WifiApCustomPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mSecondaryIcon`s onClick() - Triggered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmSmartWhiteList(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$sfgetMHSDBG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecondaryIcon`s onClick() - (Remove) Removing Device Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmSmartWhiteList(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmSmartWhiteList(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmSmartWhiteList(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;->onSecondaryIconClicked(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
