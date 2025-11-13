.class Lcom/samsung/android/settings/wifi/WifiReset$1;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset;->networkReset(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiReset;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/WifiReset;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->factoryReset()V

    return-void
.end method
