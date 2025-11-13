.class public final Lcom/samsung/android/settings/wifi/WifiReset$1$1;
.super Ljava/lang/Thread;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;->val$context:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->factoryReset()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_on"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
