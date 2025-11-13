.class Lcom/samsung/android/settings/wifi/WifiReset$2$1;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset$2;->resetSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset$2;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset$2;Landroid/content/Context;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset$2;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;->val$context:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;->val$context:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 138
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 139
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->factoryReset()V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_on"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
