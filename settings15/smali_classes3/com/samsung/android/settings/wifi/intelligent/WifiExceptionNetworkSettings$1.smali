.class public final Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->-$$Nest$mfinishWifiExceptionSettings(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    :cond_0
    return-void
.end method
