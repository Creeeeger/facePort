.class public final Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->connectionStatusUpdateHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment;->connectionStatusUpdateRunnable:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityLabsFragment$1;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
