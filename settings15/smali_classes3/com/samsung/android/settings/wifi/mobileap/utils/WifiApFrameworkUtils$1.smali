.class public final Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wifi/SemWifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;->val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils$1;->val$semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    return-void
.end method
