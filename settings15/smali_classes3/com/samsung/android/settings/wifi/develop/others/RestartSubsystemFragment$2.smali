.class public final Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;
.super Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubsystemRestarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mRestartWifiButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public final onSubsystemRestarting()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v3, 0x7f142689

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    const v3, 0x7f1416cd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/RestartSubsystemFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
