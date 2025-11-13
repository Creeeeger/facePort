.class public final Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    sget-object p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MobileWIPSExceptionList"

    const-string p2, "MobileWIPSExceptionList:finishMobileWipsException"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
