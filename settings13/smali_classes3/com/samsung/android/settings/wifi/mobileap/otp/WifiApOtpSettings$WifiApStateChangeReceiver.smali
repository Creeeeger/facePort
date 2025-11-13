.class Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApOtpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences()V

    :cond_0
    return-void
.end method
