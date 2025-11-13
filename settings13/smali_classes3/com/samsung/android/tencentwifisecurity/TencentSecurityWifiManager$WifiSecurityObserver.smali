.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;
.super Landroid/database/ContentObserver;
.source "TencentSecurityWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSecurityObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    .line 469
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;-><init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 474
    iget-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$mupdateWifiSecurity(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V

    .line 475
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$sfgetDBG()Z

    move-result p1

    const-string v0, "TencentSecurityWifiManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange mIsTencentWifiSecurityEnabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmIsTencentWifiSecurityEnabled(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showTwsDialog: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetshowTwsDialog(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange ssid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmConnApSsid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bssid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmConnApBssid(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " security:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$WifiSecurityObserver;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-static {p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->-$$Nest$fgetmConnApSecurity(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
