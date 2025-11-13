.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.source "WifiApAllowedDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/lang/String;)V
    .locals 7

    .line 120
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetMHSDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartCallback`s onStateChanged() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mhsMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_5

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$mfindPreferenceFromAllowedList(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 126
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 127
    iput v3, p1, Landroid/os/Message;->what:I

    .line 128
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    .line 130
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-gez p1, :cond_2

    .line 134
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemWifiApSmartCallback`s onStateChanged() - found preference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 136
    iput v3, p1, Landroid/os/Message;->what:I

    .line 137
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 138
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 139
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-lt p1, p0, :cond_3

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApSmartCallback`s onStateChanged() - preference in connecting state "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget p0, Lcom/android/settings/R$string;->smart_tethering_ap_connecting_summary:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    .line 148
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApSmartCallback`s onStateChanged() - preference in disconnected state "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApSmartCallback`s onStateChanged() - preference not found "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
