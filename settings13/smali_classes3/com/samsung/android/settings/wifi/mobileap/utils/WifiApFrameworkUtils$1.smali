.class Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;
.super Ljava/lang/Object;
.source "WifiApFrameworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/wifi/SemWifiManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;->val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;->val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    return-void
.end method
