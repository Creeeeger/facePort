.class public final Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mRestartWifiButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f142251

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mRestartWifiButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;-><init>(Landroid/os/Looper;)V

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiSubsystemRestartTrackingCallback:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->restartWifiSubsystem()V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sem_wifi_abtest_user_activation"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
